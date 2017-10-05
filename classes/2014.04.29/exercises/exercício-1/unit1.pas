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
    BitBtn3: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  n1,n2:integer;
  n3:Double;

implementation

{$R *.lfm}

{ TForm1 }

procedure Custo (la:Double);
begin
  Form1.Edit6.Text:= CurrToStr(la*2.895);
  Form1.Edit7.Text:= CurrToStr(la*2.02);
end;

procedure Autonomia(kmr:integer;la:double);
var
  n:Double;
begin
  n:=kmr/la;
  Form1.Edit3.Text:=IntToStr(kmr);
  Form1.Edit5.Text:=CurrToStr(n);
  if (n>=1) and (n<=5.9) then
  Form1.Edit8.Text:='Ruim'
  else
  if (n>=6) and (n<=8.9) then
  Form1.Edit8.Text:='Bom'
  else
  if (n>=9) and (n<=14.9) then
  Form1.Edit8.Text:='Satisfatório'
  else
  if(n>=15) then
  Form1.Edit8.Text:='Excelente';
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  Edit1.Text:='0';
  Edit2.Text:='0';
  Edit3.Text:='0';
  Edit4.Text:='0';
  Edit5.Text:='0';
  Edit6.Text:='0';
  Edit7.Text:='0';
  Edit8.Text:='';
  Edit1.SetFocus;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  n1:=StrToInt(Edit1.Text);
  n2:=StrToInt(Edit2.Text);
  n3:=StrToCurr(Edit4.Text);
  if (n2<n1) then begin
    ShowMessage('Km Final não pode ser inferior a Km Inicial');
    Edit2.SetFocus;
  end
  else
  if(n3>60) then begin
    ShowMessage('Litros Abastecidos não pode ultrapassar 60 litros');
    Edit4.SetFocus;
  end
  else begin
  Autonomia((n2-n1),n3);
  Custo(n3);
  end;
end;

end.

