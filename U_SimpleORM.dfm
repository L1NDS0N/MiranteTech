object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 667
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 40
    Top = 129
    Width = 897
    Height = 497
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 40
    Top = 75
    Width = 241
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 40
    Top = 102
    Width = 441
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 496
    Top = 102
    Width = 441
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object btBuscar: TButton
    Left = 40
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 4
    OnClick = btBuscarClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Lindson\Documents\FirebirdSQL\EXEMPLO FB30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Left = 952
    Top = 16
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 880
    Top = 16
  end
end
