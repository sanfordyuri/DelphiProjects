object CadastroIrrf: TCadastroIrrf
  Left = 0
  Top = 0
  Caption = 'CadastroIrrf'
  ClientHeight = 223
  ClientWidth = 640
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
    Width = 401
    Height = 25
    Caption = 'Tabela de IRRF de 04/2015 a 11/2021'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StrGridIrrf: TStringGrid
    Left = -18
    Top = 72
    Width = 659
    Height = 193
    ColCount = 3
    DefaultColWidth = 220
    DefaultColAlignment = taCenter
    RowCount = 6
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
      24
      24)
  end
end
