unit UntUtils;

interface

type
  TProduto = class
  private
    FDescricao: String;
    procedure SetDescricao(const Value: String);
  public
    constructor Create();
    property Descricao: String read FDescricao write SetDescricao;
  end;

  TUtils = class
    class function IIF<T>(Condition: Boolean; T1, T2: T): T;
  end;

implementation

{ TUtils }

class function TUtils.IIF<T>(Condition: Boolean; T1, T2: T): T;
begin
   if Condition then
      result := T1
   else
      Result := t2;
end;

{ TProduto }

constructor TProduto.Create;
begin
   FDescricao := 'Produto Genérico';
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

end.
