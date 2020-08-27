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
    Button7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    Fila: TQueue<String>;
  public
  end;

var
  FormGenerics: TFormGenerics;

implementation

{$R *.dfm}

procedure TFormGenerics.Button1Click(Sender: TObject);
begin
   Fila.Enqueue(Edit1.Text);
end;

procedure TFormGenerics.Button2Click(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Dequeue)
end;

procedure TFormGenerics.Button3Click(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Extract);
end;

procedure TFormGenerics.Button4Click(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Peek);
end;

procedure TFormGenerics.Button5Click(Sender: TObject);
begin
   Fila.TrimExcess();
end;

procedure TFormGenerics.Button6Click(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Count.ToString());
end;

procedure TFormGenerics.Button7Click(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Capacity.ToString())
end;

procedure TFormGenerics.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Fila.Free;
end;

procedure TFormGenerics.FormCreate(Sender: TObject);
begin
   Fila := TQueue<String>.Create();
end;

end.
