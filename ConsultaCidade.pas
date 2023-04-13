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
    procedure manipularAPI();
    function acessarAPI() : String;
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
function TFormHome.acessarAPI() : String; // FUNCAO QUE ACESSA O ARQUIVO DA API E ATRIBUI A UMA STRING
begin
  Result := TFile.ReadAllText(GetCurrentDir + '\API.json');
end;

procedure TFormHome.manipularAPI();
var
  arrayPed : TJSONArray;
  json : string;
  i : Integer;
begin
  try
    json := acessarAPI();
    arrayPed := TJSONObject.ParseJSONValue(TEncoding.UTF8.GetBytes(json), 0) as TJSONArray;

    for i := 0 to arrayPed.Size - 1 do
    begin
        ShowMessage(arrayPed.Get(i).GetValue<string>('nome'));
    end;

  finally
     arrayPed.DisposeOf;
  end;
end;
{==============}

{ COMPONENTS }
procedure TFormHome.btn1Click(Sender: TObject);
begin
  manipularAPI();
end;
{==========}

{ TFormHome }

end.
