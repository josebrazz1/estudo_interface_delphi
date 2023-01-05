unit UDispositivoInterfaces;

interface

type
  IDispositivo = interface
    ['{0FB2A576-6F1B-4435-A74A-FEF96FA3E922}']

    function GetNome : String;
    procedure SetNome(const Value : String);

    property Nome : string read GetNome write SetNome;
  end;

  IConsole = interface(IDispositivo)
    ['{4D7BA8DD-0B58-446A-958A-D40A874CCD40}']

    function GetPortatil : Boolean;
    procedure SetPortatil(const Value : Boolean);

    function GetNovaGeracao : Boolean;
    procedure SetNovaGeracao(const Value : Boolean);

    property Portatil : Boolean read GetPortatil write SetPortatil;
    property NovaGeracao : Boolean read GetNovaGeracao write SetNovaGeracao;
  end;

  IPc = interface(IDispositivo)
    ['{65EBFC34-6C43-4D55-94D4-3D46294A59EF}']

    function GetMemRam : Integer;
    procedure SetMemRam(const Value : Integer);

    function GetMemVideo : Integer;
    procedure SetMemVideo(const Value : Integer);

    function GetEspacoDisco : Integer;
    procedure SetEspacoDisco(const Value : Integer);

    property MemRam : Integer read GetMemRam write SetMemRam;
    property MemVideo : Integer read GetMemVideo write SetMemVideo;
    property EspacoDisco : Integer read GetEspacoDisco write SetEspacoDisco;
  end;

implementation

end.
