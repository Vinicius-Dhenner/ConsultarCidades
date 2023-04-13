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
    btn1: TButton;
    function readAPI ( pathAPI : String ) : string;
    procedure manipulateAPI ( pathAPI : String );
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

function TFormHome.readAPI ( pathAPI : String ) : string;  { FUNCAO PARA ABRIR API E RETORNAR SEUS VALORES }
var
  json : string;
begin
  json := TFile.ReadAllText( pathAPI, TEncoding.UTF8); //atribui o conteudo do arquivo para a variavel
  Result := json;
end;

procedure TFormHome.manipulateAPI ( pathAPI : String );
var
  arrayPED : TJSONArray;
begin
  arrayPED := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(readAPI( pathAPI )), 0 ) as TJSONArray; //ATRIBUI O JSON AO arrayPED usando o JSONOBJECT, o TENCODING CUIDA DA FORMATAÇÃO
  showMessage ( arrayPED.Get(0).GetValue<Integer>('id').ToString ); //EXIBINDO O PRIMEIRO ELEMENTO, O INTEGER EH O VALOR RETORNADO
end;

{==============}

{ COMPONENTS }

procedure TFormHome.btn1Click(Sender: TObject);
begin
  manipulateAPI('./API.json');
end;

{==========}

{ TFormHome }

end.
