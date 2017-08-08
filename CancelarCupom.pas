unit CancelarCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmCancelarCupom = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    txtChave: TMemo;
    txtXjust: TMemo;
    btnCancelarCupom: TButton;
    btnJson: TButton;
    Label6: TLabel;
    txtDhEvento: TEdit;
    Timer1: TTimer;
    procedure btnCancelarCupomClick(Sender: TObject);
    procedure inicializaComponentes(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelarCupom: TfrmCancelarCupom;
  JsonString: WideString;

implementation
   Uses Principal, json;
{$R *.dfm}

procedure TfrmCancelarCupom.btnCancelarCupomClick(Sender: TObject);
      var
          URL, Retorno: WideString ;
          jsonCancelamento, identificacao, destinatario: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
      begin
                      //JSon principal
                      jsonCancelamento :=  TJSONObject.Create;
                       jsonCancelamento.AddPair('xJust', TJSONString.Create(txtxJust.Text));
                      jsonCancelamento.AddPair('dhEvento', TJSONString.Create(txtdhEvento.Text));

                      JsonString := jsonCancelamento.ToString;
                      JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                      JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
        begin

                  JsonToSend := TMemoryStream.Create;

                  WriteStringToStream(JsonToSend, JsonString, enUTF8);
                  JsonToSend.Position := 0;

                  URL := 'http://localhost:9999/api/v1/documento/'+txtChave.Text;

            try
                  FrmPrincipal.HTTP.Request.ContentType := 'application/vnd+bematech.bnc+json';
                  FrmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  FrmPrincipal.Http.Response.ContentType :='application/json';
                  FrmPrincipal.Http.Response.CharSet := 'UTF-8';

                JsonStreamRetorno := FrmPrincipal.Http.Post(URL, JsonToSend);


                FrmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                FrmCancelarCupom.Hide;

            except on E:EIdHTTPProtocolException do
                FrmPrincipal.memoresultado.Lines.add(e.ErrorMessage);
            end;
          end;
        end;

procedure TfrmCancelarCupom.btnJsonClick(Sender: TObject);
var
          jsonCancelamento, identificacao, destinatario: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
begin
                 //JSon principal
                 jsonCancelamento :=  TJSONObject.Create;
                 jsonCancelamento.AddPair('xJust', TJSONString.Create(txtxJust.Text));
                 jsonCancelamento.AddPair('dhEvento', TJSONString.Create(txtdhEvento.Text));

                 jsonString := jsonCancelamento.ToString;

                 jsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                 jsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   jsonString;
                  frmJSon.Show;

end;

procedure TfrmCancelarCupom.inicializaComponentes(Sender: TObject);
begin
  txtChave.Text := cfe;
end;

procedure TfrmCancelarCupom.Timer1Timer(Sender: TObject);
var
  formattedDateTime : string;
begin

  txtDhEvento.Text:=formatdatetime('yyyy-mm-dd"T"hh:mm:ss'+'-03:00',now);
end;

end.
