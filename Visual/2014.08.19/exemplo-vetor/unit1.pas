unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  vetor:array[1..5] of integer;  //<-- Vetor
  //vetor:array[1..2][1..2] of integer; <-- Matriz
  i:integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  for i:=1 to 5 do
  begin
    vetor[i]:=StrToInt(InputBox('Digite um número','Entrada','0'));
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label1.Caption:=IntToStr(vetor[3]);
end;

end.

