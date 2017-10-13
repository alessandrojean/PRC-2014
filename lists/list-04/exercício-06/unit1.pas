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
  vetor:array[1..10] of integer;
  i:integer;
  par,impar:String;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  for i:=1 to 10 do
  begin
    vetor[i]:=StrToInt(InputBox('Entrada de dados','Digite o numero da posição '+InttoStr(i)+' do vetor','0'));
    if(vetor[i] mod 2=0) then
      par:=par+' '+IntToStr(vetor[i])
    else
      impar:=impar+' '+IntToStr(vetor[i]);
  end;

  Label1.Caption:=par;
  Label4.Caption:=impar;
  par:='';
  impar:='';
  end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Label1.Caption:='';
  Label4.Caption:='';
  par:='';
  impar:='';

end;

end.

