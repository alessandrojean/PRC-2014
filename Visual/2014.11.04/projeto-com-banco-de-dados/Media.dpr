program Media;

uses
  Forms,
  UnitCadastro in 'UnitCadastro.pas' {FrmCadastro},
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitConsulta in 'UnitConsulta.pas' {FrmConsulta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmCadastro, FrmCadastro);
  Application.CreateForm(TFrmConsulta, FrmConsulta);
  Application.Run;
end.
