unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntClasses;

type
  TFormGenerics = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
  end;

var
  FormGenerics: TFormGenerics;

implementation

{$R *.dfm}

procedure TFormGenerics.Button1Click(Sender: TObject);
begin
   TEnumUtils<TMes>.EnumToList(ComboBox1.Items);
   ComboBox1.ItemIndex := 0;
end;

procedure TFormGenerics.Button2Click(Sender: TObject);
begin
   TEnumUtils<TDias>.EnumToList(ComboBox1.Items);
   ComboBox1.ItemIndex := 0;
end;

end.
