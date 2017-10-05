unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  vetor:array[1..4] of integer;
implementation

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
var
x,maior:integer;
begin
  vetor[1]:=StrToInt(Edit1.Text);
  vetor[2]:=StrToInt(Edit2.Text);
  vetor[3]:=StrToInt(Edit3.Text);
  vetor[4]:=StrToInt(Edit4.Text);
  maior:=vetor[1];
  for x:=2 to 4 do begin
    if (vetor[x]>maior) and (vetor[x]mod 2=0) then
    maior:=vetor[x];
  end;
  if (maior mod 2<>0) then begin
  Application.MessageBox('Nenhum número par','Error',mb_iconerror+0);
  end
  else
  Edit5.Text:=IntToStr(maior);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit1.SetFocus;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Form1.Close;
end;

end.