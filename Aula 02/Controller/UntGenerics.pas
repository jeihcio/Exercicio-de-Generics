unit UntGenerics;

interface

type
  TMeuGenerico = array [0..9] of string;

  TMeuArrayGenerico<T> = class
  public
    FArray: array [0..9] of T;
  end;

  TMeuGenericoA = TMeuArrayGenerico<String>;

implementation

end.
