unit udToolProps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  TntWindows, 
  phSettings, phToolSetting,
  phDlg, TntDialogs, DKLang, StdCtrls, TntStdCtrls, ExtCtrls, TntExtCtrls;

type
  TdToolProps = class(TPhoaDialog)
    bBrowseRunCommand: TTntButton;
    bBrowseRunFolder: TTntButton;
    cbKind: TTntComboBox;
    cbRunShowCommand: TTntComboBox;
    cbUsageGroups: TTntCheckBox;
    cbUsageThViewer: TTntCheckBox;
    cbUsageTools: TTntCheckBox;
    cbUsageViewMode: TTntCheckBox;
    dklcMain: TDKLanguageController;
    eHint: TTntEdit;
    eMasks: TTntEdit;
    eName: TTntEdit;
    eRunCommand: TTntEdit;
    eRunFolder: TTntEdit;
    eRunParams: TTntEdit;
    gbUsage: TTntGroupBox;
    lHint: TTntLabel;
    lKind: TTntLabel;
    lMasks: TTntLabel;
    lName: TTntLabel;
    lRunCommand: TTntLabel;
    lRunFolder: TTntLabel;
    lRunParams: TTntLabel;
    lRunShowCommand: TTntLabel;
    odRunCommand: TTntOpenDialog;
    procedure bBrowseRunCommandClick(Sender: TObject);
    procedure bBrowseRunFolderClick(Sender: TObject);
    procedure cbKindChange(Sender: TObject);
    procedure cbKindDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
  private
     // ������������� ��������� ����������� (nil, ���� ��� "������" ���������, �.�. ���������� ����������)
    FTool: TPhoaToolSetting;
     // ���������� ��������� - �������� ������������
    FPage: TPhoaToolPageSetting;
     // ����������� ����������� ��������� � ����������� �� �������� ���� �����������
    procedure ApplyCurKind; 
  protected
    procedure ButtonClick_OK; override;
    procedure DoCreate; override;
    procedure ExecuteInitialize; override;
  end;

  function EditTool(ATool: TPhoaToolSetting; APage: TPhoaToolPageSetting): Boolean;

