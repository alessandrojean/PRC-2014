unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrmVerifica }

  TFrmVerifica = class(TForm)
    BtnVerifica: TButton;
    BtnCancelar: TButton;
    BtnSair: TButton;
    txtnumero: TEdit;
    Label1: TLabel;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnVerificaClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmVerifica: TFrmVerifica;
  n:integer;

implementation

{$R *.lfm}

{ TFrmVerifica }

procedure TFrmVerifica.BtnVerificaClick(Sender: TObject);
begin
  n:=StrToInt(txtnumero.Text);
  if(n mod 2 = 0) then
  ShowMessage('O número '+intToStr(n)+' é PAR')
  else
    ShowMessage('O número '+intToStr(n)+' é ÍMPAR');
  txtnumero.Clear;
  txtnumero.SetFocus;
end;

procedure TFrmVerifica.BtnCancelarClick(Sender: TObject);
begin
  txtnumero.Clear;
  txtnumero.SetFocus; //Passar o foco para o objeto
end;

procedure TFrmVerifica.BtnSairClick(Sender: TObject);
begin
  FrmVerifica.Close;
end;

end.

