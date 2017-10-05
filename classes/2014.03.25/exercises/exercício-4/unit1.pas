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
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a,b,c: integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  a:=StrToInt(Edit1.Text);
  b:=StrToInt(Edit2.Text);
  c:=StrToInt(Edit3.Text);

  if ((a+b)<c) or ((a+c)<b) or ((b+c)<a) then
  ListBox1.Items.Add('Impossível formar um triângulo')
  else
  if (a=b) and (b=c) then begin
    ListBox1.Items.Add('Triângulo equilátero');
    ListBox1.Items.Add('Lado A: '+IntToStr(a));
    ListBox1.Items.Add('Lado B: '+IntToStr(b));
    ListBox1.Items.Add('Lado C: '+IntToStr(c));
  end
  else
  if (a=b) or (b=c) or (c=a) then begin
    ListBox1.Items.Add('Triângulo isósceles');
    ListBox1.Items.Add('Lado A: '+IntToStr(a));
    ListBox1.Items.Add('Lado B: '+IntToStr(b));
    ListBox1.Items.Add('Lado C: '+IntToStr(c));

     end
  else begin
    ListBox1.Items.Add('Triângulo Escaleno');
    ListBox1.Items.Add('Lado A: '+IntToStr(a));
    ListBox1.Items.Add('Lado B: '+IntToStr(b));
    ListBox1.Items.Add('Lado C: '+IntToStr(c));
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  ListBox1.Clear;
  Edit1.SetFocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.Close;
end;

end.

