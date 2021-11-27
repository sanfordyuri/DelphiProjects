object TCadastroEvento: TTCadastroEvento
  Left = 0
  Top = 0
  Caption = 'TCadastroEvento'
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 609
    Height = 465
    ActivePage = Registro
    TabOrder = 0
    OnChange = PageControl1Change
    object Eventos: TTabSheet
      Caption = 'Eventos'
      object DBGrid1: TDBGrid
        Left = -4
        Top = 0
        Width = 605
        Height = 370
        DataSource = DtsEventos
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
      end
      object addEventoBtn: TButton
        Left = 19
        Top = 386
        Width = 100
        Height = 40
        Caption = 'Adicionar '
        TabOrder = 1
        OnClick = addEventoBtnClick
      end
      object removeEventobtn: TButton
        Left = 133
        Top = 385
        Width = 100
        Height = 41
        Caption = 'Remover'
        TabOrder = 2
        OnClick = removeEventobtnClick
      end
      object EventoSalvarBtn: TButton
        Left = 490
        Top = 385
        Width = 100
        Height = 41
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = EventoSalvarBtnClick
      end
    end
    object Registro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 32
        Top = 72
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 112
        Width = 59
        Height = 13
        Caption = 'DESCRICAO'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 88
        Width = 150
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsEventos
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 128
        Width = 150
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = DtsEventos
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 32
        Top = 168
        Width = 185
        Height = 73
        Caption = 'Tipo do Evento'
        Columns = 2
        DataField = 'TIPO'
        DataSource = DtsEventos
        Items.Strings = (
          'Desconto'
          'Acr'#233'scimo')
        TabOrder = 2
        Values.Strings = (
          '0'
          '1')
      end
      object salvarEventoRegisBtn: TButton
        Left = 32
        Top = 296
        Width = 105
        Height = 33
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = salvarEventoRegisBtnClick
      end
      object cancelarEventoRegisBtn: TButton
        Left = 168
        Top = 296
        Width = 105
        Height = 33
        Caption = 'Cancelar'
        TabOrder = 4
        OnClick = cancelarEventoRegisBtnClick
      end
    end
  end
  object QueryEventos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_EVENTOS ORDER BY CODIGO ASC')
    Left = 492
    Top = 56
    object QueryEventosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryEventosDESCRICAO: TStringField
      DisplayWidth = 30
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QueryEventosTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DtsEventos: TDataSource
    DataSet = QueryEventos
    Left = 540
    Top = 56
  end
end
