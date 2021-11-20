object Form3: TForm3
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 609
    Height = 465
    ActivePage = Registro
    TabOrder = 0
    object Funcionarios: TTabSheet
      Caption = 'Funcionarios'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 601
        Height = 370
        DataSource = DtsFuncionario
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object addFuncionarioBtn: TButton
        Left = 19
        Top = 386
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
      end
      object SalvarFuncionarioBtn: TButton
        Left = 490
        Top = 385
        Width = 100
        Height = 41
        Caption = 'Salvar'
        TabOrder = 3
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
      object Label7: TLabel
        Left = 32
        Top = 264
        Width = 38
        Height = 13
        Caption = 'STATUS'
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
        Top = 200
        Width = 150
        Height = 21
        DataField = 'CONTATO'
        DataSource = DtsFuncionario
        TabOrder = 3
      end
      object DBEdit6: TDBEdit
        Left = 32
        Top = 240
        Width = 180
        Height = 21
        DataField = 'EMAIL'
        DataSource = DtsFuncionario
        TabOrder = 4
      end
      object salvarFuncionarioRegisBtn: TButton
        Left = 32
        Top = 368
        Width = 105
        Height = 33
        Caption = 'Salvar'
        TabOrder = 5
        OnClick = salvarFuncionarioRegisBtnClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 32
        Top = 157
        Width = 145
        Height = 21
        DataField = 'CARGO'
        DataSource = DtsFuncionario
        KeyField = 'CODIGO'
        ListField = 'NOME'
        ListSource = DtsCargos2
        TabOrder = 6
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
        TabOrder = 7
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
    end
  end
  object DtsFuncionario: TDataSource
    DataSet = QueryFuncionario
    Left = 476
    Top = 112
  end
  object QueryFuncionario: TFDQuery
    Connection = DataModule2.Connection
    SQL.Strings = (
      'SELECT * FROM TB_FUNCIONARIO ORDER BY codigo ASC')
    Left = 532
    Top = 112
    object QueryFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QueryFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object QueryFuncionarioNASCIMENTO: TSQLTimeStampField
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
      Required = True
    end
    object QueryFuncionarioCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
    end
    object QueryFuncionarioCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Required = True
      Size = 100
    end
    object QueryFuncionarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
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
  end
  object DtsCargos2: TDataSource
    DataSet = QueryCargos2
    Left = 476
    Top = 72
  end
  object QueryCargos2: TFDQuery
    Connection = DataModule2.Connection
    SQL.Strings = (
      'SELECT * FROM TB_CARGO ORDER BY codigo ASC')
    Left = 532
    Top = 72
  end
end
