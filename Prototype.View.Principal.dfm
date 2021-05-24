object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 72
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'C'#243'digo'
  end
  object Edit2: TEdit
    Left = 72
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Descri'#231#227'o'
  end
  object Memo1: TMemo
    Left = 344
    Top = 80
    Width = 369
    Height = 401
    Lines.Strings = (
      '')
    TabOrder = 2
  end
  object Button1: TButton
    Left = 72
    Top = 160
    Width = 121
    Height = 25
    Caption = 'Vender Item'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 72
    Top = 456
    Width = 121
    Height = 25
    Caption = 'Repetir ultimo item'
    TabOrder = 4
    OnClick = Button2Click
  end
end
