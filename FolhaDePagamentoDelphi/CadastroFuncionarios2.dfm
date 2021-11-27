object CadastroFuncionario: TCadastroFuncionario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Funcion'#225'rios'
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
    ActivePage = Funcionarios
    TabOrder = 0
    OnChange = PageControl1Change
    object Funcionarios: TTabSheet
      Caption = 'Funcionarios'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 9
        Width = 601
        Height = 370
        DataSource = DtsFuncionario
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
      end
      object addFuncionarioBtn: TButton
        Left = 19
        Top = 385
        Width = 100
        Height = 40
        Caption = 'Adicionar '
        TabOrder = 1
        OnClick = addFuncionarioBtnClick
      end
      object removeFuncionariobtn: TButton
        Left = 141
        Top = 386
        Width = 100
        Height = 41
        Caption = 'Remover'
        TabOrder = 2
        OnClick = removeFuncionariobtnClick
      end
      object SalvarFuncionarioBtn: TButton
        Left = 490
        Top = 385
        Width = 100
        Height = 41
        Caption = 'Salvar'
        TabOrder = 3
        OnClick = SalvarFuncionarioBtnClick
      end
    end
    object Registro: TTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      object Label1: TLabel
        Left = 32
        Top = 21
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 32
        Top = 64
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 32
        Top = 104
        Width = 66
        Height = 13
        Caption = 'NASCIMENTO'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 32
        Top = 144
        Width = 36
        Height = 13
        Caption = 'CARGO'
      end
      object Label5: TLabel
        Left = 32
        Top = 184
        Width = 49
        Height = 13
        Caption = 'CONTATO'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 32
        Top = 224
        Width = 30
        Height = 13
        Caption = 'EMAIL'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 32
        Top = 40
        Width = 49
        Height = 21
        DataField = 'CODIGO'
        DataSource = DtsFuncionario
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 32
        Top = 77
        Width = 265
        Height = 21
        DataField = 'NOME'
        DataSource = DtsFuncionario
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 32
        Top = 120
        Width = 134
        Height = 21
        DataField = 'NASCIMENTO'
        DataSource = DtsFuncionario
        TabOrder = 2
      end
      object DBEdit5: TDBEdit
        Left = 32
        Top = 197
        Width = 150
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsFuncionario
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 32
        Top = 240
        Width = 180
        Height = 21
        DataField = 'EMAIL'
        DataSource = DtsFuncionario
        TabOrder = 5
      end
      object salvarFuncionarioRegisBtn: TButton
        Left = 32
        Top = 368
        Width = 105
        Height = 33
        Caption = 'Salvar'
        TabOrder = 7
        OnClick = salvarFuncionarioRegisBtnClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 157
        Width = 161
        Height = 21
        DataField = 'CARGO'
        DataSource = DtsFuncionario
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = DtsCargos2
        TabOrder = 3
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 32
        Top = 283
        Width = 185
        Height = 54
        Caption = 'Status do Funcionario'
        Columns = 2
        DataField = 'STATUS'
        DataSource = DtsFuncionario
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 6
        Values.Strings = (
          '1'
          '0')
      end
      object cancelarFuncionarioBtn: TButton
        Left = 168
        Top = 368
        Width = 105
        Height = 33
        Caption = 'Cancelar'
        TabOrder = 8
        OnClick = cancelarFuncionarioBtnClick
      end
      object Panel1: TPanel
        Left = 232
        Top = 160
        Width = 153
        Height = 74
        BevelOuter = bvNone
        Color = clWhite
        Ctl3D = True
        ParentBackground = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 9
        Visible = False
        StyleElements = []
        object Label8: TLabel
          Left = 8
          Top = 16
          Width = 44
          Height = 13
          Caption = 'SALARIO'
          FocusControl = SalarioEdt
        end
        object SalarioEdt: TDBEdit
          Left = 8
          Top = 35
          Width = 134
          Height = 21
          DataField = 'SALARIO'
          DataSource = DtsSalario
          TabOrder = 0
        end
      end
      object DBGrid2: TDBGrid
        Left = 232
        Top = 240
        Width = 289
        Height = 97
        DataSource = DtsSalario
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 10
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object DtsFuncionario: TDataSource
    DataSet = QueryFuncionario
    Left = 508
    Top = 72
  end
  object QueryFuncionario: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_FUNCIONARIO ORDER BY codigo ASC')
    Left = 564
    Top = 72
    object QueryFuncionarioCODIGO: TIntegerField
      DisplayWidth = 1
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryFuncionarioNOME: TStringField
      DisplayWidth = 25
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryFuncionarioSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QueryFuncionarioNASCIMENTO: TSQLTimeStampField
      DisplayWidth = 10
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object QueryFuncionarioNOME_CARGO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME CARGO'
      LookupDataSet = QueryCargos2
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CARGO'
      Lookup = True
    end
    object QueryFuncionarioCONTATO: TStringField
      DisplayWidth = 15
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Required = True
      EditMask = '!\(99\) 00000-0000;1;_'
      Size = 100
    end
    object QueryFuncionarioEMAIL: TStringField
      DisplayWidth = 25
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object QueryFuncionarioCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Visible = False
    end
  end
  object DtsCargos2: TDataSource
    DataSet = QueryCargos2
    Left = 508
    Top = 32
  end
  object QueryCargos2: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_CARGO ORDER BY codigo ASC')
    Left = 564
    Top = 32
    object QueryCargos2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryCargos2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object QuerySalario: TFDQuery
    IndexFieldNames = 'FUNCIONARIO'
    MasterSource = DtsFuncionario
    MasterFields = 'CODIGO'
    DetailFields = 'FUNCIONARIO'
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_SALARIOS ORDER BY DATA ASC')
    Left = 564
    Top = 128
    object QuerySalarioFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
      Visible = False
    end
    object QuerySalarioSALARIO: TSingleField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Required = True
    end
    object QuerySalarioDATA: TSQLTimeStampField
      FieldName = 'DATA'
      KeyFields = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
  end
  object DtsSalario: TDataSource
    DataSet = QuerySalario
    Left = 508
    Top = 128
  end
end
