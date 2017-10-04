unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btAdicionaItem: TButton;
    btContar: TButton;
    btRemoveItem: TButton;
    btRemoveTudo: TButton;
    btFecha: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    ListBox1: TListBox;
    procedure btAdicionaItemClick(Sender: TObject);
    procedure btContarClick(Sender: TObject);
    procedure btFechaClick(Sender: TObject);
    procedure btRemoveItemClick(Sender: TObject);
    procedure btRemoveTudoClick(Sender: TObject);
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

procedure TForm1.btAdicionaItemClick(Sender: TObject);
begin
  ListBox1.Items.Add(Edit1.Text);
  Edit1.Clear;
  Edit1.SetFocus;
end;

procedure TForm1.btContarClick(Sender: TObject);
var
  n:integer;
begin
  n:=ListBox1.Count;
  ShowMessage('A lista tem '+IntToStr(n)+' itens');
end;

procedure TForm1.btFechaClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.btRemoveItemClick(Sender: TObject);
var
  i:integer;
begin
  i:=ListBox1.ItemIndex;
  if (i<>-1) then
  ListBox1.Items.Delete(i)
  else
    ShowMessage('Seleciona o Item fdp, acha que eu vou adivinhar?');

end;

procedure TForm1.btRemoveTudoClick(Sender: TObject);
begin
  ListBox1.Clear;
end;

end.

