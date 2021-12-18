object TCadastroInss: TTCadastroInss
  Left = 0
  Top = 0
  Caption = 'TCadastroInss'
  ClientHeight = 201
  ClientWidth = 615
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
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 246
    Height = 25
    Caption = 'Al'#237'quotas do INSS 2021'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StrGridInss: TStringGrid
    Left = 0
    Top = 72
    Width = 633
    Height = 129
    ColCount = 2
    DefaultColWidth = 320
    DefaultColAlignment = taCenter
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    RowHeights = (
      24
      24
      24
      24
      24)
  end
end
