object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 546
  Width = 891
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\lucas\Documents\ACS\POSTO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'MonitorBy=custom'
      'DriverID=FB')
    Left = 32
    Top = 24
  end
  object FDQueryCombustivel: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from combustivel')
    Left = 112
    Top = 24
  end
  object DataSourceCombustivel: TDataSource
    DataSet = FDQueryCombustivel
    Left = 184
    Top = 24
  end
  object FDMoniCustomClientLink1: TFDMoniCustomClientLink
    Left = 824
    Top = 24
  end
  object DataSourceTanque: TDataSource
    DataSet = FDQueryTanque
    Left = 184
    Top = 72
  end
  object FDQueryTanque: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tanque')
    Left = 112
    Top = 72
  end
  object DataSourceImposto: TDataSource
    DataSet = FDQueryImposto
    Left = 184
    Top = 120
  end
  object FDQueryImposto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from imposto'
      '')
    Left = 112
    Top = 120
  end
  object FDQueryBomba: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from bomba'
      '')
    Left = 112
    Top = 168
  end
  object DataSourceBomba: TDataSource
    DataSet = FDQueryBomba
    Left = 184
    Top = 168
  end
end
