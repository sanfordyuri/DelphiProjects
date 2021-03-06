object MovFolhaDePagamento: TMovFolhaDePagamento
  Left = 0
  Top = 0
  Caption = 'Movimenta'#231#227'o de folha'
  ClientHeight = 320
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object LblMesAno: TLabel
    Left = 24
    Top = 8
    Width = 42
    Height = 13
    Caption = 'M'#234's/Ano'
  end
  object EdtMesAno: TMaskEdit
    Left = 24
    Top = 27
    Width = 89
    Height = 21
    EditMask = '!99/0000;1; '
    MaxLength = 7
    TabOrder = 0
    Text = '  /    '
  end
  object BtnProcessar: TButton
    Left = 119
    Top = 25
    Width = 97
    Height = 25
    Caption = 'Processar'
    TabOrder = 1
    OnClick = BtnProcessarClick
  end
  object Log: TMemo
    Left = 24
    Top = 56
    Width = 473
    Height = 246
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object QryFolha: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM FOLHAS')
    Left = 376
    Top = 80
    object QryFolhaMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Origin = 'MES_ANO'
      Required = True
      Size = 7
    end
    object QryFolhaCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Origin = 'COD_FUNCIONARIO'
      Required = True
    end
    object QryFolhaDESCONTO_INSS: TFloatField
      FieldName = 'DESCONTO_INSS'
      Origin = 'DESCONTO_INSS'
      Required = True
    end
    object QryFolhaDESCONTO_IRRF: TFloatField
      FieldName = 'DESCONTO_IRRF'
      Origin = 'DESCONTO_IRRF'
      Required = True
    end
    object QryFolhaSALDO_EVENTOS: TFloatField
      FieldName = 'SALDO_EVENTOS'
      Origin = 'SALDO_EVENTOS'
      Required = True
    end
    object QryFolhaSALARIO_BRUTO: TFloatField
      FieldName = 'SALARIO_BRUTO'
      Origin = 'SALARIO_BRUTO'
      Required = True
    end
    object QryFolhaSALARIO_LIQUIDO: TFloatField
      FieldName = 'SALARIO_LIQUIDO'
      Origin = 'SALARIO_LIQUIDO'
      Required = True
    end
  end
  object QryFuncionarios: TFDQuery
    Connection = DM.Connection
    Left = 376
    Top = 144
  end
end
