unit UDispositivoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles;

type
  TFormDispositivo = class(TForm)

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDispositivo: TFormDispositivo;

implementation

{$R *.dfm}

{procedure TFormDispositivo.FormCreate(Sender: TObject);
var
  dispositivos : TIniFile;
  nome : String;
  memRam : Integer;
  memVideo : Integer;
  espacoDisco : Integer;
begin
  dispositivos := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Dispositivos.ini');

  nome := dispositivos.ReadString('PC1','nome','');
  memRam := dispositivos.ReadInteger('PC1','memRam',0);
  memVideo := dispositivos.ReadInteger('PC1','memVideo',0);
  espacoDisco := dispositivos.ReadInteger('PC1','espacoDisco',0);

  ShowMessage(nome + #13#10 +
              IntToStr(memRam) + #13#10 +
              IntToStr(memVideo) + #13#10 +
              IntToStr(espacoDisco));


  FreeAndNil(dispositivos);
end;}

end.
