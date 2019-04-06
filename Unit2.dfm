object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1084#1086#1076#1077#1083#1080
  ClientHeight = 264
  ClientWidth = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 32
    Top = 31
    Width = 39
    Height = 13
    Caption = #1052#1086#1076#1077#1083#1100
  end
  object Label3: TLabel
    Left = 32
    Top = 71
    Width = 122
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' LAN-'#1087#1086#1088#1090#1086#1074
  end
  object Label4: TLabel
    Left = 32
    Top = 113
    Width = 70
    Height = 13
    Caption = #1053#1072#1083#1080#1095#1080#1077' Wi-Fi'
  end
  object Label5: TLabel
    Left = 32
    Top = 149
    Width = 99
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1072#1085#1090#1077#1085#1085
  end
  object Label6: TLabel
    Left = 336
    Top = 31
    Width = 66
    Height = 13
    Caption = #1042#1085#1077#1096#1085#1080#1081' '#1074#1080#1076
  end
  object DBText2: TDBText
    Left = 200
    Top = 31
    Width = 97
    Height = 17
    DataField = 'MODNAME'
    DataSource = DM.DS_INF
  end
  object DBText3: TDBText
    Left = 200
    Top = 71
    Width = 65
    Height = 14
    DataField = 'PORTS'
    DataSource = DM.DS_INF
  end
  object DBText4: TDBText
    Left = 200
    Top = 113
    Width = 65
    Height = 17
    DataField = 'WI_FI'
    DataSource = DM.DS_INF
  end
  object DBText5: TDBText
    Left = 200
    Top = 149
    Width = 65
    Height = 17
    DataField = 'ANT'
    DataSource = DM.DS_INF
  end
  object DBImage1: TDBImage
    Left = 312
    Top = 71
    Width = 136
    Height = 95
    BorderStyle = bsNone
    Color = clBtnFace
    DataField = 'VIEW'
    DataSource = DM.DS_INF
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 192
    Width = 89
    Height = 33
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 1
  end
end
