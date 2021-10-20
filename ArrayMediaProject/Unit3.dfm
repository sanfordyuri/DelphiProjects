object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 548
  ClientWidth = 576
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
    Top = 16
    Width = 241
    Height = 36
    Caption = 'M'#233'dia com Array'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 104
    Top = 88
    Width = 369
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 'M'#233'dia: Nenhuma m'#233'dia at'#233' o momento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 104
    Top = 128
    Width = 369
    Height = 297
    TabOrder = 0
  end
  object Button1: TButton
    Left = 104
    Top = 464
    Width = 369
    Height = 49
    Caption = 'GERAR VALOR E M'#201'DIA'
    TabOrder = 1
    OnClick = Button1Click
  end
end
