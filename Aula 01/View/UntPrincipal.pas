unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UntKeyValue;

type
  TFormGenerics = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
  public
  end;

var
  FormGenerics: TFormGenerics;

implementation

{$R *.dfm}

procedure TFormGenerics.Button1Click(Sender: TObject);
var
  KV: TKeyValue<TForm>;
begin
   KV := TKeyValue<TForm>.Create();
   try
      KV.Key := 'F1';
      KV.Value := self;

      ShowMessage(KV.Key + ' - ' + KV.Value.Name);
   finally
      KV.Free;
   end;
end;

procedure TFormGenerics.Button2Click(Sender: TObject);
var
  KV: TKeyValue<TButton>;
begin
   KV := TKeyValue<TButton>.Create();
   try
      KV.Key := 'F2';
      KV.Value := Sender as TButton;

      ShowMessage(KV.Key + ' - ' + KV.Value.Name);
   finally
      KV.Free;
   end;
end;

procedure TFormGenerics.Button3Click(Sender: TObject);
var
  KV: TKeyValue<integer>;
begin
   KV := TKeyValue<integer>.Create();
   try
      KV.Key := 'F3';
      KV.Value := 100;

      ShowMessage(KV.Key + ' - ' + KV.Value.ToString());
   finally
      KV.Free;
   end;
end;

end.
