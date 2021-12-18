object RelFolhaCfg: TRelFolhaCfg
  Left = 0
  Top = 0
  Caption = 'RelFolhaCfg'
  ClientHeight = 733
  ClientWidth = 845
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
  object RlFolha: TRLReport
    Left = 24
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DtsFolha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 99
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object rllblTitulo: TRLLabel
        Left = 0
        Top = 3
        Width = 214
        Height = 24
        Caption = 'Folha de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rllblPeriodo: TRLLabel
        Left = 3
        Top = 40
        Width = 153
        Height = 17
        Caption = 'Per'#237'odo de Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllblNome: TRLLabel
        Left = 3
        Top = 80
        Width = 80
        Height = 16
        Caption = 'Funcion'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rllblDescontoInss: TRLLabel
        Left = 199
        Top = 80
        Width = 98
        Height = 16
        Alignment = taCenter
        Caption = 'Desconto INSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblDescontoirrf: TRLLabel
        Left = 304
        Top = 80
        Width = 96
        Height = 16
        Alignment = taCenter
        Caption = 'Desconto IRRF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rllblSaldoEvento: TRLLabel
        Left = 410
        Top = 80
        Width = 94
        Height = 16
        Alignment = taCenter
        Caption = 'Saldo Eventos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rllblSalarioBruto: TRLLabel
        Left = 516
        Top = 80
        Width = 88
        Height = 16
        Alignment = taCenter
        Caption = 'Sal'#225'rio Bruto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblSalarioLiquido: TRLLabel
        Left = 613
        Top = 82
        Width = 102
        Height = 16
        Alignment = taCenter
        Caption = 'Sal'#225'rio L'#237'quido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rllblRes: TRLLabel
        Left = 199
        Top = 62
        Width = 516
        Height = 16
        Caption = 'Em (R$)'
      end
      object rllblReferencia: TRLLabel
        Left = 162
        Top = 40
        Width = 38
        Height = 16
        Caption = 'DATA'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 24
      object rldbFuncionario: TRLDBText
        Left = 3
        Top = 3
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = DtsFolha
        Text = ''
      end
      object rldbDescontoInss: TRLDBText
        Left = 192
        Top = 6
        Width = 113
        Height = 16
        Alignment = taCenter
        DataField = 'DESCONTO_INSS'
        DataSource = DtsFolha
        Text = ''
      end
      object rldbDescontoIrrf: TRLDBText
        Left = 308
        Top = 6
        Width = 112
        Height = 16
        Alignment = taCenter
        DataField = 'DESCONTO_IRRF'
        DataSource = DtsFolha
        Text = ''
      end
      object rldbSaldoEventos: TRLDBText
        Left = 408
        Top = 5
        Width = 117
        Height = 16
        Alignment = taCenter
        DataField = 'SALDO_EVENTOS'
        DataSource = DtsFolha
        Text = ''
      end
      object rldbSalarioBruto: TRLDBText
        Left = 512
        Top = 5
        Width = 111
        Height = 16
        Alignment = taCenter
        DataField = 'SALARIO_BRUTO'
        DataSource = DtsFolha
        Text = ''
      end
      object rldbSalarioLiquido: TRLDBText
        Left = 608
        Top = 5
        Width = 118
        Height = 16
        Alignment = taCenter
        DataField = 'SALARIO_LIQUIDO'
        DataSource = DtsFolha
        Text = ''
      end
    end
  end
  object DtsFolha: TDataSource
    DataSet = QryFolha
    Left = 656
    Top = 360
  end
  object QryFolha: TFDQuery
    Active = True
    Connection = DM.Connection
    SQL.Strings = (
      
        'SELECT tf.NOME, f.DESCONTO_INSS, f.DESCONTO_IRRF, f.SALDO_EVENTO' +
        'S, f.SALARIO_BRUTO, f.SALARIO_LIQUIDO '
      'FROM FOLHAS f '
      'INNER JOIN TB_FUNCIONARIO tf ON (tf.CODIGO = f.COD_FUNCIONARIO)'
      'WHERE tf.STATUS = 1')
    Left = 704
    Top = 360
  end
end
