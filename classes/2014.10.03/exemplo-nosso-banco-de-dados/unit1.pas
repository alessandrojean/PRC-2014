unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql50conn, mysql51conn, sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, StdCtrls, DBGrids, DbCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    source: TDatasource;
    edt_nome: TEdit;
    Label1: TLabel;
    conecta: TMySQL51Connection;
    query: TSQLQuery;
    trans: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

  procedure inserir_listbox();
begin
     Form1.ListBox1.Clear;
  Form1.query.SQL.Text:='select * from alunos';
  Form1.query.Open;
  while not Form1.query.Eof do
begin
Form1.ListBox1.Items.Add(Form1.query.FieldByName('nome').AsString);
Form1.query.Next;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
      inserir_listbox();
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  sql:string;
begin
  sql:='insert into alunos (nome) values ("'+edt_nome.Text+'");';
  query.Close;
  query.SQL.Text:=sql;
  query.ExecSQL;
  inserir_listbox();
  edt_nome.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  codigo:string;
begin
  query.Close;
  query.SQL.Text:='select * from alunos where nome="'+ListBox1.GetSelectedText+'";';
  query.Open;
  codigo:=query.FieldByName('codigo').AsString;
  query.Close;
  query.SQL.Text:='delete from alunos where codigo='+codigo+';';
  query.ExecSQL;
  query.Close;
  inserir_listbox();
end;



end.

