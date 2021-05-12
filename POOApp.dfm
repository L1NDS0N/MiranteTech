object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'POO'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 56
    Top = 8
    Width = 75
    Height = 33
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 47
    Width = 249
    Height = 29
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 328
    Top = 47
    Width = 257
    Height = 29
    TabOrder = 2
    Text = 'Edit2'
  end
  object Memo1: TMemo
    Left = 56
    Top = 104
    Width = 529
    Height = 161
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
end
