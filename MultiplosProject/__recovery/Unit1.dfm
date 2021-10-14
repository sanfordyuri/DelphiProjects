object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Multiplos'
  ClientHeight = 457
  ClientWidth = 447
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 311
    Height = 40
    Caption = 'Sistema de Multiplos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -35
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 54
    Width = 405
    Height = 21
    Caption = 'Escolha at'#233' onde voc'#234' quer achar os multiplos de 3 e 5'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 86
    Width = 77
    Height = 17
    Caption = 'At'#233': Ex:. 100'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 160
    Top = 86
    Width = 56
    Height = 17
    Caption = 'Multiplos:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 246
    Top = 86
    Width = 32
    Height = 17
    Caption = 'De 3:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 310
    Top = 86
    Width = 32
    Height = 17
    Caption = 'De 5:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 367
    Top = 86
    Width = 54
    Height = 17
    Caption = 'De 5 e 3:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object counterThree: TLabel
    Left = 246
    Top = 109
    Width = 32
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object counterFive: TLabel
    Left = 310
    Top = 109
    Width = 32
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object counterFT: TLabel
    Left = 367
    Top = 109
    Width = 54
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object untilValueEdit: TEdit
    Left = 16
    Top = 105
    Width = 121
    Height = 29
    Hint = '100'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object allMultipliesMemo: TMemo
    Left = 16
    Top = 140
    Width = 405
    Height = 221
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object iniciarButton: TButton
    Left = 16
    Top = 384
    Width = 405
    Height = 41
    Caption = 'INICIAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = iniciarButtonClick
  end
end
