unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFrmFatorial }

  TFrmFatorial = class(TForm)
    BtnProcessar: TBitBtn;
    BtnCancelar: TBitBtn;
    BtnFechar: TBitBtn;
    LblSaida: TLabel;
    txtvalor: TEdit;
    Label1: TLabel;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnProcessarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmFatorial: TFrmFatorial;
  n1,fat,i:integer;
  txt:String;

implementation

{$R *.lfm}

{ TFrmFatorial }

procedure TFrmFatorial.Label1Click(Sender: TObject);
begin

end;

procedure TFrmFatorial.BtnProcessarClick(Sender: TObject);
begin
  n1:=StrToInt(txtvalor.Text);
  fat:=1;
  txt:='';
  for i:=1 to n1 do begin
    if(n1=0) then
      fat:=1
    else
      fat:=fat*i;
    if(i=n1)then
      txt:=txt+IntToStr(i)
      else
        txt:=txt+IntToStr(i)+' x ';
  end;
  LblSaida.Caption:='O fatorial de '+IntToStr(n1)+' ( '+txt+' ) é '+IntToStr(fat);
end;

procedure TFrmFatorial.BtnFecharClick(Sender: TObject);
begin
  FrmFatorial.Close;
end;

procedure TFrmFatorial.BtnCancelarClick(Sender: TObject);
begin
  txtvalor.Clear;
  txtvalor.Text:='0';
  LblSaida.Caption:='';
  txtvalor.SetFocus;
end;

end.

