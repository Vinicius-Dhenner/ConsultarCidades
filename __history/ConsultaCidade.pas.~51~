  unit ConsultaCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.JSON, System.IOUtils;

type
  TFormHome = class(TForm)
    cbbConsultState: TComboBox;
    cbbConsultCity: TComboBox;
    lblTitulo: TLabel;
    mmo: TMemo;
    btn1: TButton;
    function readAPI ( pathAPI : String ) : string;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;
var
  FormHome: TFormHome;

implementation

{$R *.dfm}

{ FUNCOES DIVERSAS }

function TFormHome.readAPI ( pathAPI : String ) : string;
var
  json : string;
begin
  json := TFile.ReadAllText( pathAPI, TEncoding.UTF8);
  Result := json;
end;

{==============}

{ COMPONENTS }

procedure TFormHome.btn1Click(Sender: TObject);
begin
  if FileExists('./API.json') then
  mmo.Lines.Add(readAPI('./API.json'))
else
  ShowMessage('Arquivo não encontrado');
end;


{==========}

{ TFormHome }

end.
