object Form3: TForm3
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
    Left = 32
    Top = 112
    Width = 121
    Height = 31
    Alignment = taCenter
    Caption = 'Aguarde...'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 184
    Width = 387
    Height = 23
    Caption = 'Dentro de alguns instantes mostrarei as op'#231#245'es'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 408
    Top = 19
    Width = 126
    Height = 17
    Caption = 'N'#227'o feche essa tela'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 232
    Width = 139
    Height = 23
    Alignment = taCenter
    Caption = 'Tempo Restante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object timeLabel: TLabel
    AlignWithMargins = True
    Left = 96
    Top = 269
    Width = 5
    Height = 23
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 376
    Top = 88
  end
end
