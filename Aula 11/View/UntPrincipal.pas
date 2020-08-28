unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  UntSmartPoint;

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
  SL: TStringList;
begin
   Sl := TStringList.Create();
   try
      SL.Add('Teste');

      ShowMessage('Total de registro: ' + IntToStr(SL.Count));
   finally
      SL.Free;
   end;
end;

procedure TFormGenerics.Button2Click(Sender: TObject);
var
  Sl: TSmartPoint<TStringList>;
begin
   Sl.Value.Add('Testando');
   ShowMessage('Total de registros: ' + IntToStr(Sl.Value.Count));
end;

Initialization
  ReportMemoryLeaksOnShutdown := true;

end.
