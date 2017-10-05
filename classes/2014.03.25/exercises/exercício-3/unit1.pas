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
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  f,c: double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  Edit1.Clear;
  f:=StrToCurr(Edit2.Text);
  Edit1.Text:=CurrToStr((5/9)*(f-32));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit2.Clear;
  c:=StrToCurr(Edit1.Text);
  Edit2.Text:=CurrToStr(1.8*(c+32));
end;

end.

