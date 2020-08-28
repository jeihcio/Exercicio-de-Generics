program ProjGenerics;

uses
  Vcl.Forms,
  UntPrincipal in 'View\UntPrincipal.pas' {FormGenerics},
  UntIQualquerCoisa in 'Interfaces\UntIQualquerCoisa.pas',
  UntQualquerCoisa in 'Controller\UntQualquerCoisa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormGenerics, FormGenerics);
  Application.Run;
end.
