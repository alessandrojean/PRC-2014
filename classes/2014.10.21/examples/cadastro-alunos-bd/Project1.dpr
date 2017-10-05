program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FrmCadastro},
  Unit2 in 'Unit2.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.Run;
end.
