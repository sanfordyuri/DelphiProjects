object CadastroCargos: TCadastroCargos
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cargos'
  ClientHeight = 463
  ClientWidth = 607
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
  object PgControl: TPageControl
    Left = -2
    Top = 0
    Width = 609
    Height = 465
    ActivePage = Cargos
    TabOrder = 0
    OnChange = PgControlChange
    object Cargos: TTabSheet
      Caption = 'Cargos'
      object GridCargos: TDBGrid
        Left = 0
        Top = 0
        Width = 598
        Height = 370
        DataSource = DtsCargos
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = GridCargosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end>
      end
      object btnAddCargo: TButton
        Left = 19
        Top = 386
        Width = 100
        Height = 40
        Caption = 'Adicionar '
        TabOrder = 1
        OnClick = btnAddCargoClick
      end
      object btnRemoverCargo: TButton
        Left = 125
        Top = 393
        Width = 100
        Height = 41
        Caption = 'Remover'
        TabOrder = 2
        OnClick = btnRemoverCargoClick
      end
      object btnSalvarCargo: TButton
        Left = 490
        Top = 385
        Width = 100
        Height = 41
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = btnSalvarCargoClick
      end
    end
    object Registro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object lblCodigo: TLabel
        Left = 27
        Top = 24
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = edtCodigo
      end
      object lblNome: TLabel
        Left = 27
        Top = 77
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = edtNome
      end
      object edtCodigo: TDBEdit
        Left = 27
        Top = 40
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsCargos
        Enabled = False
        TabOrder = 0
      end
      object edtNome: TDBEdit
        Left = 27
        Top = 96
        Width = 198
        Height = 21
        DataField = 'NOME'
        DataSource = DtsCargos
        TabOrder = 1
      end
      object btnSalvarRegistro: TButton
        Left = 27
        Top = 150
        Width = 100
        Height = 39
        Caption = 'Salvar'
        TabOrder = 2
        OnClick = btnSalvarRegistroClick
      end
      object btnCancelarRegistro: TButton
        Left = 150
        Top = 150
        Width = 100
        Height = 39
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = btnCancelarRegistroClick
      end
    end
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_CARGO ORDER BY codigo ASC')
    Left = 520
    Top = 256
    object QueryCargosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCargosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object DtsCargos: TDataSource
    DataSet = QueryCargos
    Left = 472
    Top = 256
  end
end
