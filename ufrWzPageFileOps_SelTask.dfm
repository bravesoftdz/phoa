inherited frWzPageFileOps_SelTask: TfrWzPageFileOps_SelTask
  object lCopyFiles: TLabel
    Left = 28
    Top = 24
    Width = 543
    Height = 29
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'Copies the files of pictures you select, in the specified folder' +
      '. Use this option to prepare photo album to write onto a CD or D' +
      'VD'
    Transparent = False
    WordWrap = True
  end
  object lMoveFiles: TLabel
    Left = 28
    Top = 76
    Width = 543
    Height = 29
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'Moves the files of pictures you select, into the specified folde' +
      'r, and updates picture file links appropriately'
    Transparent = False
    WordWrap = True
  end
  object lDeleteFiles: TLabel
    Left = 28
    Top = 128
    Width = 543
    Height = 29
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'Deletes pictures you select, and physically deletes correspondin' +
      'g files. Use this option to delete unwanted picture files'
    Transparent = False
    WordWrap = True
  end
  object lRepairFileLinks: TLabel
    Left = 28
    Top = 232
    Width = 543
    Height = 29
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'Allows you to repair broken file links by finding the files in t' +
      'he specified folder, and, optionally, to delete pictures no long' +
      'er associated with valid (existent) files'
    Transparent = False
    Visible = False
    WordWrap = True
  end
  object lNBUndoable: TLabel
    Left = 0
    Top = 264
    Width = 576
    Height = 20
    Align = alBottom
    AutoSize = False
    Caption = #8226' NB: These operations are not undoable!'
    Layout = tlCenter
    WordWrap = True
  end
  object lRebuildThumbs: TLabel
    Left = 28
    Top = 180
    Width = 543
    Height = 29
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'Rereads the picture files, recreates the thumbnails and updates ' +
      'the file-related information, such as image dimensions'
    Transparent = False
    WordWrap = True
  end
  object rbCopyFiles: TRadioButton
    Left = 4
    Top = 4
    Width = 567
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = '&Copy picture files to a folder'
    TabOrder = 0
    OnClick = PageDataChange
  end
  object rbMoveFiles: TRadioButton
    Left = 4
    Top = 56
    Width = 551
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = '&Move picture files to a folder'
    TabOrder = 1
    OnClick = PageDataChange
  end
  object rbDeleteFiles: TRadioButton
    Left = 4
    Top = 108
    Width = 551
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = '&Delete pictures and files'
    TabOrder = 2
    OnClick = PageDataChange
  end
  object rbRepairFileLinks: TRadioButton
    Left = 4
    Top = 212
    Width = 567
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Re&pair picture file links'
    TabOrder = 4
    Visible = False
    OnClick = PageDataChange
  end
  object rbRebuildThumbs: TRadioButton
    Left = 4
    Top = 160
    Width = 567
    Height = 17
    Anchors = [akLeft, akTop, akRight]
    Caption = '&Rebuild thumbnails'
    TabOrder = 3
    OnClick = PageDataChange
  end
  object dtlsMain: TDTLanguageSwitcher
    Language = 1046
    Left = 508
    Top = 264
    LangData = {
      17006672577A5061676546696C654F70735F53656C5461736B020000000B0048
      656C704B6579776F726403000000090400001904000007040000040048696E74
      03000000090400001904000007040000000000000C000000080064746C734D61
      696E0000000000000000000000000A006C436F707946696C6573030000000700
      43617074696F6E0300000009048200436F70696573207468652066696C657320
      6F6620706963747572657320796F752073656C6563742C20696E207468652073
      706563696669656420666F6C6465722E205573652074686973206F7074696F6E
      20746F20707265706172652070686F746F20616C62756D20746F207772697465
      206F6E746F2061204344206F722044564419048800CAEEEFE8F0F3E5F220F4E0
      E9EBFB20E2FBE1F0E0EDEDFBF520C2E0ECE820E8E7EEE1F0E0E6E5EDE8E920E2
      20E7E0E4E0EDEDF3FE20EFE0EFEAF32E20C8F1EFEEEBFCE7F3E9F2E520FDF2F3
      20EEEFF6E8FE2C20F7F2EEE1FB20EFEEE4E3EEF2EEE2E8F2FC20F4EEF2EEE0EB
      FCE1EEEC20E4EBFF20E7E0EFE8F1E820EDE020434420E8EBE8204456440704A1
      004B6F706965727420646965204461746569656E2064657220617573676577E4
      686C74656E2042696C6465722C20696E2064656E20616E6765676562656E656E
      204F72646E65722E2056657277656E64656E20536965206469657365204F7074
      696F6E2C20756D20466F746F616C62656E2066FC722064617320736368726569
      62656E20617566204344206F6465722044564420766F727A7562657265697465
      6E2E0B0048656C704B6579776F72640300000009040000190400000704000004
      0048696E740300000009040000190400000704000000000000000000000C006C
      44656C65746546696C657303000000070043617074696F6E0300000009047900
      44656C6574657320706963747572657320796F752073656C6563742C20616E64
      20706879736963616C6C792064656C6574657320636F72726573706F6E64696E
      672066696C65732E205573652074686973206F7074696F6E20746F2064656C65
      746520756E77616E74656420706963747572652066696C657319048D00D3E4E0
      EBFFE5F220E2FBE1F0E0EDEDFBE520C2E0ECE820E8E7EEE1F0E0E6E5EDE8FF20
      E820F4E8E7E8F7E5F1EAE820F1F2E8F0E0E5F220F1EEEEF2E2E5F2F1F2E2F3FE
      F9E8E520F4E0E9EBFB20F120E4E8F1EAE02E20C8F1EFEEEBFCE7F3E9F2E520FD
      F2F320EEEFF6E8FE20E4EBFF20F3E4E0EBE5EDE8FF20EDE5EDF3E6EDFBF520E8
      E7EEE1F0E0E6E5EDE8E907049E004CF6736368742064696520617573676577E4
      686C74656E2042696C64657220756E64206CF673636874206175636820646965
      207A75676568F6726967656E204461746569656E20766F6E20496872656D2043
      6F6D70757465722E2056657277656E64656E20536965206469657365204F7074
      696F6E20756D2075756E676577FC6E73636874652042696C646461746569656E
      207A75206CF6736368656E2E0B0048656C704B6579776F726403000000090400
      001904000007040000040048696E740300000009040000190400000704000000
      000000000000000A006C4D6F766546696C657303000000070043617074696F6E
      0300000009046F004D6F766573207468652066696C6573206F66207069637475
      72657320796F752073656C6563742C20696E746F207468652073706563696669
      656420666F6C6465722C20616E64207570646174657320706963747572652066
      696C65206C696E6B7320617070726F7072696174656C7919047B00CFE5F0E5EC
      E5F9E0E5F220F4E0E9EBFB20E2FBE1F0E0EDEDFBF520C2E0ECE820E8E7EEE1F0
      E0E6E5EDE8E920E220E7E0E4E0EDEDF3FE20EFE0EFEAF320E820F1EEEEF2E2E5
      F2F1F2E2F3FEF9E8EC20EEE1F0E0E7EEEC20E8F1EFF0E0E2EBFFE5F220F1F1FB
      EBEAE820E8E7EEE1F0E0E6E5EDE8E920EDE020EDE8F507047200566572736368
      696562742064696520617573676577E4686C74656E2042696C64657220696E20
      64656E20616E6765676562656E656E204F72646E657220756E64207061737374
      206469652042696C6464617465697665726B6EFC7066756E67656E20656E7473
      7072656368656E6420616E2E0B0048656C704B6579776F726403000000090400
      001904000007040000040048696E740300000009040000190400000704000000
      000000000000000B006C4E42556E646F61626C6503000000070043617074696F
      6E030000000904280095204E423A205468657365206F7065726174696F6E7320
      617265206E6F7420756E646F61626C652119043D009520C2CDC8CCC0CDC8C53A
      20FDF2E820EEEFE5F0E0F6E8E820EDE520ECEEE3F3F220E1FBF2FC20E2EFEEF1
      EBE5E4F1F2E2E8E820EEF2ECE5EDE5EDFB2107044400952041636874756E673A
      204469657365204F7065726174696F6E656E206BF66E6E656E206E6963687420
      72FC636B67E46E6769672067656D616368742077657264656E210B0048656C70
      4B6579776F726403000000090400001904000007040000040048696E74030000
      0009040000190400000704000000000000000000000E006C52656275696C6454
      68756D627303000000070043617074696F6E0300000009047600526572656164
      732074686520706963747572652066696C65732C207265637265617465732074
      6865207468756D626E61696C7320616E64207570646174657320746865206669
      6C652D72656C6174656420696E666F726D6174696F6E2C207375636820617320
      696D6167652064696D656E73696F6E7319048000CFE5F0E5F7E8F2FBE2E0E5F2
      20F4E0E9EBFB20E8E7EEE1F0E0E6E5EDE8E92C20EFE5F0E5F1F2F0E0E8E2E0E5
      F220FDF1EAE8E7FB20E820EEE1EDEEE2EBFFE5F220E8EDF4EEF0ECE0F6E8FE2C
      20F1E2FFE7E0EDEDF3FE20F120F4E0E9EBEEEC209720F2E0EAF3FE2C20EAE0EA
      20F0E0E7ECE5F0FB20E8E7EEE1F0E0E6E5EDE8FF07048D004C69657374206469
      652042696C646461746569656E206E65752065696E2C2065726E657565727420
      646965205468756D626E61696C7320756E6420616B7475616C69736965727420
      616C6C65207A757220446174656920676568F6726967656E20456967656E7363
      68616674656E2C20776965207A2E422E206469652042696C6464696D656E7369
      6F6E656E2E0B0048656C704B6579776F72640300000009040000190400000704
      0000040048696E74030000000904000019040000070400000000000000000000
      10006C52657061697246696C654C696E6B7303000000070043617074696F6E03
      0000000904A900416C6C6F777320796F7520746F207265706169722062726F6B
      656E2066696C65206C696E6B732062792066696E64696E67207468652066696C
      657320696E207468652073706563696669656420666F6C6465722C20616E642C
      206F7074696F6E616C6C792C20746F2064656C65746520706963747572657320
      6E6F206C6F6E676572206173736F63696174656420776974682076616C696420
      286578697374656E74292066696C65731904A400CFEEE7E2EEEBFFE5F220E2EE
      F1F1F2E0EDEEE2E8F2FC20E8F1EFEEF0F7E5EDEDFBE520F1F1FBEBEAE820EDE0
      20F4E0E9EBFB20EFF3F2B8EC20EFEEE8F1EAE020EFEEE4F5EEE4FFF9E8F520F4
      E0E9EBEEE220E220E7E0E4E0EDEDEEE920EFE0EFEAE52C20E020F2E0EAE6E520
      F3E4E0EBE8F2FC20E8E7EEE1F0E0E6E5EDE8FF2C20F1F1FBEBE0FEF9E8E5F1FF
      20EDE020EDE5F1F3F9E5F1F2E2F3FEF9E8E520F4E0E9EBFB0704EC0045726C61
      7562742049686E656E2C20646566656B74652044617465697665726B6EFC7066
      756E67656E207A75207265706172696572656E2C20696E64656D206469652065
      6E74737072656368656E64656E204461746569656E20696D20616E6765676562
      656E204F72646E657220676573756368742077657264656E2E20416C7465726E
      61746976206BF66E6E656E205369652042696C6465722C20646965206D697420
      6E69636874206D656872206D69742067FC6C746967656E202865786973746965
      72656E64656E29204461746569656E207665726B6EFC7066742073696E642C20
      6CF6736368656E2E0B0048656C704B6579776F72640300000009040000190400
      0007040000040048696E74030000000904000019040000070400000000000000
      0000000B007262436F707946696C657303000000070043617074696F6E030000
      0009041F0026436F707920706963747572652066696C657320746F206120666F
      6C6465721904250026CAEEEFE8F0EEE2E0F2FC20F4E0E9EBFB20E8E7EEE1F0E0
      E6E5EDE8E920E220EFE0EFEAF30704250042696C646461746569656E20696E20
      65696E656E204F72646E657220266B6F70696572656E0B0048656C704B657977
      6F726403000000090400001904000007040000040048696E7403000000090400
      00190400000704000000000000000000000D00726244656C65746546696C6573
      03000000070043617074696F6E0300000009041A002644656C65746520706963
      747572657320616E642066696C657319041C0026D3E4E0EBE8F2FC20E8E7EEE1
      F0E0E6E5EDE8FF20E820F4E0E9EBFB07041B0042696C64657220756E64204461
      746569656E20266CF6736368656E0B0048656C704B6579776F72640300000009
      0400001904000007040000040048696E74030000000904000019040000070400
      0000000000000000000B0072624D6F766546696C657303000000070043617074
      696F6E0300000009041F00264D6F766520706963747572652066696C65732074
      6F206120666F6C6465721904260026CFE5F0E5ECE5F1F2E8F2FC20F4E0E9EBFB
      20E8E7EEE1F0E0E6E5EDE8E920E220EFE0EFEAF30704280042696C6464617465
      69656E20696E2065696E656E204F72646E65722026766572736368696562656E
      0B0048656C704B6579776F726403000000090400001904000007040000040048
      696E740300000009040000190400000704000000000000000000000F00726252
      656275696C645468756D627303000000070043617074696F6E03000000090413
      002652656275696C64207468756D626E61696C7319041300CFE526F0E5F1F2F0
      EEE8F2FC20FDF1EAE8E7FB070414005468756D626E61696C73202665726E6575
      65726E0B0048656C704B6579776F726403000000090400001904000007040000
      040048696E740300000009040000190400000704000000000000000000001100
      726252657061697246696C654C696E6B7303000000070043617074696F6E0300
      000009041A005265267061697220706963747572652066696C65206C696E6B73
      19041D0026C2EEF1F1F2E0EDEEE2E8F2FC20F1F1FBEBEAE820EDE020F4E0E9EB
      FB0704220042696C6464617465697665726B6EFC7066756E67656E2026726570
      6172696572656E0B0048656C704B6579776F7264030000000904000019040000
      07040000040048696E7403000000090400001904000007040000000000000000
      0000}
  end
  object dklcMain: TDKLanguageController
    Left = 536
    Top = 264
    LangData = {
      17006672577A5061676546696C654F70735F53656C5461736B00010C00000008
      0064746C734D61696E00000A006C436F707946696C6573010100000007000000
      070043617074696F6E000A006C4D6F766546696C657301010000000A00000007
      0043617074696F6E000C006C44656C65746546696C657301010000000D000000
      070043617074696F6E0010006C52657061697246696C654C696E6B7301010000
      0010000000070043617074696F6E000B006C4E42556E646F61626C6501010000
      0013000000070043617074696F6E000E006C52656275696C645468756D627301
      0100000016000000070043617074696F6E000B007262436F707946696C657301
      0100000019000000070043617074696F6E000B0072624D6F766546696C657301
      010000001C000000070043617074696F6E000D00726244656C65746546696C65
      7301010000001F000000070043617074696F6E00110072625265706169724669
      6C654C696E6B73010100000022000000070043617074696F6E000F0072625265
      6275696C645468756D6273010100000025000000070043617074696F6E00}
  end
end
