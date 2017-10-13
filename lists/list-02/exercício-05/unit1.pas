unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFrmDolar }

  TFrmDolar = class(TForm)
    BtnCalcular: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnSair: TBitBtn;
    lbfinal: TLabel;
    txtdolar: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtreal: TEdit;
    procedure BtnCalcularClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmDolar: TFrmDolar;
  dolar,real:double;

implementation

{$R *.lfm}

{ TFrmDolar }

procedure TFrmDolar.BtnCalcularClick(Sender: TObject);
begin
  dolar:=StrToCurr(txtdolar.Text);
  real:=StrToCurr(txtreal.Text);
  lbfinal.Caption:=('Valor final: US$'+CurrToStr(real/dolar));
end;

procedure TFrmDolar.BtnCancelarClick(Sender: TObject);
begin
  txtdolar.Clear;
  txtreal.Clear;
  lbfinal.Caption:='';
  txtdolar.SetFocus;
end;

procedure TFrmDolar.BtnSairClick(Sender: TObject);
begin

end;

end.

