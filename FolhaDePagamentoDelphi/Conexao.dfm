object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 493
  Width = 582
  object Connection: TFDConnection
    ConnectionName = 'Connection'
    Params.Strings = (
      'Database=D:\DB\FolhaDePagamento\DBFOLHA'
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
    VendorLib = 'D:\Firebird_2_5\WOW64\fbclient.dll'
    Left = 184
    Top = 80
  end
end
