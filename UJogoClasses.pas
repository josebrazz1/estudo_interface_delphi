unit UJogoClasses;

interface

uses UJogoInterfaces;

type
  TDesenvolvedor = class(TInterfacedObject, IDesenvolvedor)
  private
    FNome : String;

    function GetNome : String;
    procedure SetNome(const Value : String);
  public
    property Nome : String read GetNome write SetNome;
  end;

  TGenero = class(TInterfacedObject, IGenero)
  private
    FNome : String;

    function GetNome : String;
    procedure SetNome(const Value : String);
  public
    property Nome : String read GetNome write SetNome;
  end;

  TJogo = class(TInterfacedObject, IJogo)
  private
    FNome : String;
    FDataLancamento : String;
    FDesenvolvedor : IDesenvolvedor;
    FGenero : IGenero;

    function GetNome : String;
    procedure SetNome(const Value : String);

    function GetDataLancamento : String;
    procedure SetDataLancamento(const Value : String);

    function GetDesenvolvedor : IDesenvolvedor;
    procedure SetDesenvolvedor(Value : IDesenvolvedor);

    function GetGenero : IGenero;
    procedure SetGenero(Value : IGenero);
  public
    property Nome : String read GetNome write SetNome;
    property DataLancamento :  String read GetDataLancamento write SetDataLancamento;
    property Desenvolvedor : IDesenvolvedor read GetDesenvolvedor write SetDesenvolvedor;
    property Genero : IGenero read GetGenero write SetGenero;
  end;

implementation

{ TJogo }

function TJogo.GetDataLancamento: String;
begin
  Result := Self.FDataLancamento;
end;

function TJogo.GetDesenvolvedor : IDesenvolvedor;
begin
  Result := Self.FDesenvolvedor;
end;

function TJogo.GetGenero : IGenero;
begin
  Result := Self.FGenero;
end;

function TJogo.GetNome: String;
begin
  Result := Self.FNome;
end;

procedure TJogo.SetDataLancamento(const Value: String);
begin
  Self.FDataLancamento := Value;
end;

procedure TJogo.SetDesenvolvedor(Value: IDesenvolvedor);
begin
  Self.FDesenvolvedor := Value;
end;

procedure TJogo.SetGenero(Value: IGenero);
begin
  Self.FGenero := TGenero.Create;
end;

procedure TJogo.SetNome(const Value: String);
begin
  Self.FNome := Value;
end;

{ TGenero }

function TGenero.GetNome: String;
begin
  Result := Self.FNome;
end;

procedure TGenero.SetNome(const Value: String);
begin
  Self.FNome := Value;
end;

{ TDesenvolvedor }

function TDesenvolvedor.GetNome: String;
begin
  Result := Self.FNome;
end;

procedure TDesenvolvedor.SetNome(const Value: String);
begin
  Self.FNome := Value;
end;

end.
