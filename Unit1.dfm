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
    Left = 333
    Top = 1
    Width = 417
    Height = 41
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Button1: TButton
      AlignWithMargins = True
      Left = 292
      Top = 4
      Width = 42
      Height = 33
      Align = alLeft
      Caption = 'Link'
      TabOrder = 0
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 340
      Top = 4
      Width = 69
      Height = 33
      Align = alLeft
      Caption = 'Par'#225'grafo'
      TabOrder = 1
    end
    object Button3: TButton
      AlignWithMargins = True
      Left = 196
      Top = 4
      Width = 42
      Height = 33
      Align = alLeft
      Caption = '<>'
      TabOrder = 2
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 244
      Top = 4
      Width = 42
      Height = 33
      Align = alLeft
      Caption = '->'
      TabOrder = 3
    end
    object Button5: TButton
      AlignWithMargins = True
      Left = 148
      Top = 4
      Width = 42
      Height = 33
      Align = alLeft
      Caption = '<-'
      TabOrder = 4
    end
    object Button6: TButton
      AlignWithMargins = True
      Left = 100
      Top = 4
      Width = 42
      Height = 33
      Align = alLeft
      Caption = 'U'
      TabOrder = 5
    end
    object Button7: TButton
      AlignWithMargins = True
      Left = 52
      Top = 4
      Width = 42
      Height = 33
      Align = alLeft
      Caption = 'B'
      TabOrder = 6
    end
    object Button8: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 42
      Height = 33
      Align = alLeft
      Caption = 'I'
      TabOrder = 7
      OnClick = Button8Click
    end
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 1078
    Height = 775
    Align = alBottom
    BorderStyle = bsNone
    ScrollBars = ssBoth
    TabOrder = 1
  end
end
