object RelFolhasForm: TRelFolhasForm
  Left = 0
  Top = 0
  Caption = 'RelFolhasForm'
  ClientHeight = 210
  ClientWidth = 377
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
  object Label4: TLabel
    Left = 40
    Top = 21
    Width = 42
    Height = 13
    Caption = 'M'#234's/Ano'
  end
  object lblCargo: TLabel
    Left = 40
    Top = 69
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object EdtMesAno: TMaskEdit
    Left = 40
    Top = 40
    Width = 65
    Height = 21
    EditMask = '!99/0000;1; '
    MaxLength = 7
    TabOrder = 0
    Text = '  /    '
  end
  object btnVisualizar: TButton
    Left = 40
    Top = 160
    Width = 113
    Height = 25
    Caption = 'Visualizar'
    TabOrder = 1
    OnClick = btnVisualizarClick
  end
  object btnCancelar: TButton
    Left = 208
    Top = 160
    Width = 113
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
  end
  object lkpCargos: TDBLookupComboBox
    Left = 40
    Top = 88
    Width = 193
    Height = 21
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = DtsCargos
    NullValueKey = 16462
    TabOrder = 3
  end
  object QueryCargos: TFDQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT * FROM TB_CARGO ORDER BY codigo ASC')
    Left = 293
    Top = 24
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
    Left = 252
    Top = 24
  end
end
