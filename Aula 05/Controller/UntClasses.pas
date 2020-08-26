unit UntClasses;

interface

type
  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  public
    property Nome: String read FNome write SetNome;
  end;

  TNFe<T : constructor> = class
  public
    FGeneric: T;

    constructor Create();
    function GetGeneric: T;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TNFe<T> }

constructor TNFe<T>.Create;
begin
   FGeneric := T.Create();
end;

function TNFe<T>.GetGeneric: T;
begin
   Result := FGeneric;
end;

end.
