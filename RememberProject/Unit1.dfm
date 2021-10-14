object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'RememberSystem'
  ClientHeight = 402
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
  object Label3: TLabel
    Left = 160
    Top = 105
    Width = 126
    Height = 17
    Caption = 'Informe uma palavra:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 352
    Top = 45
    Width = 176
    Height = 17
    Caption = 'Dica: Use uma placa de carro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clSilver
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 160
    Top = 185
    Width = 97
    Height = 17
    Caption = 'Escolha o tempo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object palavraEdit: TEdit
    AlignWithMargins = True
    Left = 160
    Top = 128
    Width = 233
    Height = 29
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object tempoComboBox: TComboBox
    Left = 160
    Top = 208
    Width = 233
    Height = 25
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Items.Strings = (
      '1 minuto(s)'
      '5 minuto(s)'
      '10 minuto(s)'
      '15 minuto(s)')
  end
  object rodarButton: TButton
    Left = 161
    Top = 312
    Width = 113
    Height = 41
    Caption = 'INICIAR'
    TabOrder = 2
    OnClick = rodarButtonClick
  end
  object Button2: TButton
    Left = 280
    Top = 312
    Width = 113
    Height = 41
    Caption = 'SUGERIR'
    TabOrder = 3
  end
end
