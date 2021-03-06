object MovimentoSalarios: TMovimentoSalarios
  Left = 0
  Top = 0
  Caption = 'MovimentoSalarios'
  ClientHeight = 394
  ClientWidth = 577
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
  object Label2: TLabel
    Left = 40
    Top = 120
    Width = 51
    Height = 13
    Caption = 'Percentual'
  end
  object lblCargo: TLabel
    Left = 40
    Top = 24
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object lblFuncionario: TLabel
    Left = 40
    Top = 72
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
  end
  object Label1: TLabel
    Left = 40
    Top = 165
    Width = 78
    Height = 13
    Caption = 'Data Refer'#234'ncia'
  end
  object PgControl: TPageControl
    Left = 0
    Top = 0
    Width = 577
    Height = 409
    ActivePage = Processos
    TabOrder = 0
    object Processos: TTabSheet
      Caption = 'Processos'
      object lblPeriodo: TLabel
        Left = 3
        Top = 10
        Width = 103
        Height = 13
        Caption = 'Per'#237'odo de refer'#234'ncia'
      end
      object GridProcessos: TDBGrid
        Left = 0
        Top = 67
        Width = 573
        Height = 249
        DataSource = DtsAxlSal
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object EdtPeriodo: TMaskEdit
        Left = 3
        Top = 29
        Width = 120
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object BtnBuscar: TButton
        Left = 152
        Top = 27
        Width = 97
        Height = 25
        Caption = 'Buscar Dados'
        TabOrder = 2
        OnClick = BtnBuscarClick
      end
      object BtnRemover: TButton
        Left = 128
        Top = 322
        Width = 100
        Height = 40
        Caption = 'Remover'
        TabOrder = 3
        OnClick = BtnRemoverClick
      end
      object BtnAdicionar: TButton
        Left = 6
        Top = 322
        Width = 100
        Height = 40
        Caption = 'Adicionar'
        TabOrder = 4
        OnClick = BtnAdicionarClick
      end
    end
    object Lançar: TTabSheet
      Caption = 'Lan'#231'ar'
      ImageIndex = 1
      object lblCargom: TLabel
        Left = 40
        Top = 24
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object lblFun: TLabel
        Left = 40
        Top = 77
        Width = 55
        Height = 13
        Caption = 'Funcion'#225'rio'
      end
      object lblPer: TLabel
        Left = 40
        Top = 122
        Width = 51
        Height = 13
        Caption = 'Percentual'
      end
      object lblDataRef: TLabel
        Left = 40
        Top = 165
        Width = 23
        Height = 13
        Caption = 'Data'
      end
      object LkpCargo: TDBLookupComboBox
        Left = 40
        Top = 43
        Width = 368
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = DtsCargos
        NullValueKey = 16462
        TabOrder = 0
      end
      object LkpFuncionario: TDBLookupComboBox
        Left = 40
        Top = 93
        Width = 368
        Height = 21
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = DtsFuncionarios
        NullValueKey = 16462
        TabOrder = 1
      end
      object EdtPercentual: TEdit
        Left = 40
        Top = 138
        Width = 120
        Height = 21
        TabOrder = 2
      end
      object EdtDataRef: TMaskEdit
        Left = 40
        Top = 184
        Width = 118
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 3
        Text = '  /  /    '
      end
      object MovimentoSalarioAdicionarBtn: TButton
        Left = 40
        Top = 242
        Width = 100
        Height = 40
        Caption = 'Adicionar'
        TabOrder = 4
        OnClick = MovimentoSalarioAdicionarBtnClick
      end
    end
  end
  object DtsCargos: TDataSource
    DataSet = QueryCargos
    Left = 504
    Top = 27
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'select * from tb_cargo')
    Left = 544
    Top = 27
  end
  object QueryFuncionarios: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_FUNCIONARIO ORDER BY CODIGO ASC')
    Left = 504
    Top = 75
  end
  object DtsFuncionarios: TDataSource
    DataSet = QueryFuncionarios
    Left = 544
    Top = 75
  end
  object QueryAuxiliar: TFDQuery
    Connection = DM.Connection
    Left = 504
    Top = 120
  end
  object QueryFuncionariosSelecionados: TFDQuery
    Connection = DM.Connection
    Left = 544
    Top = 120
  end
  object QueryAxlSal: TFDQuery
    AfterOpen = QueryAxlSalAfterOpen
    Connection = DM.Connection
    Left = 428
    Top = 32
  end
  object DtsAxlSal: TDataSource
    DataSet = QueryAxlSal
    Left = 368
    Top = 32
  end
end
