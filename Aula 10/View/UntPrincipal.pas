unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntIQualquerCoisa,
  UntQualquerCoisa, System.Generics.Collections;

type
  TFormGenerics = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  FormGenerics: TFormGenerics;

implementation

{$R *.dfm}

procedure TFormGenerics.Button1Click(Sender: TObject);
var
  Aux: IQualquerCoisa<String>;
begin
   Aux := TQualquerCoisa<String>.Create();
   Aux.Add('Teste');
   ShowMessage(Aux.Retorno);
end;

end.
