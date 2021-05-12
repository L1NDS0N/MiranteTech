object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'TList Generic Application Methods'
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
  object edtTexto: TEdit
    Left = 32
    Top = 16
    Width = 595
    Height = 21
    TabOrder = 0
  end
  object btnAdd: TButton
    Left = 32
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnRemover: TButton
    Left = 32
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 2
    OnClick = btnRemoverClick
  end
  object btnListar: TButton
    Left = 32
    Top = 118
    Width = 75
    Height = 25
    Caption = 'List'
    TabOrder = 3
    OnClick = btnListarClick
  end
  object btnCapacity: TButton
    Left = 32
    Top = 149
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 4
    OnClick = btnCapacityClick
  end
  object btnCount: TButton
    Left = 32
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 5
    OnClick = btnCountClick
  end
  object btnNotify: TButton
    Left = 32
    Top = 211
    Width = 75
    Height = 25
    Caption = 'On Notify'
    TabOrder = 6
    OnClick = btnNotifyClick
  end
  object mmTexto: TMemo
    Left = 127
    Top = 56
    Width = 500
    Height = 235
    ScrollBars = ssBoth
    TabOrder = 7
  end
end
