object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 652
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
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
  object Label2: TLabel
    Left = 64
    Top = 152
    Width = 263
    Height = 31
    Caption = 'Seu saldo (Corrente):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object saldoLabel: TLabel
    Left = 64
    Top = 189
    Width = 263
    Height = 28
    Alignment = taCenter
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 136
    Top = 331
    Width = 126
    Height = 31
    Caption = 'Valor(R$):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 114
    Top = 64
    Width = 164
    Height = 31
    Caption = 'Bem vindo(a) '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object nomeDoTitularLabel: TLabel
    Left = 64
    Top = 101
    Width = 263
    Height = 31
    Alignment = taCenter
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 64
    Top = 240
    Width = 263
    Height = 31
    Caption = 'Seu saldo (Poupanca):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object saldoPoupancaLabel: TLabel
    Left = 64
    Top = 277
    Width = 263
    Height = 28
    Alignment = taCenter
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object valorEdit: TEdit
    Left = 136
    Top = 368
    Width = 126
    Height = 35
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object depositarButton: TButton
    Left = 125
    Top = 504
    Width = 153
    Height = 41
    Caption = 'DEPOSITAR'
    TabOrder = 1
    OnClick = depositarButtonClick
  end
  object sacarButton: TButton
    Left = 125
    Top = 560
    Width = 153
    Height = 41
    Caption = 'SACAR'
    TabOrder = 2
    OnClick = sacarButtonClick
  end
  object contaCP: TComboBox
    Left = 125
    Top = 437
    Width = 153
    Height = 21
    TabOrder = 3
    Text = 'Selecione o tipo de conta'
    Items.Strings = (
      'Conta Corrente'
      'Conta Poupan'#231'a')
  end
end
