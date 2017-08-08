unit EfetuarPagamentoCredenciadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;


type
  TfrmEfetuarPagamentoCredenciadora = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    txtTpag: TComboBox;
    txtVpag: TEdit;
    txtCnpj: TEdit;
    txtcAut: TEdit;
    txtTpIntegra: TComboBox;
    btnEfetuarPagamento: TButton;
    btnJson: TButton;
    btnFechar: TButton;
    Label5: TLabel;
    txtTband: TComboBox;
    procedure btnEfetuarPagamentoClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEfetuarPagamentoCredenciadora: TfrmEfetuarPagamentoCredenciadora;

implementation
   Uses Principal, json;
{$R *.dfm}

procedure TfrmEfetuarPagamentoCredenciadora.btnEfetuarPagamentoClick(Sender: TObject);
     var
          URL, Retorno, JsonString: WideString ;
          jsonPagamento, jsonCartao: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno, tipoPagamento, tipoBandeira: AnsiString;
      begin
                   //JSon principal
                   jsonPagamento :=  TJSONObject.Create;
                   tipoPagamento := copy(txtTpag.Text, 1, 2);
                   tipoBandeira := copy(txtTpag.Text, 1, 2);

                   jsonPagamento := TJSONObject.Create;
                   jsonPagamento.AddPair('tPag', TJSONNumber.Create(tipoPagamento));
                   jsonPagamento.AddPair('vPag', TJSONNumber.Create(txtVpag.Text));

                   //JSon cartao
                   jsonCartao :=  TJSONObject.Create;

                   tipoPagamento := copy(txtTpag.Text, 1, 2);

                  //Adiciona os itens em jsonCartao
                  jsonCartao.AddPair('cnpj', TJSONString.Create(txtcnpj.Text));
                  jsonCartao.AddPair('tBand', TJSONNumber.Create(tipoBandeira));
                  jsonCartao.AddPair('cAut', TJSONString.Create(txtcAut.Text));
                  jsonCartao.AddPair('tpIntegra', TJSONNumber.Create(txttpIntegra.Text[1]));

                  //Adiciona jsonCartao no Json principal
                  jsonPagamento.AddPair('cartao',jsonCartao);

                  JsonString := jsonPagamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);


                  JsonToSend := TMemoryStream.Create;
        begin
                  JsonToSend := TMemoryStream.Create;


              WriteStringToStream(JsonToSend, JsonString, enUTF8);
              JsonToSend.Position := 0;

              URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao+'/pagamento';

            try
                frmPrincipal.HTTP.Request.ContentType := 'application/json';
                frmPrincipal.HTTP.Request.CharSet := 'utf-8';
                frmPrincipal.Http.Response.ContentType :='application/json';
                frmPrincipal.Http.Response.CharSet := 'UTF-8';
                frmPrincipal.HTTP.Request.ContentType := 'application/json';
                frmPrincipal.HTTP.Request.Accept := 'application/json';


                JsonStreamRetorno := frmPrincipal.Http.Post(URL, JsonToSend);


                frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);

               FrmEfetuarPagamentoCredenciadora.Hide;

               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;
      end;
procedure TfrmEfetuarPagamentoCredenciadora.btnFecharClick(Sender: TObject);
begin
  frmEfetuarPagamentoCredenciadora.Hide;
end;

procedure TfrmEfetuarPagamentoCredenciadora.btnJsonClick(Sender: TObject);
     var
          URL, Retorno, JsonString: WideString ;
          jsonPagamento, jsonCartao: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno, tipoPagamento, tipoBandeira: AnsiString;
      begin
                   //JSon principal
                   jsonPagamento :=  TJSONObject.Create;
                   tipoPagamento := copy(txtTpag.Text, 1, 2);
                   tipoBandeira := copy(txtTband.Text, 1, 2);

                   jsonPagamento := TJSONObject.Create;
                   jsonPagamento.AddPair('tPag', TJSONNumber.Create(tipoPagamento));
                   jsonPagamento.AddPair('vPag', TJSONNumber.Create(txtVpag.Text));

                   //JSon cartao
                   jsonCartao :=  TJSONObject.Create;
                   tipoPagamento := copy(txtTpag.Text, 1, 2);

                  //Adiciona os itens em jsonCartao
                  jsonCartao.AddPair('cnpj', TJSONString.Create(txtcnpj.Text));
                  jsonCartao.AddPair('tBand', TJSONNumber.Create(tipoBandeira));
                  jsonCartao.AddPair('cAut', TJSONString.Create(txtcAut.Text));
                  jsonCartao.AddPair('tpIntegra', TJSONNumber.Create(txttpIntegra.Text[1]));

                  //Adiciona jsonCartao no Json principal
                  jsonPagamento.AddPair('cartao',jsonCartao);

                  JsonString := jsonPagamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                 JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                 frmJSon.memoJSon.Clear;
                 frmJSon.memoJSon.Text :=   JsonString;
                 frmJson.Show;

        end;

end.

