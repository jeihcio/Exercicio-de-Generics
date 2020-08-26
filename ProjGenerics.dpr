program ProjGenerics;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {FormGenerics};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormGenerics, FormGenerics);
  Application.Run;
end.
