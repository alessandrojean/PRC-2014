unit tabufor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFrmListaTabuada }

  TFrmListaTabuada = class(TForm)
    BtnExibir: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnFechar: TBitBtn;
    ListBox1: TListBox;
    txtnumero: TEdit;
    Label1: TLabel;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExibirClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmListaTabuada: TFrmListaTabuada;
  a,b,c:Integer;
  n1,n2,n3:String;

implementation

{$R *.lfm}

{ TFrmListaTabuada }

procedure TFrmListaTabuada.BtnExibirClick(Sender: TObject);
begin
   a:=StrToInt(txtnumero.Text);
   for b:=1 to 10 do
   begin
     c:=a*b;
     Str(a,n1);
     Str(b,n2);
     Str(c,n3);
     ListBox1.Items.Add(n1+' X '+n2+' = '+n3);
   end;
end;

procedure TFrmListaTabuada.BtnFecharClick(Sender: TObject);
begin
  FrmListaTabuada.Close;
end;

procedure TFrmListaTabuada.BtnCancelarClick(Sender: TObject);
begin
     txtnumero.Clear;
     ListBox1.Clear;
     txtnumero.SetFocus;
end;

end.

