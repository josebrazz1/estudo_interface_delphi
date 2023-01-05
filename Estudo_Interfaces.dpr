program Estudo_Interfaces;

uses
  Vcl.Forms,
  UJogoForm in 'UJogoForm.pas' {FormJogo},
  UJogoInterfaces in 'UJogoInterfaces.pas',
  UJogoClasses in 'UJogoClasses.pas',
  UDispositivoInterfaces in 'UDispositivoInterfaces.pas',
  UDispositivoClasses in 'UDispositivoClasses.pas',
  UDispositivoForm in 'UDispositivoForm.pas' {FormDispositivo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormJogo, FormJogo);
  Application.Run;
end.
