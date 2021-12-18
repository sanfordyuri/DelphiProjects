object RelFunCfg: TRelFunCfg
  Left = 0
  Top = 0
  Caption = 'RelFunCfg'
  ClientHeight = 756
  ClientWidth = 922
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 24
    Top = 8
    Width = 794
    Height = 1123
    DataSource = DtsLista
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 60
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object rlblTitulo: TRLLabel
        Left = 3
        Top = 11
        Width = 128
        Height = 22
        Caption = 'Funcion'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlblCodigo: TRLLabel
        Left = 8
        Top = 38
        Width = 44
        Height = 18
        Caption = 'C'#243'digo'
      end
      object rlblNome: TRLLabel
        Left = 93
        Top = 41
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object rlblNascimento: TRLLabel
        Left = 293
        Top = 37
        Width = 73
        Height = 16
        Caption = 'Nascimento'
      end
      object rlblCargo: TRLLabel
        Left = 413
        Top = 40
        Width = 38
        Height = 16
        Caption = 'Cargo'
      end
      object rlblContato: TRLLabel
        Left = 581
        Top = 40
        Width = 109
        Height = 16
        Caption = 'Contato (Telefone)'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 664
        Top = 3
        Width = 39
        Height = 16
        Text = ''
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 98
      Width = 718
      Height = 28
      object rlbldbCodigo: TRLDBText
        Left = 8
        Top = 8
        Width = 55
        Height = 16
        Alignment = taCenter
        DataField = 'CODIGO'
        DataSource = DtsLista
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 93
        Top = 8
        Width = 43
        Height = 16
        DataField = 'NOME'
        DataSource = DtsLista
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 293
        Top = 9
        Width = 89
        Height = 16
        Alignment = taCenter
        DataField = 'NASCIMENTO'
        DataSource = DtsLista
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 413
        Top = 9
        Width = 57
        Height = 16
        DataField = 'NOME_1'
        DataSource = DtsLista
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 581
        Top = 9
        Width = 109
        Height = 16
        Alignment = taCenter
        DataField = 'CONTATO'
        DataSource = DtsLista
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 126
      Width = 718
      Height = 59
      BandType = btFooter
      object RLDraw1: TRLDraw
        Left = 512
        Top = 19
        Width = 193
        Height = 1
      end
      object rlblAss: TRLLabel
        Left = 512
        Top = 26
        Width = 193
        Height = 16
        Alignment = taCenter
        Caption = 'Assinatura do Diretor'
      end
    end
  end
  object QryLista: TFDQuery
    Active = True
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT tf.CODIGO , tf.NOME, tf.NASCIMENTO, tc.NOME, tf.CONTATO '
      'FROM TB_FUNCIONARIO tf '
      'INNER JOIN TB_CARGO tc ON (tc.CODIGO = tf.CARGO)')
    Left = 784
    Top = 112
  end
  object DtsLista: TDataSource
    DataSet = QryLista
    Left = 784
    Top = 160
  end
end
