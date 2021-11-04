object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'Folha de pagamento'
  ClientHeight = 525
  ClientWidth = 1139
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 258
    Height = 19
    Caption = 'Sistema de folha de pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 90
    Width = 131
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
  object Label4: TLabel
    Left = 153
    Top = 38
    Width = 121
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
  object Label1: TLabel
    Left = 16
    Top = 38
    Width = 121
    Height = 16
    Alignment = taCenter
    AutoSize = False
    Caption = 'Cod do empregado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 16
    Top = 156
    Width = 1105
    Height = 353
    BevelWidth = 2
    ColCount = 9
    DefaultColWidth = 122
    FixedCols = 0
    RowCount = 20
    TabOrder = 0
  end
  object Button1: TButton
    Left = 1010
    Top = 95
    Width = 111
    Height = 38
    Caption = 'Editar'
    DragKind = dkDock
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtNome: TEdit
    Left = 16
    Top = 112
    Width = 125
    Height = 21
    TabOrder = 2
  end
  object edtCod: TEdit
    Left = 16
    Top = 60
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 893
    Top = 95
    Width = 111
    Height = 37
    Caption = 'Remover'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 776
    Top = 95
    Width = 111
    Height = 38
    Caption = 'Adicionar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object EdtSalarioB: TEdit
    Left = 153
    Top = 60
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
