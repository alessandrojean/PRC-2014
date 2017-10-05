unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Programas1: TMenuItem;
    Cadastro1: TMenuItem;
    Sair1: TMenuItem;
    Sair2: TMenuItem;
    procedure Cadastro1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses Unit1;

{$R *.dfm}

procedure TFrmPrincipal.Cadastro1Click(Sender: TObject);
begin
 FrmCadastro.Show;
 FrmPrincipal.Enabled:=False
end;

procedure TFrmPrincipal.Sair2Click(Sender: TObject);
begin
  FrmPrincipal.Close;
end;

procedure TFrmPrincipal.FormClick(Sender: TObject);
begin
if(FrmCadastro.Showing=true) then
     FrmCadastro.SetFocus;
end;

end.
