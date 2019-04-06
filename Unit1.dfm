object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1052#1072#1088#1096#1088#1091#1090#1080#1079#1072#1090#1086#1088#1099
  ClientHeight = 493
  ClientWidth = 730
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 24
    Top = 24
    Width = 153
    Height = 177
    DataSource = DM.DS_Brand
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FIRM'
        Title.Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 360
    Top = 24
    Width = 185
    Height = 177
    DataSource = DM.DS_Model
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'MODNAME'
        Title.Caption = #1052#1086#1076#1077#1083#1100' '#1080#1079#1076#1077#1083#1080#1103
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 24
    Top = 223
    Width = 577
    Height = 169
    DataSource = DM.DS_Routers
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
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
        Width = 204
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CENA'
        Title.Caption = #1057#1091#1084#1084#1072' '#1082' '#1086#1087#1083#1072#1090#1077' '#1079#1072' 1 '#1096#1090'.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SKIDKA'
        Title.Caption = #1057#1082#1080#1076#1082#1072', %'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTES'
        Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDINFO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CENA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SKIDKA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTES'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 49
    Top = 414
    Width = 128
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 414
    Width = 129
    Height = 41
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 383
    Top = 414
    Width = 130
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 562
    Top = 40
    Width = 145
    Height = 41
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1084#1086#1076#1077#1083#1080
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 562
    Top = 430
    Width = 145
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 7
    OnClick = Button5Click
  end
end
