unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    txtmedia: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    txtquant5: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  controle: boolean;
  temp,nota,soma: double;
  quant5,quante: integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  controle:=true;
  soma:=0;
  quante:=0;
  quant5:=0;
  while (controle=true) do
  begin
     temp:=StrToCurr(InputBox('Teste','Digite a Nota do Aluno'+sLineBreak+'Digite "-1" para terminar','0'));
     if (temp=-1) then
       controle:=false
     else begin
       if (temp>10) then begin
          ShowMessage('Nota maior que 10.'+sLineBreak+'Favor tentar novamente');
          controle:=false;
       end
       else begin
       nota:=temp;
       if (nota>5) then
       quant5:=quant5+1;
       soma:=soma+nota;
       quante:=quante+1;
       end;
     end;
  end;
  if (temp<=10) then begin
  txtmedia.Text:=CurrToStr(soma/quante);
  txtquant5.Text:=CurrToStr(quant5);
  end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  soma:=0;
  quante:=0;
  txtmedia.Text:='0';
  txtquant5.Text:='0';
  soma:=0;
  quant5:=0;

end;

end.

