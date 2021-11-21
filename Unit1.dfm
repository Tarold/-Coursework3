object Form1: TForm1
  Left = 873
  Top = 96
  Width = 859
  Height = 560
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 843
    Height = 521
    ActivePage = TabSheet5
    Align = alClient
    Anchors = [akLeft, akBottom]
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1086#1074#1072#1088
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 835
        Height = 333
        Align = alClient
        DataSource = DataModule1.DataSTovar
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel1: TPanel
        Left = 0
        Top = 333
        Width = 835
        Height = 85
        Align = alBottom
        Anchors = [akBottom]
        Color = clScrollBar
        TabOrder = 1
        DesignSize = (
          835
          85)
        object Label7: TLabel
          Left = 457
          Top = 12
          Width = 95
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1085#1072#1079#1074#1086#1102': '
        end
        object Label1: TLabel
          Left = 457
          Top = 60
          Width = 89
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084': '
        end
        object Label6: TLabel
          Left = 457
          Top = 36
          Width = 103
          Height = 13
          Anchors = [akRight, akBottom]
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1084#1086#1076#1077#1083#1083#1102': '
        end
        object Button2: TButton
          Left = 167
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button2Click
        end
        object Edit5: TEdit
          Left = 611
          Top = 8
          Width = 215
          Height = 21
          Anchors = [akRight, akBottom]
          TabOrder = 1
          OnChange = Edit5Change
        end
        object Button16: TButton
          Left = 246
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1074#1110#1090
          TabOrder = 2
          OnClick = Button16Click
        end
        object Button18: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 3
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 88
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 4
          OnClick = Button19Click
        end
        object Edit2: TEdit
          Left = 611
          Top = 56
          Width = 63
          Height = 21
          Anchors = [akRight, akBottom]
          TabOrder = 5
        end
        object Button10: TButton
          Left = 681
          Top = 56
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #1054#1082
          TabOrder = 6
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 761
          Top = 56
          Width = 65
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 7
          OnClick = Button11Click
        end
        object Edit6: TEdit
          Left = 611
          Top = 32
          Width = 215
          Height = 21
          Anchors = [akRight, akBottom]
          TabOrder = 8
          OnChange = Edit6Change
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 418
        Width = 835
        Height = 75
        Align = alBottom
        Color = clScrollBar
        TabOrder = 2
        Visible = False
        DesignSize = (
          835
          75)
        object Label2: TLabel
          Left = 16
          Top = 12
          Width = 32
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1053#1072#1079#1074#1072
        end
        object Label3: TLabel
          Left = 18
          Top = 35
          Width = 49
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1042#1080#1088#1086#1073#1085#1080#1082
        end
        object Label4: TLabel
          Left = 246
          Top = 11
          Width = 77
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1054#1076#1080#1085#1080#1094#1110' '#1042#1080#1084#1110#1088#1091
        end
        object Label5: TLabel
          Left = 247
          Top = 35
          Width = 22
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1062#1110#1085#1072
        end
        object Label8: TLabel
          Left = 455
          Top = 11
          Width = 39
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1052#1086#1076#1077#1083#1100
        end
        object Edit1: TEdit
          Left = 88
          Top = 8
          Width = 145
          Height = 21
          Anchors = [akLeft, akBottom]
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 336
          Top = 8
          Width = 116
          Height = 21
          Anchors = [akLeft, akBottom]
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 336
          Top = 32
          Width = 116
          Height = 21
          Anchors = [akLeft, akBottom]
          TabOrder = 2
          Text = '0'
        end
        object Button4: TButton
          Left = 608
          Top = 36
          Width = 105
          Height = 25
          Anchors = [akBottom]
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 3
          OnClick = Button4Click
        end
        object Button6: TButton
          Left = 720
          Top = 25
          Width = 105
          Height = 25
          Anchors = [akBottom]
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 4
          OnClick = Button6Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 88
          Top = 32
          Width = 145
          Height = 21
          Anchors = [akLeft, akBottom]
          KeyField = #1050#1086#1076
          ListField = #1053#1072#1079#1074#1072
          ListSource = DataModule1.DataSTVurob
          TabOrder = 5
        end
        object Button1: TButton
          Left = 608
          Top = 8
          Width = 108
          Height = 25
          Anchors = [akBottom]
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 6
          OnClick = Button1Click
        end
        object Edit7: TEdit
          Left = 504
          Top = 8
          Width = 100
          Height = 21
          Anchors = [akLeft, akBottom]
          TabOrder = 7
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1077#1088#1089#1086#1085#1072#1083
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 835
        Height = 450
        Align = alClient
        DataSource = DataModule1.DataSTPerson
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel4: TPanel
        Left = 0
        Top = 450
        Width = 835
        Height = 43
        Align = alBottom
        Color = clScrollBar
        TabOrder = 1
        object Button7: TButton
          Left = 184
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 0
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 1
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 96
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 2
          OnClick = Button9Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1042#1080#1088#1086#1073#1085#1080#1082
      ImageIndex = 3
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 835
        Height = 450
        Align = alClient
        DataSource = DataModule1.DataSTVurob
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel3: TPanel
        Left = 0
        Top = 450
        Width = 835
        Height = 43
        Align = alBottom
        Color = clScrollBar
        TabOrder = 1
        object Button3: TButton
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button3Click
        end
        object Button5: TButton
          Left = 96
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = Button5Click
        end
        object Button12: TButton
          Left = 184
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button12Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078
      ImageIndex = 2
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 835
        Height = 408
        Align = alClient
        DataSource = DataModule1.DataSWork
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel5: TPanel
        Left = 0
        Top = 408
        Width = 835
        Height = 85
        Align = alBottom
        Anchors = [akLeft, akBottom]
        Color = clScrollBar
        TabOrder = 1
        DesignSize = (
          835
          85)
        object Label10: TLabel
          Left = 17
          Top = 20
          Width = 114
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084' '#1095#1077#1082#1091': '
        end
        object Label12: TLabel
          Left = 8
          Top = 48
          Width = 129
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084' '#1087#1088#1086#1076#1072#1078#1091
        end
        object Button14: TButton
          Left = 742
          Top = 40
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = #1047#1074#1110#1090
          TabOrder = 0
          OnClick = Button14Click
        end
        object Edit9: TEdit
          Left = 144
          Top = 16
          Width = 130
          Height = 21
          Anchors = [akLeft, akBottom]
          TabOrder = 1
          Text = '0'
        end
        object Button21: TButton
          Left = 369
          Top = 32
          Width = 65
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 2
          OnClick = Button21Click
        end
        object Edit10: TEdit
          Left = 144
          Top = 48
          Width = 129
          Height = 21
          Anchors = [akLeft, akBottom]
          TabOrder = 3
          Text = '0'
        end
        object Button22: TButton
          Left = 280
          Top = 48
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1054#1082
          TabOrder = 4
          OnClick = Button22Click
        end
        object Button20: TButton
          Left = 280
          Top = 16
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1054#1082
          TabOrder = 5
          OnClick = Button20Click
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 4
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 835
        Height = 424
        Align = alClient
        DataSource = DataModule1.DataSCheck
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel6: TPanel
        Left = 0
        Top = 424
        Width = 835
        Height = 69
        Align = alBottom
        Anchors = [akBottom]
        Color = clScrollBar
        TabOrder = 1
        object Label9: TLabel
          Left = 360
          Top = 24
          Width = 85
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1076'a'#1090#1086#1102' '
        end
        object Label11: TLabel
          Left = 48
          Top = 24
          Width = 83
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1086#1076#1086#1084
        end
        object Button15: TButton
          Left = 264
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1082
          TabOrder = 0
          OnClick = Button15Click
        end
        object Button17: TButton
          Left = 664
          Top = 24
          Width = 75
          Height = 25
          Caption = #1054#1082
          TabOrder = 1
          OnClick = Button17Click
        end
        object Button13: TButton
          Left = 752
          Top = 24
          Width = 75
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1072
          TabOrder = 2
          OnClick = Button13Click
        end
        object Edit8: TEdit
          Left = 136
          Top = 24
          Width = 121
          Height = 21
          TabOrder = 3
          Text = '0'
        end
        object DateTimePicker1: TDateTimePicker
          Left = 456
          Top = 24
          Width = 201
          Height = 21
          Date = 44466.493448703710000000
          Format = 'dd.mm.yyyy'
          Time = 44466.493448703710000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
end
