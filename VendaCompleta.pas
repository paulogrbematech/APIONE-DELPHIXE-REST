unit VendaCompleta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, jpeg;


type
  TfrmVendaCompleta = class(TForm)
    txtDhemi: TMemo;
    Label1: TLabel;
    txtNumeroNota: TMemo;
    Label2: TLabel;
    btnRealizarVenda: TButton;
    btnFechar: TButton;
    Timer1: TTimer;
    txtJson: TMemo;
    btnJSon: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure btnRealizarVendaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnJSonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendaCompleta: TfrmVendaCompleta;

implementation

uses Principal;

{$R *.dfm}

procedure TfrmVendaCompleta.btnFecharClick(Sender: TObject);
begin
  frmVendaCompleta.Hide;
end;

procedure TfrmVendaCompleta.btnJSonClick(Sender: TObject);
 var

          URL, Retorno, JsonString,dataHora, tpnf: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj, bnf, identificacao:TJSONObject;

      begin
                txtJSon.Clear;
               JsonString :='{"versao": "3.10","configuracao": {"imprimir": true,"email": false},"identificacao": {"cuf": "41","cnf": "00003177","natOp": "VENDA","indPag": 0,"mod": "65",'+
'"serie": "768","nnf": " ","dhEmi": " ","tpNF": "1","idDest": 1,"tpImp": 4,"tpEmis": 1,"cdv": 8,"tpAmb": 2,"finNFe": 1,"indFinal": 1,'+
'"indPres": 1,"procEmi": 0,"verProc": "1.0.0.0","cMunFG": "4106902"},"emitente": {"cnpj": "82373077000171","endereco": {"nro": "0","uf": "PR","cep": "82640360",'+
'"fone": "4184848484","xBairro": "CABRAL","xLgr": "AVJOAOGUALBERTODASNEVES","cMun": "4106902","cPais": "1058","xPais": "BRASIL","xMun": "Curitiba"},"ie":'+
'"1018146530","crt": 3,"xNome": "BEMATECH SA","xFant": "BEMATECH SA"},"destinatario": {"cpf": "09324114107","endereco": {"nro": "842","uf": "PR","cep": "80020320",'+
'"fone": "41926598874","xBairro": "Centro","xLgr": "Marechal Deodoro","cMun": "4106902","cPais": "1058","xPais": "Brasil","xMun": "Curitiba"},"indIEDest": 9,'+
'"email": "mail@gmail.com","xNome": "NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL"},"detalheProduto": [{"produto": {"cean": "7897238304177",'+
'"ncm": "85258029","cfop": "5101","indTot": 1,"vUnCom": 1.000,"uTrib": "UN","vUnTrib": "1.000","cProd": "85258029901234","xProd": "NOTA FISCAL EMITIDA EM AMBIENTE DE'+ 'HOMOLOGACAO - SEM VALOR FISCAL","uCom": "UN","qTrib": 1.000,"qCom": "1.000","vProd": 1.00},"imposto": {"icms": {"icms00": {"orig": 1,"cst": "00","modBC": 3,'+          '"vbc": 1.00,"picms": 1.01,"vicms": 0.01}},"vTotTrib": 0.00},"nItem": 1}],"total": {"icmsTotal": {"vbc": 1.00,"vicms": 0.01,"vicmsDeson": 0.00,"vbcst": 0.00,'+
'"vst": 0.00,"vii": 0.00,"vipi": 0.00,"vpis": 0.00,"vcofins": 0.00,"vnf": 1.00,"vTotTrib": 0.00,"vDesc": 0.00,"vProd": 1.00,"vOutro": 0.00,"vSeg": 0.00,'+
'"vFrete": 0.00}},"transporte": {"modFrete": 9},"pagamento": [{"tPag": 1,"vPag": 1.00}],"informacaoAdicional": { "infCpl": "COO:000328 | CCF:000209 |'+
' Sequência 004 - Nota com Cliente","observacoesContribuintes": [{"xTexto": "0.00","xCampo": "Troco"}]}}}';

              dataHora := '"dhEmi": "'+txtDhemi.Text+'"';
              tpnf := '"nnf": "'+ txtNumeroNota.Text+'"';
              JsonString := StringReplace(JsonString,'"dhEmi": " "',dataHora,[rfReplaceAll]);
              JsonString := StringReplace(JsonString,'"nnf": " "',tpnf,[rfReplaceAll]);
              txtJSon.Text := JsonString;
              btnRealizarVenda.Enabled := true;
              //JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
              //JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
        end;
procedure TfrmVendaCompleta.btnRealizarVendaClick(Sender: TObject);
    var

          URL, Retorno, JsonString,dataHora, tpnf: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj, bnf, identificacao:TJSONObject;

      begin
        begin
              JsonString := txtJSon.Text;
              JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
              JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
              JsonToSend := TMemoryStream.Create;

              WriteStringToStream(JsonToSend, JsonString, enUTF8);
              JsonToSend.Position := 0;

              URL := 'http://localhost:9999/api/v1/documento';

            try
              FrmPrincipal.HTTP.Request.ContentType := 'application/vnd+bematech.bnf+json';
              FrmPrincipal.HTTP.Request.CharSet := 'utf-8';
              FrmPrincipal.Http.Response.ContentType :='application/json';
              FrmPrincipal.Http.Response.CharSet := 'UTF-8';

                JsonStreamRetorno := FrmPrincipal.Http.Post(URL, JsonToSend);


                FrmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;
                bnf := TJSONObject(jsonObj.Get('bnf').JsonValue);
                identificacao :=  TJSONObject(bnf.Get('identificacao').JsonValue);
                cfe := identificacao.Get(0).JsonValue.Value;


                FrmPrincipal.memoCfe.Clear;
                FrmPrincipal.memoCfe.Text := cfe;
                FrmPrincipal.memoresultado.Lines.add(bnf.ToString);
                frmVendaCompleta.Hide;


               except on E:EIdHTTPProtocolException do
                  FrmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;

        end;

procedure TfrmVendaCompleta.Timer1Timer(Sender: TObject);
var
  formattedDateTime : string;
begin

  txtDhEmi.Text:=formatdatetime('yyyy-mm-dd"T"hh:mm:ss'+'-03:00',now);
end;
procedure TfrmVendaCompleta.FormShow(Sender: TObject);
    begin
       btnRealizarVenda.Enabled := false;
       txtJSon.Clear;
    end;
end.
