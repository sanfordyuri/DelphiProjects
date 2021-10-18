object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consumindo API'
  ClientHeight = 826
  ClientWidth = 684
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
    Left = 168
    Top = 8
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
    Left = 216
    Top = 84
    Width = 284
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
    Left = 216
    Top = 112
    Width = 284
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
    Left = 24
    Top = 160
    Width = 641
    Height = 513
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    Lines.Strings = (
      'Nenhum dado at'#233' o momento')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object getButton: TButton
    Left = 168
    Top = 688
    Width = 356
    Height = 41
    Caption = 'BUSCAR DADOS'
    TabOrder = 2
    OnClick = getButtonClick
  end
  object clearButton: TButton
    Left = 168
    Top = 752
    Width = 356
    Height = 41
    Caption = 'LIMPAR CAMPOS'
    TabOrder = 3
    OnClick = clearButtonClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'https://www.receitaws.com.br/v1/cnpj'
    Params = <>
    Left = 624
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 568
    Top = 16
  end
  object RESTResponse1: TRESTResponse
    Left = 528
    Top = 16
  end
end
