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
    Left = 96
    Top = 56
  end
  object con1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Lindson\Documents\FirebirdSQL\EXEMPLO FB30.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Left = 192
    Top = 56
  end
end
