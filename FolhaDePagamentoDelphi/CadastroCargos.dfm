object Cadastro: TCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro'
  ClientHeight = 148
  ClientWidth = 339
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
    Left = 32
    Top = 77
    Width = 94
    Height = 16
    Caption = 'Nome do Cargo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 17
    Width = 98
    Height = 16
    Caption = 'C'#243'digo do cargo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cargoNomeEdt: TEdit
    Left = 32
    Top = 99
    Width = 153
    Height = 24
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object salvarBtn: TButton
    Left = 232
    Top = 39
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 1
    OnClick = salvarBtnClick
  end
  object codigoCargoEdt: TEdit
    Left = 32
    Top = 39
    Width = 153
    Height = 24
    AutoSize = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DataSource1: TDataSource
    Left = 240
    Top = 104
  end
  object BindSourceTB_CARGO: TBindSourceDB
    DataSet = FDTableTB_CARGO
    ScopeMappings = <>
    Left = 264
    Top = 88
  end
  object FDTableTB_CARGO: TFDTable
    BeforePost = FDTableTB_CARGOBeforePost
    IndexFieldNames = 'CODIGO'
    UpdateOptions.AssignedValues = [uvUpdateMode]
    UpdateOptions.UpdateMode = upWhereChanged
    TableName = 'TB_CARGO'
    Left = 304
    Top = 88
    object FDTableTB_CARGOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDTableTB_CARGONOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 204
    Top = 109
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_CARGO
      FieldName = 'NOME'
      Control = cargoNomeEdt
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceTB_CARGO
      FieldName = 'CODIGO'
      Control = codigoCargoEdt
      Track = True
    end
  end
end
