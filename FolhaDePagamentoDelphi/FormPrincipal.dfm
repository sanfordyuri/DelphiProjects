object TFormPrincipal: TTFormPrincipal
  Left = 0
  Top = 0
  Caption = 'TFormPrincipal'
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
      object Cargos2: TMenuItem
        Caption = 'Eventos'
      end
      object FuncionariosBtnMenu: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = FuncionariosBtnMenuClick
      end
      object Funcionrios2: TMenuItem
        Caption = '-'
      end
      object abeladeINSS1: TMenuItem
        Caption = 'Tabela de INSS'
      end
      object abeladeINSS2: TMenuItem
        Caption = 'Tabela de IRRF'
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
      end
      object Mudanadesalrios2: TMenuItem
        Caption = 'Lan'#231'ar evento para funcion'#225'rio(s)'
      end
      object Folhadepagamento1: TMenuItem
        Caption = 'Folha de pagamento'
      end
    end
    object Movimentos2: TMenuItem
      Caption = 'Relat'#243'rios'
      object Folha1: TMenuItem
        Caption = 'Folha'
      end
      object Folha2: TMenuItem
        Caption = 'Empregados'
      end
    end
    object btnSairMenu: TMenuItem
      Caption = 'Sair'
      OnClick = btnSairMenuClick
    end
  end
end
