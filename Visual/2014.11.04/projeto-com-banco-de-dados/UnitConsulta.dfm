object FrmConsulta: TFrmConsulta
  Left = 680
  Top = 324
  Width = 611
  Height = 331
  Caption = 'Consulta'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 56
    Width = 577
    Height = 145
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 16
    Width = 430
    Height = 33
    DataSource = DataSource1
    TabOrder = 1
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'D:\2EETIMPRC\28102014'
    TableName = 'CadAluno.db'
    Left = 16
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 64
    Top = 16
  end
end
