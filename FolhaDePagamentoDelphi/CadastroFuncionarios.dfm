object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 403
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 29
    Width = 132
    Height = 16
    Caption = 'C'#243'digo do Funcion'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 109
    Width = 38
    Height = 16
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 320
    Top = 109
    Width = 119
    Height = 16
    Caption = 'Data de Nascimento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 173
    Width = 100
    Height = 16
    Caption = 'C'#243'digo do Cargo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 320
    Top = 173
    Width = 49
    Height = 16
    Caption = 'Contato:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 40
    Top = 237
    Width = 36
    Height = 16
    Caption = 'Email:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object codigoFuncionarioEdt: TEdit
    Left = 40
    Top = 51
    Width = 132
    Height = 24
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '1'
  end
  object nomeFuncionarioEdt: TEdit
    Left = 40
    Top = 131
    Width = 201
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'YURI RODRIGUES SANFORD'
  end
  object codigoCargoEdt: TEdit
    Left = 40
    Top = 195
    Width = 132
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = '1'
  end
  object emailFuncionarioEdt: TEdit
    Left = 40
    Top = 259
    Width = 132
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'yurisanford@fortestecnologia.com'
  end
  object radioGroupStatus: TRadioGroup
    Left = 288
    Top = 237
    Width = 185
    Height = 60
    Columns = 2
    ItemIndex = 1
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 4
  end
  object SalvarBtn: TButton
    Left = 40
    Top = 336
    Width = 132
    Height = 33
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = SalvarBtnClick
  end
  object nascimentoEdt: TEdit
    Left = 320
    Top = 131
    Width = 119
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '17/05/2002'
  end
  object contatoEdt: TEdit
    Left = 320
    Top = 195
    Width = 119
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = '(85) 986002685'
  end
  object DataSource1: TDataSource
    Left = 448
    Top = 8
  end
  object BindSourceTB_FUNCIONARIO: TBindSourceDB
    DataSet = FDTableTB_FUNCIONARIO
    ScopeMappings = <>
    Left = 416
    Top = 8
  end
  object FDTableTB_FUNCIONARIO: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = DataModule2.Connection
    TableName = 'TB_FUNCIONARIO'
    Left = 480
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 380
    Top = 13
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_FUNCIONARIO
      FieldName = 'CODIGO'
      Control = codigoFuncionarioEdt
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_FUNCIONARIO
      FieldName = 'NOME'
      Control = nomeFuncionarioEdt
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_FUNCIONARIO
      FieldName = 'CARGO'
      Control = codigoCargoEdt
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_FUNCIONARIO
      FieldName = 'EMAIL'
      Control = emailFuncionarioEdt
      Track = True
    end
    object LinkPropertyToFieldItemIndex: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_FUNCIONARIO
      FieldName = 'STATUS'
      Component = radioGroupStatus
      ComponentProperty = 'ItemIndex'
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_FUNCIONARIO
      FieldName = 'NASCIMENTO'
      Control = nascimentoEdt
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_FUNCIONARIO
      FieldName = 'CONTATO'
      Control = contatoEdt
      Track = True
    end
  end
end
