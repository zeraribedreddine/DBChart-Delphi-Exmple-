object frm_employee: Tfrm_employee
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Les Employee'
  ClientHeight = 493
  ClientWidth = 668
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
  object Pan_all: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 493
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Pan_top: TPanel
      Left = 0
      Top = 0
      Width = 668
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label7: TLabel
        Left = 368
        Top = 7
        Width = 231
        Height = 55
        Alignment = taCenter
        Caption = #1602#1575#1574#1605#1577' '#1575#1604#1605#1608#1592#1601#1610#1606
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -29
        Font.Name = 'Cairo Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Button1: TButton
        Left = 21
        Top = 12
        Width = 137
        Height = 46
        Caption = #1575#1604#1575#1581#1589#1575#1574#1610#1575#1578
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tajawal'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Pane_center: TPanel
      Left = 0
      Top = 81
      Width = 668
      Height = 412
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label2: TLabel
        Left = 566
        Top = 6
        Width = 54
        Height = 36
        Alignment = taCenter
        Caption = #1575#1604#1575#1587#1605' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 566
        Top = 69
        Width = 52
        Height = 36
        Alignment = taCenter
        Caption = #1575#1604#1604#1602#1576
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 562
        Top = 144
        Width = 58
        Height = 36
        Alignment = taCenter
        Caption = #1575#1604#1580#1606#1587
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Cairo Black'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 160
        Top = 362
        Width = 497
        Height = 37
        Alignment = taCenter
        Caption = #1575#1604#1593#1583#1583' '#1575#1604#1575#1580#1605#1575#1604#1610' '#1604#1604#1605#1608#1592#1610#1601#1610#1606' '#1575#1604#1605#1587#1580#1604#1610#1606' '#1601#1610' '#1602#1575#1593#1583#1577' '#1575#1604#1576#1610#1575#1606#1575#1578' '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Cairo'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 184
        Top = 6
        Width = 241
        Height = 27
        BevelOuter = bvNone
        DataField = 'nom'
        DataSource = DM.ds_tbl_employee
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto Cn'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 184
        Top = 76
        Width = 241
        Height = 27
        BevelOuter = bvNone
        DataField = 'prenom'
        DataSource = DM.ds_tbl_employee
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto Cn'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBComboBox1: TDBComboBox
        Left = 184
        Top = 148
        Width = 241
        Height = 31
        DataField = 'sexe'
        DataSource = DM.ds_tbl_employee
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Roboto Cn'
        Font.Style = []
        Items.Strings = (
          #1584#1603#1585
          #1575#1606#1579#1609)
        ParentFont = False
        TabOrder = 2
      end
      object DBNavigator1: TDBNavigator
        Left = 184
        Top = 232
        Width = 240
        Height = 49
        DataSource = DM.ds_tbl_employee
        VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost]
        TabOrder = 3
      end
      object MaskEdit1: TMaskEdit
        Left = 37
        Top = 366
        Width = 68
        Height = 33
        Alignment = taCenter
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Roboto Bk'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '0'
      end
    end
  end
end
