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
    Connected = True
    Left = 32
    Top = 24
  end
  object FDMoniCustomClientLink1: TFDMoniCustomClientLink
    Left = 824
    Top = 24
  end
  object QueryRelatorioVenda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT a.DATA, a.HORA, b.NOME, a.QUANTIDADE, a.TOTAL, a.VALORIMP' +
        'OSTO '
      'FROM ABASTECIMENTO a'
      'LEFT JOIN BOMBA b on (a.BOMBA = b.ID) '
      
        'WHERE DATA BETWEEN :datainicial AND :datafinal AND BOMBA = coale' +
        'sce(:bomba, BOMBA)')
    Left = 112
    Top = 24
    ParamData = <
      item
        Name = 'DATAINICIAL'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATAFINAL'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Name = 'BOMBA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
end
