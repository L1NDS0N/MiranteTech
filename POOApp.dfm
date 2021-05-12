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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 152
    Top = 8
    Width = 113
    Height = 33
    Hint = 'Clique para alterar para pessoa jur'#237'dica'
    Caption = 'Pessoa Tipo: &F'#237'sica'
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  object Button1: TButton
    Left = 56
    Top = 8
    Width = 75
    Height = 33
    Caption = 'Incrementar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 63
    Width = 249
    Height = 21
    TabOrder = 1
    TextHint = 'Nome'
  end
  object Edit2: TEdit
    Left = 328
    Top = 63
    Width = 257
    Height = 21
    TabOrder = 2
    TextHint = 'Sobrenome'
  end
  object Memo1: TMemo
    Left = 56
    Top = 104
    Width = 529
    Height = 161
    Hint = 'Nome completo'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
end
