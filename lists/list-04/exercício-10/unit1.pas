unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Buttons,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  vetor:array[1..20] of integer;
  i:integer;
  par,quecinco:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  for i:=1 to 20 do
  begin
    vetor[i]:=StrToInt(InputBox('Entrada de dados','Digite o numero da posição '+InttoStr(i)+' do vetor','0'));
    if(vetor[i] mod 2=0) then
      begin
      par:=par+1;
      end;
    if(vetor[i] mod 5=0) then
      begin
      quecinco:=quecinco+1;
      end;

  end;

  Label1.Caption:=IntToStr(par);
  Label4.Caption:=IntToStr(quecinco);
  par:=0;
  quecinco:=0;
  end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Label1.Caption:='';
  Label4.Caption:='';
  par:=0;
  quecinco:=0;
end;

end.

