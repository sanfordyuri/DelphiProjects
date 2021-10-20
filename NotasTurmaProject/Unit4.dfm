object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 502
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 24
    Top = 16
    Width = 402
    Height = 36
    Caption = 'Relat'#243'rio de notas da tuma X'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -32
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 48
    Top = 112
    Width = 545
    Height = 281
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 184
    Top = 424
    Width = 265
    Height = 41
    Caption = 'RETORNAR RELAT'#211'RIO'
    TabOrder = 1
    OnClick = Button1Click
  end
end
