unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntUtils;

type
  TFormGenerics = class(TForm)
    Button1: TButton;
    TEdit1: TEdit;
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
  aux: String;
begin
   aux := TUtils.IIF<String>(
      (TEdit1.Text <> String.Empty),
      TEdit1.Text,
      'Laranja'
   );

   ShowMessage(aux);
end;

procedure TFormGenerics.Button2Click(Sender: TObject);
var
  prod1, prod2, prod3: TProduto;
begin
   prod2 := nil;
   prod1 := TProduto.Create;
   prod1.Descricao := 'Laranja Lima';
   try
      prod3 := TUtils.IIF<TProduto>(
         Assigned(prod2),
         prod1,
         TProduto.Create()
      );
      try
         ShowMessage(prod3.Descricao);
      finally
         FreeAndNil(prod3);
      end;
   finally
      if not prod1.Descricao.IsEmpty Then
         prod1.Free;
   end;
end;

end.
