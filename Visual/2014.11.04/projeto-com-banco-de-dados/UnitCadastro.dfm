object FrmCadastro: TFrmCadastro
  Left = 256
  Top = 119
  Width = 537
  Height = 441
  Caption = 'Cadastro de Alunos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Verdana'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 69
    Top = 15
    Width = 403
    Height = 45
    Caption = 'Cadastro de Alunos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 65
    Top = 15
    Width = 403
    Height = 45
    Alignment = taRightJustify
    Caption = 'Cadastro de Alunos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -37
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 40
    Top = 88
    Width = 65
    Height = 18
    Caption = 'N'#250'mero'
  end
  object Label4: TLabel
    Left = 56
    Top = 128
    Width = 48
    Height = 18
    Caption = 'Nome'
  end
  object Label5: TLabel
    Left = 40
    Top = 168
    Width = 64
    Height = 18
    Caption = '1'#170' Nota'
  end
  object Label6: TLabel
    Left = 40
    Top = 208
    Width = 64
    Height = 18
    Caption = '2'#170' Nota'
  end
  object Label7: TLabel
    Left = 56
    Top = 248
    Width = 48
    Height = 18
    Caption = 'M'#233'dia'
  end
  object Label8: TLabel
    Left = 32
    Top = 288
    Width = 70
    Height = 18
    Caption = 'Conceito'
  end
  object txtNumero: TEdit
    Left = 112
    Top = 80
    Width = 121
    Height = 26
    TabOrder = 0
  end
  object txtNome: TEdit
    Left = 112
    Top = 120
    Width = 313
    Height = 26
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object txtNota1: TEdit
    Left = 112
    Top = 160
    Width = 121
    Height = 26
    TabOrder = 2
  end
  object txtNota2: TEdit
    Left = 112
    Top = 200
    Width = 121
    Height = 26
    TabOrder = 3
  end
  object txtMedia: TEdit
    Left = 112
    Top = 240
    Width = 121
    Height = 26
    Enabled = False
    TabOrder = 4
  end
  object txtConceito: TEdit
    Left = 112
    Top = 280
    Width = 305
    Height = 26
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 5
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 320
    Width = 465
    Height = 57
    TabOrder = 6
    object BitBtn2: TBitBtn
      Left = 240
      Top = 16
      Width = 97
      Height = 33
      Caption = 'C&ancelar'
      TabOrder = 0
      Kind = bkCancel
    end
    object BitBtn3: TBitBtn
      Left = 352
      Top = 16
      Width = 97
      Height = 33
      Caption = '&Fechar'
      TabOrder = 1
      Kind = bkClose
    end
    object BtnInclui: TBitBtn
      Left = 16
      Top = 16
      Width = 97
      Height = 33
      Caption = '&Incluir'
      TabOrder = 2
      OnClick = BtnIncluiClick
      Kind = bkOK
    end
    object Button1: TButton
      Left = 128
      Top = 16
      Width = 89
      Height = 33
      Caption = '&Calcular'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 200
    object Calcular1: TMenuItem
      Caption = 'Calcular'
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar'
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 352
    Top = 200
  end
  object Table1: TTable
    DatabaseName = 'D:\2EETIMPRC\28102014'
    TableName = 'CadAluno.DB'
    Left = 392
    Top = 200
  end
end
