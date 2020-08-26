unit UntClasses;

interface

uses
  System.Classes;

type
  TDias = (Segunda, Terca, Quarta, Quinta, Sexta, Sabado, Domingo);
  TMes = (Janeiro, Fevereiro, Marco, Abril, Maio, Junho, Julho, Agosto, Setembro, Outubro, Novembro, Dezembro);

  TEnumUtils<T> = class
    class procedure EnumToList(Value: TStrings);
  end;

implementation

uses
  System.TypInfo;

{ TEnumUtils<T> }

class procedure TEnumUtils<T>.EnumToList(Value: TStrings);
var
  nome: String;
  index: Integer;
  posicao: Integer;
begin
   Value.Clear;
   index := 0;
   repeat
      nome := GetEnumName(TypeInfo(T), index);
      posicao := GetEnumValue(TypeInfo(T), nome);

      if (posicao <> -1) then
         Value.Add(nome);

      Inc(index);
   until (posicao < 0);
end;

end.
