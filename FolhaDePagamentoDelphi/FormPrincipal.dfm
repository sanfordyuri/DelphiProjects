object TFormPrincipal: TTFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Projeto Folha de Pagamento'
  ClientHeight = 553
  ClientWidth = 836
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = Menu
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Menu: TMainMenu
    Left = 360
    Top = 152
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object CargosBtnMenu: TMenuItem
        Caption = 'Cargos'
        OnClick = CargosBtnMenuClick
      end
      object EventosBtnMenu: TMenuItem
        Caption = 'Eventos'
        OnClick = EventosBtnMenuClick
      end
      object FuncionariosBtnMenu: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = FuncionariosBtnMenuClick
      end
      object Funcionrios2: TMenuItem
        Caption = '-'
      end
      object TabeladeINSS1: TMenuItem
        Caption = 'Tabela de INSS'
        OnClick = TabeladeINSS1Click
      end
      object TabeladeIRRF: TMenuItem
        Caption = 'Tabela de IRRF'
        OnClick = TabeladeIRRFClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object N2: TMenuItem
        Caption = 'Sair'
      end
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object Mudanadesalrios1: TMenuItem
        Caption = 'Mudan'#231'a de sal'#225'rio(s)'
        OnClick = Mudanadesalrios1Click
      end
      object MovimentoEventos: TMenuItem
        Caption = 'Lan'#231'ar evento para funcion'#225'rio(s)'
        OnClick = MovimentoEventosClick
      end
      object MovumentoFolhaDePagamento: TMenuItem
        Caption = 'Folha de pagamento'
        OnClick = MovumentoFolhaDePagamentoClick
      end
    end
    object Movimentos2: TMenuItem
      Caption = 'Relat'#243'rios'
      object RelFolha: TMenuItem
        Caption = 'Folha'
        OnClick = RelFolhaClick
      end
      object RelFuncionarios: TMenuItem
        Caption = 'Empregados'
        OnClick = RelFuncionariosClick
      end
    end
    object btnSairMenu: TMenuItem
      Caption = 'Sair'
      OnClick = btnSairMenuClick
    end
  end
end
