object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consumindo API'
  ClientHeight = 799
  ClientWidth = 453
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
    Left = 48
    Top = 29
    Width = 356
    Height = 32
    Caption = 'Consumindo API com Delphi'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -29
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 84
    Width = 209
    Height = 22
    Alignment = taCenter
    AutoSize = False
    Caption = 'Informe o CNPJ:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cnpjEdit: TEdit
    Left = 120
    Top = 112
    Width = 209
    Height = 29
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 48
    Top = 160
    Width = 356
    Height = 473
    Lines.Strings = (
      'Nenhum dado at'#233' o momento')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object getButton: TButton
    Left = 48
    Top = 664
    Width = 356
    Height = 41
    Caption = 'BUSCAR DADOS'
    TabOrder = 2
    OnClick = getButtonClick
  end
  object clearButton: TButton
    Left = 48
    Top = 728
    Width = 356
    Height = 41
    Caption = 'LIMPAR CAMPOS'
    TabOrder = 3
    OnClick = clearButtonClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://www.receitaws.com.br/v1/cnpj'
    Params = <>
    Left = 32
    Top = 96
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 352
    Top = 112
  end
  object RESTResponse1: TRESTResponse
    Left = 408
    Top = 56
  end
end
