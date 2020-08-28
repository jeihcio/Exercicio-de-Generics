program ProjGenerics;

uses
  Vcl.Forms,
  UntPrincipal in 'View\UntPrincipal.pas' {FormGenerics},
  UntPessoa in 'Controller\UntPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormGenerics, FormGenerics);
  Application.Run;
end.
