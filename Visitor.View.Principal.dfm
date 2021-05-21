object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 561
  ClientWidth = 714
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
  object cxButton1: TcxButton
    Left = 236
    Top = 224
    Width = 121
    Height = 106
    Caption = 'Pre'#231'o Normal'
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    AlignWithMargins = True
    Left = 363
    Top = 224
    Width = 118
    Height = 104
    Caption = 'Pre'#231'o Promo'#231#227'o'
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object Edit: TEdit
    Left = 300
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '10'
    TextHint = 'Pre'#231'o'
  end
  object ComboBox: TComboBox
    Left = 236
    Top = 184
    Width = 245
    Height = 21
    TabOrder = 3
    Items.Strings = (
      'Atacado'
      'Varejo')
  end
end
