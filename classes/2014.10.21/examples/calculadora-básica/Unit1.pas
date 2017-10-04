unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b:real;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    a:=StrToFloat(Edit1.Text);
    b:=StrToFloat(Edit2.Text);
    Edit3.Text:=FloatToStr(a+b);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    a:=StrToFloat(Edit1.Text);
    b:=StrToFloat(Edit2.Text);
    Edit3.Text:=FloatToStr(a-b);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    a:=StrToFloat(Edit1.Text);
    b:=StrToFloat(Edit2.Text);
    Edit3.Text:=FloatToStr(a*b);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    a:=StrToFloat(Edit1.Text);
    b:=StrToFloat(Edit2.Text);
    if(b=0)then
    begin
    Application.MessageBox('Erro...Divis�o por Zero!','Error',mb_iconerror+0);
    Edit1.Clear;
    Edit2.Clear;
    Edit1.setFocus;
    end
    else
    Edit3.Text:=FloatToStr(a/b);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit1.setFocus;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
Form1.Close;
end;

end.
