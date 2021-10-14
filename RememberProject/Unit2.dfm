object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'RememberSystem'
  ClientHeight = 440
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 24
    Top = 45
    Width = 136
    Height = 17
    Caption = 'Desafie a sua mem'#243'ria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 209
    Height = 31
    Alignment = taCenter
    Caption = 'RememberSystem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 72
    Top = 113
    Width = 318
    Height = 23
    Caption = 'Selecione qual dessas palavras '#233' a sua:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object resultadoLabel: TLabel
    Left = 96
    Top = 249
    Width = 7
    Height = 31
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object palavrasGroup: TRadioGroup
    Left = 72
    Top = 142
    Width = 425
    Height = 65
    Columns = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    Items.Strings = (
      'UTF-8'
      'FTU-8'
      '8-FTU'
      '8-UTF')
    ParentFont = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 96
    Top = 320
    Width = 377
    Height = 41
    Caption = 'VERIFICAR'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 375
    Width = 377
    Height = 42
    Caption = 'ME DESAFIE NOVAMENTE'
    TabOrder = 2
    OnClick = Button2Click
  end
end
