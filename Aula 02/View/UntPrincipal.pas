unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntGenerics;

type
  TFormGenerics = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  public
  end;

var
  FormGenerics: TFormGenerics;

implementation

{$R *.dfm}

procedure TFormGenerics.Button1Click(Sender: TObject);
var
  aux1: TMeuGenerico;
  aux2: TMeuGenerico;
  aux3: array [0..9] of string;
  aux4: array [0..9] of string;
begin
   aux1 := aux2;
   // aux2 := aux3;
end;

procedure TFormGenerics.Button2Click(Sender: TObject);
var
  aux1: TMeuArrayGenerico<String>;
  aux2: TMeuArrayGenerico<String>;
  aux3: TMeuGenericoA;
  aux4: TMeuGenericoA;
begin
   aux1 := aux3;
end;

end.
