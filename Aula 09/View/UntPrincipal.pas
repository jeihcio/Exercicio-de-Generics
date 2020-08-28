unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Classes, Generics.Collections,
  UntPessoa;

type
  TFormGenerics = class(TForm)
    Memo1: TMemo;
    EditCPF: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    EditNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
  private
    Lista: TDictionary<String, TPessoa>;
    procedure KeyNotify(Sender: TObject; const Item: String; Action: TCollectionNotification);
    procedure ValueNotify(Sender: TObject; const Item: TPessoa; Action: TCollectionNotification);
  public
  end;

var
  FormGenerics: TFormGenerics;

implementation

{$R *.dfm}

procedure TFormGenerics.Button10Click(Sender: TObject);
begin
   Lista.Clear;
end;

procedure TFormGenerics.Button11Click(Sender: TObject);
begin
   Lista.OnKeyNotify := KeyNotify;
end;

procedure TFormGenerics.Button12Click(Sender: TObject);
begin
   Lista.OnValueNotify := ValueNotify;
end;

procedure TFormGenerics.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
   Pessoa.Nome := EditNome.Text;
   Pessoa.CPF := EditCPF.Text;
   Lista.Add(Pessoa.CPF, Pessoa);
end;

procedure TFormGenerics.Button2Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
   if Lista.TryGetValue(EditCPF.Text, Pessoa) then
      Memo1.Lines.Add(Pessoa.Nome + ' - ' + Pessoa.CPF)
   else
      Memo1.Lines.Add('Usuário não encontrado!');
end;

procedure TFormGenerics.Button3Click(Sender: TObject);
begin
   Lista.Remove(EditCPF.Text);
end;

procedure TFormGenerics.Button4Click(Sender: TObject);
begin
   Lista.TrimExcess;
end;

procedure TFormGenerics.Button5Click(Sender: TObject);
begin
   if Lista.ContainsKey(EditCPF.Text) then
      Memo1.Lines.Add('Usuário encontrado')
   else
      Memo1.Lines.Add('Usuário não encontrado');
end;

procedure TFormGenerics.Button6Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
   Pessoa.Nome := EditNome.Text;
   Pessoa.CPF := EditCPF.Text;

   if Lista.ContainsValue(Pessoa) then
      Memo1.Lines.Add('Usuário encontrado')
   else
      Memo1.Lines.Add('Usuário não encontrado');
end;

procedure TFormGenerics.Button7Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
   Pessoa.Nome := EditNome.Text;
   Pessoa.CPF := EditCPF.Text;
   Lista.AddOrSetValue(EditCPF.Text, Pessoa);
end;

procedure TFormGenerics.Button8Click(Sender: TObject);
var
  Key: String;
begin
   for Key in Lista.Keys do
      Memo1.Lines.Add(Key);
end;

procedure TFormGenerics.Button9Click(Sender: TObject);
var
  Value: TPessoa;
begin
   for Value in Lista.Values do
      Memo1.Lines.Add(Value.Nome);
end;

procedure TFormGenerics.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Lista.Free;
end;

procedure TFormGenerics.FormCreate(Sender: TObject);
begin
   Lista := TDictionary<String, TPessoa>.Create();
end;

procedure TFormGenerics.KeyNotify(Sender: TObject; const Item: String;
  Action: TCollectionNotification);
begin
   case Action of
      cnAdded: Memo1.Lines.Add('A chave ' + Item + ' foi adicionada');
      cnRemoved: Memo1.Lines.Add('A chave ' + Item + ' foi removida'); 
      cnExtracted: Memo1.Lines.Add('A chave ' + Item + ' foi extraida'); 
   end;
end;

procedure TFormGenerics.ValueNotify(Sender: TObject; const Item: TPessoa;
  Action: TCollectionNotification);
begin
   case Action of
      cnAdded: Memo1.Lines.Add('O valor ' + Item.Nome + ' foi adicionada');
      cnRemoved: Memo1.Lines.Add('O valor ' + Item.Nome + ' foi removida'); 
      cnExtracted: Memo1.Lines.Add('O valor ' + Item.Nome + '  foi extraida'); 
   end;
end;

end.
