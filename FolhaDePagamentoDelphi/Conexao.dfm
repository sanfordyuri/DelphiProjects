object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 493
  Width = 582
  object Connection: TFDConnection
    ConnectionName = 'Connection'
    Params.Strings = (
      'Database=E:\DB\FolhaDePagamento\DBFOLHA'
      'Password=masterkey'
      'User_Name=Sysdba'
      'DriverID=FB')
    LoginPrompt = False
    Transaction = Transaction
    Left = 72
    Top = 80
  end
  object Transaction: TFDTransaction
    Connection = Connection
    Left = 72
    Top = 176
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'E:\Firebird_2_5\WOW64\fbclient.dll'
    Left = 184
    Top = 80
  end
end