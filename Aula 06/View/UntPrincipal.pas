unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classes, Generics.Collections;

type
  TFormGenerics = class(TForm)
    Memo1: TMemo;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    ListaNum: TList<Integer>;
    procedure Notificacao(Sender: TObject; const Item: Integer; Action: TCollectionNotification);
  public
  end;

var
  FormGenerics: TFormGenerics;

implementation

{$R *.dfm}

procedure TFormGenerics.Button1Click(Sender: TObject);
begin
   ListaNum.Add(StrToInt(Edit1.Text));
end;

procedure TFormGenerics.Button2Click(Sender: TObject);
begin
   ListaNum.Delete(Pred(ListaNum.Count));
end;

procedure TFormGenerics.Button3Click(Sender: TObject);
var
  I: Integer;
begin
   Memo1.Lines.Clear;
   for I := 0 to Pred(ListaNum.Count) do
      Memo1.Lines.Add(ListaNum[i].ToString());
end;

procedure TFormGenerics.Button4Click(Sender: TObject);
begin
   Memo1.Lines.Clear;
   Memo1.Lines.Add(ListaNum.Capacity.ToString());
end;

procedure TFormGenerics.Button5Click(Sender: TObject);
begin
   Memo1.Lines.Clear;
   Memo1.Lines.Add(ListaNum.Count.ToString());
end;

procedure TFormGenerics.Button6Click(Sender: TObject);
begin
   ListaNum.OnNotify := Notificacao;
end;

procedure TFormGenerics.FormCreate(Sender: TObject);
begin
   ListaNum := TList<Integer>.Create();
end;

procedure TFormGenerics.Notificacao(Sender: TObject; const Item: Integer;
  Action: TCollectionNotification);
begin
   case Action of
      cnAdded: Memo1.Lines.Add('O item ' + Item.ToString() + ' adicionado');
      cnRemoved: Memo1.Lines.Add('O item ' + Item.ToString() + ' removido');
      cnExtracted: Memo1.Lines.Add('O item ' + Item.ToString() + ' extraido');
   end;
end;

end.
