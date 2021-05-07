object Form1: TForm1
  Left = 0
  Top = 353
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
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 50
    Top = 141
    Width = 897
    Height = 300
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btBuscar: TButton
    Left = 50
    Top = 20
    Width = 75
    Height = 33
    Caption = 'Buscar'
    TabOrder = 1
    OnClick = btBuscarClick
  end
  object Edit1: TEdit
    Left = 50
    Top = 59
    Width = 449
    Height = 21
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 50
    Top = 94
    Width = 449
    Height = 21
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 505
    Top = 94
    Width = 442
    Height = 21
    TabOrder = 4
  end
  object Memo1: TMemo
    Left = 50
    Top = 456
    Width = 897
    Height = 129
    Lines.Strings = (
      'Memo1')
    TabOrder = 5
  end
  object btInserir: TButton
    Left = 139
    Top = 20
    Width = 75
    Height = 33
    Caption = 'Inserir'
    TabOrder = 6
    OnClick = btInserirClick
  end
  object btAtualizar: TButton
    Left = 232
    Top = 20
    Width = 73
    Height = 33
    Caption = 'Atualizar'
    TabOrder = 7
    OnClick = btAtualizarClick
  end
  object btDelete: TButton
    Left = 328
    Top = 20
    Width = 75
    Height = 33
    Caption = 'Deletar'
    TabOrder = 8
    OnClick = btDeleteClick
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Lindson\Documents\FirebirdSQL\EXEMPLO FB30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 952
    Top = 16
  end
  object DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 880
    Top = 16
  end
  object RESTDWDataBase1: TRESTDWDataBase
    Active = True
    Compression = True
    CriptOptions.Use = False
    CriptOptions.Key = 'RDWBASEKEY256'
    MyIP = '127.0.0.1'
    AuthenticationOptions.AuthorizationOption = rdwAOBasic
    AuthenticationOptions.OptionParams.AuthDialog = True
    AuthenticationOptions.OptionParams.CustomDialogAuthMessage = 'Protected Space...'
    AuthenticationOptions.OptionParams.Custom404TitleMessage = '(404) The address you are looking for does not exist'
    AuthenticationOptions.OptionParams.Custom404BodyMessage = '404'
    AuthenticationOptions.OptionParams.Custom404FooterMessage = 'Take me back to <a href="./">Home REST Dataware'
    AuthenticationOptions.OptionParams.Username = 'testserver'
    AuthenticationOptions.OptionParams.Password = 'testserver'
    Proxy = False
    ProxyOptions.Port = 8888
    PoolerService = '127.0.0.1'
    PoolerPort = 8082
    PoolerName = 'TDataModule2.RESTDWPoolerDB1'
    StateConnection.AutoCheck = False
    StateConnection.InTime = 1000
    RequestTimeOut = 10000
    EncodeStrings = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    HandleRedirects = False
    RedirectMaximum = 0
    ParamCreate = True
    FailOver = False
    FailOverConnections = <>
    FailOverReplaceDefaults = False
    ClientConnectionDefs.Active = False
    UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, l' +
      'ike Gecko) Chrome/41.0.2227.0 Safari/537.36'
    Left = 808
    Top = 16
  end
end
