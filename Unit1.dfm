object DataModule2: TDataModule2
  OldCreateOrder = False
  Encoding = esUtf8
  Height = 254
  Width = 653
  object DWServerEvents1: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odOUT
            ObjectValue = ovString
            ParamName = 'result'
            Encoded = False
          end>
        JsonMode = jmPureJSON
        Name = 'teste'
        EventName = 'teste'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWServerEvents1EventstesteReplyEvent
      end>
    Left = 32
    Top = 32
  end
  object con1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Lindson\Documents\FirebirdSQL\EXEMPLO FB30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 288
    Top = 8
  end
  object RESTDWPoolerDB1: TRESTDWPoolerDB
    RESTDriver = RESTDWDriverFD1
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 32
    Top = 88
  end
  object RESTDWDriverFD1: TRESTDWDriverFD
    CommitRecords = 100
    Connection = con1
    Left = 32
    Top = 144
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 368
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 472
    Top = 8
  end
end
