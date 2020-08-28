unit UntFreeTheValue;

interface

type
  TFreeTheValue = class(TInterfacedObject)
  private
    FObjectToFree: TObject;
  public
    constructor Create(AObjectToFree: TObject); reintroduce;
    destructor Destroy(); override;
  end;

implementation

{ TFreeTheValue }

constructor TFreeTheValue.Create(AObjectToFree: TObject);
begin
   FObjectToFree := AObjectToFree;
end;

destructor TFreeTheValue.Destroy;
begin
  FObjectToFree.Free;
  inherited;
end;

end.
