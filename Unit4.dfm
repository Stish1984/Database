object DM: TDM
  OldCreateOrder = False
  Height = 341
  Width = 301
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'D:\Session spring 2019\Routers\ROUTERS.FDB'
    Params.Strings = (
      'lc_ctype=WIN1251'
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 56
    Top = 16
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 184
    Top = 16
  end
  object Q_Brand: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from BREND')
    Left = 24
    Top = 72
    object Q_BrandIDFIRM: TIntegerField
      FieldName = 'IDFIRM'
      Origin = '"BREND"."IDFIRM"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_BrandFIRM: TIBStringField
      FieldName = 'FIRM'
      Origin = '"BREND"."FIRM"'
      Size = 15
    end
  end
  object DS_Brand: TDataSource
    DataSet = Q_Brand
    Left = 24
    Top = 120
  end
  object Q_Model: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_Brand
    ParamCheck = True
    SQL.Strings = (
      'select IDMOD, MODNAME from MODELS'
      'WHERE IDFIRM = :IDFIRM')
    Left = 96
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDFIRM'
        ParamType = ptUnknown
        Size = 4
      end>
    object Q_ModelIDMOD: TIntegerField
      FieldName = 'IDMOD'
      Origin = '"MODELS"."IDMOD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_ModelMODNAME: TIBStringField
      FieldName = 'MODNAME'
      Origin = '"MODELS"."MODNAME"'
      Size = 30
    end
  end
  object DS_Model: TDataSource
    DataSet = Q_Model
    Left = 96
    Top = 120
  end
  object Q_Routers: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction2
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = DS_Model
    ParamCheck = True
    SQL.Strings = (
      
        'SELECT STOIMOST.PRICE, ROUTERS_INFO.IDINFO, ROUTERS_INFO.CENA,  ' +
        'ROUTERS_INFO.SKIDKA,  ROUTERS_INFO.NOTES'
      'FROM ROUTERS_INFO'
      'INNER JOIN STOIMOST ON ( ROUTERS_INFO.IDCENA = STOIMOST.IDCENA )'
      'WHERE IDMOD = :IDMOD ')
    Left = 168
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDMOD'
        ParamType = ptUnknown
        Size = 4
      end>
    object Q_RoutersPRICE: TIBStringField
      FieldName = 'PRICE'
      Origin = '"STOIMOST"."PRICE"'
      Size = 50
    end
    object Q_RoutersIDINFO: TIntegerField
      FieldName = 'IDINFO'
      Origin = '"ROUTERS_INFO"."IDINFO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_RoutersCENA: TFloatField
      FieldName = 'CENA'
      Origin = '"ROUTERS_INFO"."CENA"'
    end
    object Q_RoutersSKIDKA: TFloatField
      FieldName = 'SKIDKA'
      Origin = '"ROUTERS_INFO"."SKIDKA"'
    end
    object Q_RoutersNOTES: TIBStringField
      FieldName = 'NOTES'
      Origin = '"ROUTERS_INFO"."NOTES"'
      Size = 50
    end
  end
  object DS_Routers: TDataSource
    DataSet = Q_Routers
    Left = 168
    Top = 120
  end
  object Q_Stoimost: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from STOIMOST')
    Left = 232
    Top = 72
    object Q_StoimostIDCENA: TIntegerField
      FieldName = 'IDCENA'
      Origin = '"STOIMOST"."IDCENA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_StoimostPRICE: TIBStringField
      FieldName = 'PRICE'
      Origin = '"STOIMOST"."PRICE"'
      Size = 50
    end
  end
  object DS_Stoimost: TDataSource
    DataSet = Q_Stoimost
    Left = 232
    Top = 120
  end
  object IBDataSet1: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction2
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from ROUTERS_INFO'
      'where'
      '  IDINFO = :OLD_IDINFO')
    InsertSQL.Strings = (
      'insert into ROUTERS_INFO'
      '  (NOTES, SKIDKA, IDCENA, IDMOD, IDINFO, CENA)'
      'values'
      '  (:NOTES, :SKIDKA, :IDCENA, :IDMOD, :IDINFO, :CENA)')
    RefreshSQL.Strings = (
      'Select '
      '  NOTES,'
      '  SKIDKA,'
      '  IDCENA,'
      '  IDMOD,'
      '  IDINFO,'
      '  CENA'
      'from ROUTERS_INFO '
      'where'
      '  IDINFO = :IDINFO')
    SelectSQL.Strings = (
      'select * from ROUTERS_INFO')
    ModifySQL.Strings = (
      'update ROUTERS_INFO'
      'set'
      '  NOTES = :NOTES,'
      '  SKIDKA = :SKIDKA,'
      '  IDCENA = :IDCENA,'
      '  IDMOD = :IDMOD,'
      '  IDINFO = :IDINFO,'
      '  CENA = :CENA'
      'where'
      '  IDINFO = :OLD_IDINFO')
    ParamCheck = True
    UniDirectional = False
    Active = True
    Left = 24
    Top = 224
    object IBDataSet1IDINFO: TIntegerField
      FieldName = 'IDINFO'
      Origin = '"ROUTERS_INFO"."IDINFO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBDataSet1IDMOD: TIntegerField
      FieldName = 'IDMOD'
      Origin = '"ROUTERS_INFO"."IDMOD"'
    end
    object IBDataSet1IDCENA: TIntegerField
      FieldName = 'IDCENA'
      Origin = '"ROUTERS_INFO"."IDCENA"'
    end
    object IBDataSet1CENA: TFloatField
      FieldName = 'CENA'
      Origin = '"ROUTERS_INFO"."CENA"'
    end
    object IBDataSet1SKIDKA: TFloatField
      FieldName = 'SKIDKA'
      Origin = '"ROUTERS_INFO"."SKIDKA"'
    end
    object IBDataSet1NOTES: TIBStringField
      FieldName = 'NOTES'
      Origin = '"ROUTERS_INFO"."NOTES"'
      Size = 50
    end
  end
  object IBTransaction2: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 24
    Top = 272
  end
  object DS_INF: TDataSource
    DataSet = Q_INF
    Left = 192
    Top = 224
  end
  object Q_INF: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from MODELS')
    Left = 112
    Top = 224
    object Q_INFPORTS: TIntegerField
      FieldName = 'PORTS'
      Origin = '"MODELS"."PORTS"'
    end
    object Q_INFANT: TIntegerField
      FieldName = 'ANT'
      Origin = '"MODELS"."ANT"'
    end
    object Q_INFWI_FI: TIBStringField
      FieldName = 'WI_FI'
      Origin = '"MODELS"."WI_FI"'
      Size = 10
    end
    object Q_INFMODNAME: TIBStringField
      FieldName = 'MODNAME'
      Origin = '"MODELS"."MODNAME"'
      Size = 30
    end
    object Q_INFIDFIRM: TIntegerField
      FieldName = 'IDFIRM'
      Origin = '"MODELS"."IDFIRM"'
    end
    object Q_INFIDMOD: TIntegerField
      FieldName = 'IDMOD'
      Origin = '"MODELS"."IDMOD"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_INFVIEW: TWideMemoField
      FieldName = 'VIEW'
      Origin = '"MODELS"."VIEW"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftWideMemo
      Size = 8
    end
  end
end
