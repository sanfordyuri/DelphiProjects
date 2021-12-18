object RelFunForms: TRelFunForms
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio funcion'#225'rio'
  ClientHeight = 177
  ClientWidth = 469
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
  object lblCargo: TLabel
    Left = 80
    Top = 37
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object btnVisualizar: TButton
    Left = 80
    Top = 120
    Width = 113
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 0
    OnClick = btnVisualizarClick
  end
  object btnCancelar: TButton
    Left = 248
    Top = 120
    Width = 113
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
  end
  object lkpCargoRelfun: TDBLookupComboBox
    Left = 80
    Top = 56
    Width = 281
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DtsCargos
    NullValueKey = 16462
    TabOrder = 2
  end
  object DtsCargos: TDataSource
    DataSet = QueryCargos
    Left = 340
    Top = 8
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_CARGO ORDER BY codigo ASC')
    Left = 396
    Top = 8
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
end