implementation
{$R *.dfm}
uses TntFileCtrl, phUtils, Main, ImgList, ConsVars;

  function EditTool(ATool: TPhoaToolSetting; APage: TPhoaToolPageSetting): Boolean;
  begin
    with TdToolProps.Create(Application) do
      try
        FTool := ATool;
        FPage := APage;
        Result := ExecuteModal(False, False);
      finally
        Free;
      end;
  end;

   //===================================================================================================================
   // TdToolProps
   //===================================================================================================================

  procedure TdToolProps.ApplyCurKind;
  var k: TPhoaToolKind;
  begin
    k := TPhoaToolKind(cbKind.ItemIndex);
    EnableControls(not (k in [ptkSeparator, ptkExtViewer]), [lName, eName, lHint, eHint]);
    EnableControls(
      k in [ptkCustom, ptkExtViewer],
      [lRunCommand, eRunCommand, bBrowseRunCommand, lRunParams, eRunParams, lRunShowCommand, cbRunShowCommand,
       lRunFolder, eRunFolder, bBrowseRunFolder]);
    cbUsageTools.Enabled    := k<>ptkExtViewer;
    cbUsageGroups.Enabled   := k<>ptkExtViewer;
    cbUsageThViewer.Enabled := k<>ptkExtViewer;
    cbUsageViewMode.Enabled := k<>ptkExtViewer;
  end;

  procedure TdToolProps.bBrowseRunCommandClick(Sender: TObject);
  begin
    odRunCommand.FileName := eRunCommand.Text;
    if odRunCommand.Execute then eRunCommand.Text := odRunCommand.FileName;
  end;

  procedure TdToolProps.bBrowseRunFolderClick(Sender: TObject);
  var ws: WideString;
  begin
    ws := eRunFolder.Text;
    if WideSelectDirectory(DKLangConstW('SDlgTitle_SelectFolder'), '', ws) then eRunFolder.Text := ws;
  end;

  procedure TdToolProps.ButtonClick_OK;
  var
    Kind: TPhoaToolKind;
    iShowCmd: Integer;
    Usages: TPhoaToolUsages;
    wsName, wsHint, wsRunCommand, wsRunFolder, wsRunParams: WideString;
  begin
    Kind    := TPhoaToolKind(cbKind.ItemIndex);
    if Kind in [ptkSeparator, ptkExtViewer] then begin
      wsName := '';
      wsHint := '';
    end else begin
      wsName := eName.Text;
      wsHint := eHint.Text;
    end;
    if Kind in [ptkCustom, ptkExtViewer] then begin
      iShowCmd     := GetCurrentCBObject(cbRunShowCommand);
      wsRunCommand := eRunCommand.Text;
      wsRunFolder  := eRunFolder.Text;
      wsRunParams  := eRunParams.Text;
    end else begin
      iShowCmd    := SW_SHOWNORMAL;
      wsRunCommand := '';
      wsRunFolder  := '';
      wsRunParams  := '';
    end;
    Usages := [];
    if Kind<>ptkExtViewer then begin
      if cbUsageTools.Checked    then Include(Usages, ptuToolsMenu);
      if cbUsageGroups.Checked   then Include(Usages, ptuGroupPopupMenu);
      if cbUsageThViewer.Checked then Include(Usages, ptuThViewerPopupMenu);
      if cbUsageViewMode.Checked then Include(Usages, ptuViewModePopupMenu);
    end;
     // ����� ����������
    if FTool=nil then begin
      FTool := TPhoaToolSetting.Create(FPage, wsName, wsHint, wsRunCommand, wsRunFolder, wsRunParams, eMasks.Text, Kind, iShowCmd, Usages);
       // ����� �������� ��� ����������
      FTool.Modified := True;
     // ������������ ����������
    end else begin
      FTool.Kind           := Kind;
      FTool.Name           := wsName;
      FTool.Masks          := eMasks.Text;
      FTool.Hint           := wsHint;
      FTool.RunCommand     := wsRunCommand;
      FTool.RunParameters  := wsRunParams;
      FTool.RunFolder      := wsRunFolder;
      FTool.RunShowCommand := iShowCmd;
      FTool.Usages         := Usages;
    end;
    inherited ButtonClick_OK;
  end;

  procedure TdToolProps.cbKindChange(Sender: TObject);
  begin
    ApplyCurKind;
    Modified := True;
  end;

  procedure TdToolProps.cbKindDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
  begin
     // �������
    cbKind.Canvas.FillRect(Rect);
     // ������ ������
    fMain.ilActionsSmall.Draw(cbKind.Canvas, Rect.Left, Rect.Top, aToolImageIndexes[TPhoaToolKind(Index)]);
     // ������ �����
    Inc(Rect.Left, 20);
    Tnt_DrawTextW(cbKind.Canvas.Handle, PWideChar(cbKind.Items[Index]), -1, Rect, DT_LEFT or DT_NOPREFIX or DT_SINGLELINE or DT_VCENTER);
  end;

  procedure TdToolProps.DoCreate;
  var k: TPhoaToolKind;
  begin
    inherited DoCreate;
    HelpContext := IDH_intf_tool_props;
     // ��������� cbKind
    for k := Low(k) to High(k) do cbKind.Items.Add(PhoaToolKindName(k));
     // ��������� cbRunShowCommand
    with cbRunShowCommand.Items do begin
      Objects[0] := Pointer(SW_SHOWNORMAL);
      Objects[1] := Pointer(SW_SHOWMINIMIZED);
      Objects[2] := Pointer(SW_SHOWMAXIMIZED);
    end;
  end;

  procedure TdToolProps.ExecuteInitialize;
  begin
    inherited ExecuteInitialize;
     // �������������� �������� ���������
    if FTool=nil then begin
      cbKind.ItemIndex           := Byte(ptkOpen);
      SetCurrentCBObject(cbRunShowCommand, SW_SHOWNORMAL);
    end else begin
      cbKind.ItemIndex           := Byte(FTool.Kind);
      eName.Text                 := ConstValEx(FTool.Name);
      eMasks.Text                := FTool.Masks;
      eHint.Text                 := ConstValEx(FTool.Hint);
      eRunCommand.Text           := FTool.RunCommand;
      eRunParams.Text            := FTool.RunParameters;
      eRunFolder.Text            := FTool.RunFolder;
      SetCurrentCBObject(cbRunShowCommand, FTool.RunShowCommand);
      cbUsageTools.Checked       := ptuToolsMenu         in FTool.Usages;
      cbUsageGroups.Checked      := ptuGroupPopupMenu    in FTool.Usages;
      cbUsageThViewer.Checked    := ptuThViewerPopupMenu in FTool.Usages;
      cbUsageViewMode.Checked    := ptuViewModePopupMenu in FTool.Usages;
    end;
    ApplyCurKind;
  end;

end.

