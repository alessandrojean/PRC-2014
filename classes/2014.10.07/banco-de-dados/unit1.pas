unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql51conn, sqldb, db, pqconnection, sqlite3conn,
  oracleconnection, IBConnection, FileUtil, TreeFilterEdit, ExtendedNotebook,
  Ipfilebroker, Forms, Controls, Graphics, Dialogs, DBGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Datasource1: TDatasource;
    DBGrid1: TDBGrid;
    Conexao: TMySQL51Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure ConexaoAfterConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  sql:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ConexaoAfterConnect(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   SQLQuery1.SQL.Text:='select * from TabAluno';
   SQLQuery1.Open;
end;

end.

