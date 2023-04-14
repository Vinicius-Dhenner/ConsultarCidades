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
    function readAPI ( pathAPI : String ) : string;
    function manipulateAPI ( pathAPI : String ) : TJSONArray;
    procedure cbbConsultStateChange(Sender: TObject);
    procedure inserirCbbState ( cbb : TComboBox );
    procedure FormCreate(Sender: TObject);
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

function TFormHome.readAPI ( pathAPI : String ) : string;  { FUNCAO PARA ABRIR API E RETORNAR SEUS VALORES }
var
  json : string;
begin
  json := TFile.ReadAllText( pathAPI, TEncoding.UTF8); //atribui o conteudo do arquivo para a variavel
  Result := json;
end;


function TFormHome.manipulateAPI ( pathAPI : String ) : TJSONArray;
var
  arrayPED : TJSONArray;
begin
  arrayPED := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(readAPI( pathAPI )), 0 ) as TJSONArray; //ATRIBUI O JSON AO arrayPED usando o JSONOBJECT, o TENCODING CUIDA DA FORMATAÇÃO
  result := arrayPED;
end;


procedure TFormHome.inserirCbbState ( cbb : TComboBox );
var
  I: Integer;
  json : TJSONArray;
  jsonObj: TJSONObject;
  ufObj : TJSONObject;
begin
   json := manipulateAPI('./API.json');

end;

{==============}

{ COMPONENTS }

procedure TFormHome.FormCreate(Sender: TObject);
begin
   inserirCbbState(cbbConsultState);
end;

procedure TFormHome.cbbConsultStateChange(Sender: TObject);
begin
  //
end;

{==========}

{ TFormHome }

end.
