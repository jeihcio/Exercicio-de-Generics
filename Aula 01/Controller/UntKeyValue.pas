unit UntKeyValue;

interface

type
  TKeyValue<T> = class
  private
    FKey: String;
    FValue: T;
  public
    property Key: String read FKey write FKey;
    property Value: T read FValue write FValue;
  end;

implementation

end.
