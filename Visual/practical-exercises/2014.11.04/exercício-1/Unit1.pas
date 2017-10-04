unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    O1: TMenuItem;
    Cadastro1: TMenuItem;
    Consulta1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    procedure Cadastro1Click(Sender: TObject);
    procedure Consulta1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.Cadastro1Click(Sender: TObject);
begin
Form1.Enabled:=false;
Form2.show;
end;

procedure TForm1.Consulta1Click(Sender: TObject);
begin
Form1.Enabled:=false;
  Form3.show;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form4.Close;
end;

end.
