unit Fator_Refer;

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
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  N,FAT:Integer;
implementation

{$R *.lfm}

{ TForm1 }

Procedure Limpar();
begin
    Form1.Edit1.Clear;
    Form1.Label2.Caption:=' ';
    Form1.Edit1.Text:='0';
   // Form1.Edit1.SetFocus;
end;

Procedure Fatorial(X:Integer; var F:Integer);
var
  I:Integer;
  begin
      F:=1;
      for I:=1 to X do
      F:=F*I;
  end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
   N:=StrToInt(Edit1.Text);
    //N:=StrToInt(InputBox('Entrada de Dados', 'Informe um número','0'));
    Fatorial(N,FAT);
    Label2.Caption:='O Fatorial de '+IntToStr(N)+
    ' é '+IntToStr(FAT);
    Edit1.Text:=IntToStr(N); //MUDANÇA DE VARIAVEL , ORIGINAL FAT PARA N
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Limpar;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Form1.Close;
end;



end.

