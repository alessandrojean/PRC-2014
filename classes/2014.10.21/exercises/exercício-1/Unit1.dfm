object Form1: TForm1
  Left = 997
  Top = 273
  BorderStyle = bsSingle
  Caption = 'Exerc'#237'cio 1'
  ClientHeight = 145
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 12
    Width = 50
    Height = 13
    Caption = '1'#186' N'#250'mero'
  end
  object Label2: TLabel
    Left = 8
    Top = 36
    Width = 50
    Height = 13
    Caption = '2'#186' N'#250'mero'
  end
  object Label3: TLabel
    Left = 8
    Top = 60
    Width = 50
    Height = 13
    Caption = '3'#186' N'#250'mero'
  end
  object Label4: TLabel
    Left = 8
    Top = 84
    Width = 50
    Height = 13
    Caption = '4'#186' N'#250'mero'
  end
  object Label5: TLabel
    Left = 8
    Top = 116
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Edit1: TEdit
    Left = 72
    Top = 8
    Width = 65
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 72
    Top = 32
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 72
    Top = 56
    Width = 65
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 72
    Top = 80
    Width = 65
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 72
    Top = 112
    Width = 65
    Height = 21
    Enabled = False
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 168
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Verificar'
    TabOrder = 5
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 168
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 6
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object BitBtn3: TBitBtn
    Left = 168
    Top = 106
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 7
    OnClick = BitBtn3Click
    Kind = bkClose
  end
end
