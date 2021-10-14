object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 586
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 8
    Width = 269
    Height = 29
    Alignment = taCenter
    Caption = 'Sistema de parcelamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object valorLabel: TLabel
    Left = 136
    Top = 65
    Width = 59
    Height = 16
    Alignment = taCenter
    Caption = 'Valor (R$)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 132
    Width = 115
    Height = 16
    Alignment = taCenter
    Caption = 'N'#250'mero de parcelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object valorEdit: TEdit
    Left = 136
    Top = 87
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Memo: TMemo
    Left = 64
    Top = 200
    Width = 281
    Height = 249
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Nenhum valor de parcela')
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object calcularButton: TButton
    Left = 64
    Top = 472
    Width = 281
    Height = 33
    Caption = 'CALCULAR'
    TabOrder = 2
    OnClick = calcularButtonClick
  end
  object numeroDeParcelasEdit: TEdit
    Left = 136
    Top = 154
    Width = 121
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object lpButton: TButton
    Left = 64
    Top = 520
    Width = 281
    Height = 33
    Caption = 'LIMPAR CAMPOS'
    TabOrder = 4
    OnClick = lpButtonClick
  end
end
