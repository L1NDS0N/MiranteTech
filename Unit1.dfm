object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Rich Text Editor'
  ClientHeight = 822
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1084
    Height = 42
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvLowered
    ParentBackground = False
    TabOrder = 0
    object Button2: TButton
      AlignWithMargins = True
      Left = 292
      Top = 4
      Width = 69
      Height = 34
      Align = alLeft
      Caption = 'Par'#225'grafo'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 196
      Top = 4
      Width = 42
      Height = 34
      Align = alLeft
      Caption = '<>'
      TabOrder = 1
      OnClick = Button3Click
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 244
      Top = 4
      Width = 42
      Height = 34
      Align = alLeft
      Caption = '->'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 148
      Top = 4
      Width = 42
      Height = 34
      Align = alLeft
      Caption = '<-'
      TabOrder = 3
      OnClick = Button5Click
    end
    object Button6: TButton
      AlignWithMargins = True
      Left = 100
      Top = 4
      Width = 42
      Height = 34
      Align = alLeft
      Caption = 'U'
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button7: TButton
      AlignWithMargins = True
      Left = 52
      Top = 4
      Width = 42
      Height = 34
      Align = alLeft
      Caption = 'B'
      TabOrder = 5
      OnClick = Button7Click
    end
    object Button8: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 42
      Height = 34
      Align = alLeft
      Caption = 'I'
      TabOrder = 6
      OnClick = Button8Click
    end
  end
  object RichEdit1: TRichEdit
    Left = 0
    Top = 43
    Width = 1084
    Height = 760
    Cursor = crIBeam
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 1
    Align = alBottom
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    WantTabs = True
    Zoom = 100
    OnChange = RichEdit1Change
    OnSelectionChange = RichEdit1SelectionChange
  end
  object FooterStatusBar: TPanel
    Left = 0
    Top = 803
    Width = 1084
    Height = 19
    Align = alBottom
    Alignment = taRightJustify
    TabOrder = 2
  end
end
