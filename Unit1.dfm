object DataModule2: TDataModule2
  OldCreateOrder = False
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
        JsonMode = jmDataware
        Name = 'teste'
        EventName = 'teste'
        OnlyPreDefinedParams = False
        OnReplyEvent = DWServerEvents1EventstesteReplyEvent
      end>
    Left = 96
    Top = 56
  end
end
