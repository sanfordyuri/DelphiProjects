object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Edite os dados do Empregado'
  ClientHeight = 373
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = QuandoAbrir
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 96
    Top = 82
    Width = 125
    Height = 16
    AutoSize = False
    Caption = 'Nome do empregado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 72
    Top = 24
    Width = 169
    Height = 25
    Caption = 'Edi'#231#227'o de dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 96
    Top = 146
    Width = 125
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'Sal'#225'rio bruto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 102
    Top = 210
    Width = 119
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'B'#244'nus:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 96
    Top = 104
    Width = 125
    Height = 21
    TabOrder = 0
  end
  object EdtSalario: TEdit
    Left = 96
    Top = 168
    Width = 125
    Height = 21
    TabOrder = 1
  end
  object EdtBonus: TEdit
    Left = 96
    Top = 232
    Width = 125
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 80
    Top = 288
    Width = 161
    Height = 41
    Caption = 'CONFIRMAR'
    TabOrder = 3
    OnClick = Button1Click
  end
end
