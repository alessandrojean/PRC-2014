object Form1: TForm1
  Left = 1087
  Top = 401
  BorderStyle = bsSingle
  Caption = 'Calculadora B'#225'sica'
  ClientHeight = 113
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 85
    Height = 20
    Caption = '1'#186' N'#250'mero'
  end
  object Label2: TLabel
    Left = 8
    Top = 43
    Width = 85
    Height = 20
    Caption = '2'#186' N'#250'mero'
  end
  object Label3: TLabel
    Left = 8
    Top = 75
    Width = 83
    Height = 20
    Caption = 'Resultado'
  end
  object Edit1: TEdit
    Left = 96
    Top = 8
    Width = 65
    Height = 28
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 40
    Width = 65
    Height = 28
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 96
    Top = 72
    Width = 65
    Height = 28
    Enabled = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 184
    Top = 8
    Width = 33
    Height = 33
    Caption = '+'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 235
    Top = 8
    Width = 33
    Height = 33
    Caption = '-'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 184
    Top = 64
    Width = 33
    Height = 33
    Caption = 'x'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 235
    Top = 64
    Width = 33
    Height = 33
    Caption = '/'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 288
    Top = 8
    Width = 33
    Height = 33
    Caption = 'c'
    TabOrder = 7
    OnClick = Button5Click
  end
  object BitBtn1: TBitBtn
    Left = 289
    Top = 64
    Width = 33
    Height = 33
    TabOrder = 8
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
end
