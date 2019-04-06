object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form3'
  ClientHeight = 275
  ClientWidth = 613
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
  object Label1: TLabel
    Left = 464
    Top = 24
    Width = 54
    Height = 13
    Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
  end
  object Label2: TLabel
    Left = 464
    Top = 80
    Width = 56
    Height = 13
    Caption = #1057#1082#1080#1076#1082#1072', %'
  end
  object Label3: TLabel
    Left = 464
    Top = 136
    Width = 61
    Height = 13
    Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
  end
  object ComboBox1: TComboBox
    Left = 448
    Top = 43
    Width = 145
    Height = 21
    Style = csSimple
    TabOrder = 0
  end
  object ComboBox2: TComboBox
    Left = 448
    Top = 99
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = '0'
    Items.Strings = (
      '0'
      '5'
      '10'
      '15'
      '20'
      '25'
      '33'
      '50'
      '100'
      '')
  end
  object ComboBox3: TComboBox
    Left = 448
    Top = 155
    Width = 145
    Height = 21
    Style = csSimple
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 24
    Width = 417
    Height = 169
    DataSource = DM.DS_Stoimost
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRICE'
        Title.Caption = #1059#1089#1083#1086#1074#1080#1077' '#1086#1092#1086#1088#1084#1083#1077#1085#1080#1103' '
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 160
    Top = 216
    Width = 113
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 4
  end
  object BitBtn2: TBitBtn
    Left = 312
    Top = 217
    Width = 121
    Height = 32
    Caption = #1047#1072#1082#1088#1099#1090#1100
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
end
