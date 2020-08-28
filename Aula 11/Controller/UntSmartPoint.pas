unit UntSmartPoint;

interface

uses UntFreeTheValue;

type
  TSmartPoint<T: class, constructor> = record
  strict private
    FValue: T;
    FFreeTheValue: IInterface;
    function GetValue: T;
  public
    class operator Implicit(smart: TSmartPoint<T>): T;
    class operator Implicit(AValue: T): TSmartPoint<T>;

    constructor Create(AValue: T);
    property Value: T Read GetValue;
  end;

implementation

{ TSmartPoint<T> }

constructor TSmartPoint<T>.Create(AValue: T);
begin
   FValue := AValue;
   FFreeTheValue := TFreeTheValue.Create(AValue);
end;

function TSmartPoint<T>.GetValue: T;
begin
   if not Assigned(FFreeTheValue) then
      Self := TSmartPoint<T>.Create(T.Create);

   Result := FValue;
end;

class operator TSmartPoint<T>.Implicit(smart: TSmartPoint<T>): T;
begin
   Result := smart.Value;
end;

class operator TSmartPoint<T>.Implicit(AValue: T): TSmartPoint<T>;
begin
   Result := TSmartPoint<T>.Create(AValue);
end;

end.
