object FrmPrincipal: TFrmPrincipal
  Left = 236
  Top = 124
  Width = 544
  Height = 375
  Caption = 'Principal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 104
    Top = 88
    object Programas1: TMenuItem
      Caption = '&Programas'
      object Cadastro1: TMenuItem
        Caption = 'Cadastro de Alunos'
        ShortCut = 16451
        OnClick = Cadastro1Click
      end
      object Consultadedados1: TMenuItem
        Caption = 'Consulta de dados'
        ShortCut = 49219
        OnClick = Consultadedados1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SairdoPrograma1: TMenuItem
        Caption = 'Sair do Programa'
        OnClick = SairdoPrograma1Click
      end
    end
  end
end
