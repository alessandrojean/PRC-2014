unit UnitConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TFrmConsulta = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Table1: TTable;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsulta: TFrmConsulta;

implementation

{$R *.dfm}

end.
