unit UntQualquerCoisa;

interface

uses UntIQualquerCoisa, System.Generics.Collections;

type
  TQualquerCoisa<T> = class(TInterfacedObject, IQualquerCoisa<T>)
  private
    FValue: T;
  public
    procedure Duvida();
    procedure Add(Value: T);
    function Retorno: T;
  end;

implementation

{ TQualquerCoisa }

procedure TQualquerCoisa<T>.Add(Value: T);
begin
   FValue := Value;
end;

procedure TQualquerCoisa<T>.Duvida;
begin

end;

function TQualquerCoisa<T>.Retorno: T;
begin
   Result := FValue;
end;

end.
