object MovimentoEvento: TMovimentoEvento
  Left = 0
  Top = 0
  Caption = 'MovimentoEvento'
  ClientHeight = 414
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblMesAno: TLabel
    Left = 120
    Top = 37
    Width = 42
    Height = 13
    Caption = 'M'#234's/Ano'
  end
  object lblCargo: TLabel
    Left = 120
    Top = 93
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object lblFuncionario: TLabel
    Left = 120
    Top = 141
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
  end
  object lblEventos: TLabel
    Left = 120
    Top = 189
    Width = 34
    Height = 13
    Caption = 'Evento'
  end
  object lblValor: TLabel
    Left = 120
    Top = 237
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 609
    Height = 417
    ActivePage = Lançar
    TabOrder = 0
    object Eventos: TTabSheet
      Caption = 'Eventos'
      object lblPeriodo: TLabel
        Left = 3
        Top = 10
        Width = 103
        Height = 13
        Caption = 'Per'#237'odo de refer'#234'ncia'
      end
      object BtnBuscar: TButton
        Left = 152
        Top = 27
        Width = 97
        Height = 25
        Caption = 'Buscar Dados'
        TabOrder = 0
        OnClick = BtnBuscarClick
      end
      object GridEventos: TDBGrid
        Left = 0
        Top = 58
        Width = 585
        Height = 249
        DataSource = DtsAxlEven
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object BtnAdiciona: TButton
        Left = 3
        Top = 330
        Width = 100
        Height = 40
        Caption = 'Adicionar'
        TabOrder = 2
        OnClick = BtnAdicionaClick
      end
      object BtnRemover: TButton
        Left = 128
        Top = 330
        Width = 100
        Height = 40
        Caption = 'Remover'
        TabOrder = 3
        OnClick = BtnRemoverClick
      end
      object EdtMesAnoRef: TMaskEdit
        Left = 3
        Top = 29
        Width = 65
        Height = 21
        EditMask = '!99/0000;1; '
        MaxLength = 7
        TabOrder = 4
        Text = '  /    '
      end
    end
    object Lançar: TTabSheet
      Caption = 'Lan'#231'ar'
      ImageIndex = 1
      object Label1: TLabel
        Left = 40
        Top = 77
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object Label2: TLabel
        Left = 40
        Top = 173
        Width = 34
        Height = 13
        Caption = 'Evento'
      end
      object Label3: TLabel
        Left = 40
        Top = 125
        Width = 55
        Height = 13
        Caption = 'Funcion'#225'rio'
      end
      object Label4: TLabel
        Left = 40
        Top = 21
        Width = 42
        Height = 13
        Caption = 'M'#234's/Ano'
      end
      object Label5: TLabel
        Left = 40
        Top = 221
        Width = 24
        Height = 13
        Caption = 'Valor'
      end
      object Button1: TButton
        Left = 192
        Top = 304
        Width = 111
        Height = 33
        Caption = 'Cancelar'
        TabOrder = 0
      end
      object EdtMesAno: TMaskEdit
        Left = 40
        Top = 40
        Width = 65
        Height = 21
        EditMask = '!99/0000;1; '
        MaxLength = 7
        TabOrder = 1
        Text = '  /    '
      end
      object EdtValor: TEdit
        Left = 40
        Top = 240
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object LkpCargo: TDBLookupComboBox
        Left = 40
        Top = 96
        Width = 369
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = DtsCargos
        NullValueKey = 16462
        TabOrder = 3
      end
      object LkpEvento: TDBLookupComboBox
        Left = 40
        Top = 192
        Width = 369
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = DtsEventos
        TabOrder = 4
      end
      object LkpFuncionario: TDBLookupComboBox
        Left = 40
        Top = 146
        Width = 369
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = DtsFuncionarios
        NullValueKey = 16462
        TabOrder = 5
      end
      object Button2: TButton
        Left = 40
        Top = 304
        Width = 111
        Height = 33
        Caption = 'Salvar'
        TabOrder = 6
        OnClick = btnSalvarClick
      end
    end
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'select * from tb_cargo')
    Left = 488
    Top = 56
  end
  object QueryFuncionarios: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_FUNCIONARIO ORDER BY CODIGO ASC')
    Left = 528
    Top = 56
  end
  object QueryEventos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_EVENTOS')
    Left = 568
    Top = 56
  end
  object DtsCargos: TDataSource
    DataSet = QueryCargos
    Left = 488
    Top = 8
  end
  object DtsFuncionarios: TDataSource
    DataSet = QueryFuncionarios
    Left = 528
    Top = 8
  end
  object DtsEventos: TDataSource
    DataSet = QueryEventos
    Left = 568
    Top = 8
  end
  object QryFuncionariosSelecionados: TFDQuery
    Connection = DM.Connection
    Left = 568
    Top = 112
  end
  object QryAux: TFDQuery
    Connection = DM.Connection
    Left = 528
    Top = 112
  end
  object QueryAxlEven: TFDQuery
    AfterOpen = QueryAxlEvenAfterOpen
    Connection = DM.Connection
    Left = 412
    Top = 32
  end
  object DtsAxlEven: TDataSource
    DataSet = QueryAxlEven
    Left = 352
    Top = 32
  end
end
