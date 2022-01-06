object Principal: TPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 419
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object LblCodigo: TLabel
    Left = 40
    Top = 40
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object LblData: TLabel
    Left = 40
    Top = 101
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object LblHorasExtras: TLabel
    Left = 40
    Top = 245
    Width = 104
    Height = 13
    Caption = 'Total de Horas Extras'
  end
  object LblLog: TLabel
    Left = 288
    Top = 40
    Width = 108
    Height = 13
    Caption = 'Log do Processamento'
  end
  object EdtCodigo: TEdit
    Left = 40
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EdtData: TMaskEdit
    Left = 40
    Top = 120
    Width = 118
    Height = 21
    EditMask = '!99/00;1;_'
    MaxLength = 5
    TabOrder = 1
    Text = '  /  '
  end
  object RadioGroup: TRadioGroup
    Left = 40
    Top = 168
    Width = 185
    Height = 57
    Caption = 'Domingo ou Feriado?'
    Columns = 2
    Items.Strings = (
      'N'#227'o'
      'Sim')
    TabOrder = 2
  end
  object EdtHrsExtras: TMaskEdit
    Left = 40
    Top = 264
    Width = 81
    Height = 21
    EditMask = '!90:00;1;_'
    MaxLength = 5
    TabOrder = 3
    Text = '  :  '
  end
  object BtnProcessar: TButton
    Left = 40
    Top = 357
    Width = 137
    Height = 33
    Caption = 'Processar'
    TabOrder = 4
    OnClick = BtnProcessarClick
  end
  object MemoLog: TMemo
    Left = 288
    Top = 59
    Width = 273
    Height = 331
    TabOrder = 5
  end
  object BtnAdd: TButton
    Left = 40
    Top = 304
    Width = 137
    Height = 33
    Caption = 'Adicionar'
    TabOrder = 6
    OnClick = BtnAddClick
  end
end
