program Project;

uses
  Vcl.Forms,
  ConsultaCidade in 'ConsultaCidade.pas' {FormHome};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormHome, FormHome);
  Application.Run;
end.
