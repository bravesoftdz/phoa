inherited dPhoAProps: TdPhoAProps
  Left = 586
  Top = 248
  ActiveControl = eThumbSizeX
  Caption = 'Properties: photo album'
  ClientHeight = 296
  ClientWidth = 386
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited bvBottom: TBevel
    Top = 259
    Width = 386
  end
  object lDesc: TLabel [1]
    Left = 12
    Top = 80
    Width = 57
    Height = 13
    Caption = '&Description:'
    FocusControl = mDesc
  end
  object lThumbSize: TLabel [2]
    Left = 12
    Top = 12
    Width = 107
    Height = 13
    Caption = '&Thumbnail size (WxH):'
    FocusControl = eThumbSizeX
  end
  object lThumbSizeX: TLabel [3]
    Left = 64
    Top = 32
    Width = 6
    Height = 13
    Caption = 'x'
  end
  object lThumbQuality: TLabel [4]
    Left = 136
    Top = 12
    Width = 87
    Height = 13
    Caption = '&Thumbnail quality:'
    FocusControl = tbThumbQuality
  end
  object lThQuality1: TLabel [5]
    Left = 136
    Top = 60
    Width = 39
    Height = 26
    Caption = 'lower'#13#10'less size'
  end
  object lThQuality2: TLabel [6]
    Left = 316
    Top = 60
    Width = 57
    Height = 26
    Alignment = taRightJustify
    Caption = 'higher'#13#10'greater size'
  end
  inherited pButtonsBottom: TPanel
    Top = 261
    Width = 386
    TabOrder = 4
    DesignSize = (
      386
      35)
    inherited bCancel: TButton
      Left = 227
      Caption = 'Close'
      TabOrder = 1
    end
    inherited bOK: TButton
      Left = 147
      TabOrder = 0
    end
    inherited bHelp: TButton
      Left = 305
    end
  end
  object mDesc: TMemo [8]
    Left = 12
    Top = 96
    Width = 359
    Height = 149
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 3
    OnChange = DlgDataChange
  end
  object tbThumbQuality: TTrackBar [9]
    Left = 128
    Top = 28
    Width = 253
    Height = 29
    Max = 100
    Min = 1
    PageSize = 10
    Frequency = 10
    Position = 40
    TabOrder = 2
    OnChange = DlgDataChange
  end
  object eThumbSizeX: TRxSpinEdit [10]
    Left = 12
    Top = 28
    Width = 49
    Height = 21
    Alignment = taRightJustify
    ButtonKind = bkStandard
    Increment = 10.000000000000000000
    MaxValue = 1024.000000000000000000
    MinValue = 32.000000000000000000
    Value = 150.000000000000000000
    TabOrder = 0
    OnChange = DlgDataChange
  end
  object eThumbSizeY: TRxSpinEdit [11]
    Left = 72
    Top = 28
    Width = 49
    Height = 21
    Alignment = taRightJustify
    ButtonKind = bkStandard
    Increment = 10.000000000000000000
    MaxValue = 1024.000000000000000000
    MinValue = 32.000000000000000000
    Value = 150.000000000000000000
    TabOrder = 1
    OnChange = DlgDataChange
  end
  inherited dklcMain: TDKLanguageController
    Options = [dklcoAutoSaveLangSource, dklcoIgnoreEmptyProps]
    Left = 12
    Top = 260
    LangData = {
      0A006450686F4150726F7073010100000003000000070043617074696F6E010F
      00000008006276426F74746F6D00000E0070427574746F6E73426F74746F6D00
      0007006243616E63656C01010000000C000000070043617074696F6E00030062
      4F4B01010000000F000000070043617074696F6E0005006248656C7001010000
      0012000000070043617074696F6E0005006C4465736301010000001500000007
      0043617074696F6E000A006C5468756D6253697A650101000000180000000700
      43617074696F6E000B006C5468756D6253697A655801010000001B0000000700
      43617074696F6E000D006C5468756D625175616C69747901010000001E000000
      070043617074696F6E000B006C54685175616C69747931010100000021000000
      070043617074696F6E000B006C54685175616C69747932010100000024000000
      070043617074696F6E0005006D4465736300000E0074625468756D625175616C
      69747900000B00655468756D6253697A655800000B00655468756D6253697A65
      590000}
  end
end
