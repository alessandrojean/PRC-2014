unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TfrmFatorial }

  TfrmFatorial = class(TForm)
    btnCalcular: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    txtnumero: TEdit;
    Label1: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmFatorial: TfrmFatorial;
  n,nx,d:integer;

implementation

{$R *.lfm}

{ TfrmFatorial }

procedure TfrmFatorial.btnCalcularClick(Sender: TObject);
begin
  n:=StrToInt(txtnumero.Text);
  nx:=1;
  d:=1;

  while(d<=n) do
begin

  if (n=0) then
  nx:=1
  else
  nx:=nx*d;
  d:=d+1;
end;

  ShowMessage('O fatorial de '+IntToStr(n)+' é '+IntToStr(nx));

  txtnumero.Clear;
  txtnumero.SetFocus;
end;

procedure TfrmFatorial.btnCancelarClick(Sender: TObject);
begin
  txtnumero.Clear;
  txtnumero.SetFocus;
end;

procedure TfrmFatorial.btnSairClick(Sender: TObject);
begin
  frmFatorial.Close;
end;

end.

