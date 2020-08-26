unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntClasses;

type
  TFormGenerics = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  public
  end;

var
  FormGenerics: TFormGenerics;

implementation

{$R *.dfm}

procedure TFormGenerics.Button1Click(Sender: TObject);
var
  Nfe: TNFe<TPessoa>;
begin
   Nfe := TNFe<TPessoa>.Create();
   try
      Nfe.FGeneric.Nome := 'Carlos';
      ShowMessage(Nfe.FGeneric.Nome);
   finally
      Nfe.Free;
   end;
end;

end.
