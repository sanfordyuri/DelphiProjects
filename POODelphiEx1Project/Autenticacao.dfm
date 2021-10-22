object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Form6'
  ClientHeight = 274
  ClientWidth = 400
  Color = clAppWorkSpace
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
    Width = 263
    Height = 40
    Caption = 'Sistema de Banco'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 64
    Top = 83
    Width = 271
    Height = 31
    Alignment = taCenter
    AutoSize = False
    Caption = 'Informe o seu Usu'#225'rio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object usuarioEdit: TEdit
    Left = 64
    Top = 120
    Width = 263
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object acessarButton: TButton
    Left = 64
    Top = 192
    Width = 263
    Height = 41
    Caption = 'ACESSAR'
    TabOrder = 1
    OnClick = acessarButtonClick
  end
end
