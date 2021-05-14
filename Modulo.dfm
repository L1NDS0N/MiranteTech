object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 378
  Width = 513
  object mySqlDriver: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Lindson Fran'#231'a\Documents\Embarcadero\Studio\Projects\PD' +
      'VFiscal\libmySQL.dll'
    Left = 64
    Top = 8
  end
  object fd: TFDConnection
    Params.Strings = (
      'Database=PDVFiscal'
      'User_Name=root'
      'Password=root'
      'DriverID=MySQL')
    LoginPrompt = False
    BeforeConnect = fdBeforeConnect
    Left = 8
    Top = 8
  end
  object query_cargos: TFDQuery
    Connection = fd
    SQL.Strings = (
      'select * from cargos')
    Left = 96
    Top = 320
    object query_cargosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object query_cargoscargo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cargo'
      Origin = 'cargo'
      Size = 40
    end
  end
  object table_cargos: TFDTable
    IndexFieldNames = 'id'
    Connection = fd
    UpdateOptions.UpdateTableName = 'PDVFiscal.cargos'
    TableName = 'PDVFiscal.cargos'
    Left = 24
    Top = 320
  end
  object ds_cargos: TDataSource
    DataSet = query_cargos
    Left = 160
    Top = 320
  end
end
