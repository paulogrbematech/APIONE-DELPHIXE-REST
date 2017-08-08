unit FecharCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfrmFecharcupom = class(TForm)
    GroupBox1: TGroupBox;
    btnFecharCupom: TButton;
    btnJson: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    GroupBox3: TGroupBox;
    txtinfCpl: TMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    txtVbc: TEdit;
    txtVicms: TEdit;
    txtVcofins: TEdit;
    txtvDesc: TEdit;
    txtVicmsDeson: TEdit;
    txtVbcst: TEdit;
    txtVst: TEdit;
    txtvProd: TEdit;
    txtvFrete: TEdit;
    txtvSeg: TEdit;
    txtVii: TEdit;
    txtVipi: TEdit;
    txtVpis: TEdit;
    txtvOutro: TEdit;
    txtVnf: TEdit;
    txtvTotTrib: TEdit;
    txtXTexto: TEdit;
    txtxCampo: TEdit;
    Button1: TButton;
    procedure btnFecharCupomClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFecharcupom: TfrmFecharcupom;

implementation
  Uses Principal, json;

{$R *.dfm}

procedure TfrmFecharcupom.btnFecharCupomClick(Sender: TObject);
      var
          URL, Retorno, JsonString: WideString ;
          jsonFechamento,total, icmsTotal,informacaoAdicional,observacoesContribuintes,jsonObj,bnf,identificacao : TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: WideString;
          ArrayobservacoesContribuintes : TJSONArray;
          chave:AnsiString;


      begin
                   //JSon principal
                   jsonFechamento :=  TJSONObject.Create;

                   //Monta JSon do total
                   total := TJSONObject.Create;

                   //Monta JSon do icms total
                   icmsTotal := TJSONObject.Create;
                   icmsTotal.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                   icmsTotal.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));
                   icmsTotal.AddPair('vicmsDeson', TJSONNumber.Create(txtvicmsDeson.Text));
                   icmsTotal.AddPair('vbcst', TJSONNumber.Create(txtvbcst.Text));
                   icmsTotal.AddPair('vst', TJSONNumber.Create(txtvst.Text));
                   icmsTotal.AddPair('vProd', TJSONNumber.Create(txtvProd.Text));
                   icmsTotal.AddPair('vFrete', TJSONNumber.Create(txtvFrete.Text));
                   icmsTotal.AddPair('vSeg', TJSONNumber.Create(txtvSeg.Text));
                   icmsTotal.AddPair('vDesc', TJSONNumber.Create(txtvDesc.Text));
                   icmsTotal.AddPair('vii', TJSONNumber.Create(txtvii.Text));
                   icmsTotal.AddPair('vipi', TJSONNumber.Create(txtvipi.Text));
                   icmsTotal.AddPair('vpis', TJSONNumber.Create(txtvpis.Text));
                   icmsTotal.AddPair('vcofins', TJSONNumber.Create(txtvcofins.Text));
                   icmsTotal.AddPair('vOutro', TJSONNumber.Create(txtvOutro.Text));
                   icmsTotal.AddPair('vnf', TJSONNumber.Create(txtvnf.Text));
                   icmsTotal.AddPair('vTotTrib', TJSONNumber.Create(txtvTotTrib.Text));

                  //Adiciona JSon do icms total no JSon total
                  total.AddPair('icmsTotal',icmsTotal);


                  //Adiciona JSon do total no JSon principal
                  jsonFechamento.AddPair('total',total);

                   //Monta JSon Informação Adicional
                   informacaoAdicional := TJSONObject.Create;
                   informacaoAdicional.AddPair('infCpl', TJSONString.Create(txtinfCpl.Text));

                   //Monta JSon Observações contribuintes
                   observacoesContribuintes := TJSONObject.Create;
                   observacoesContribuintes.AddPair('xTexto', TJSONString.Create(txtxTexto.Text));
                   observacoesContribuintes.AddPair('xCampo', TJSONString.Create(txtxCampo.Text));

                   //Cria array Observações contribuintes
                    ArrayobservacoesContribuintes := TJSONArray.Create;
                    ArrayobservacoesContribuintes.AddElement(observacoesContribuintes);

                   //Adiciona Observações Contribuintes em Informação Adicional
                   informacaoAdicional.AddPair('observacoesContribuintes', ArrayobservacoesContribuintes);

                   //Adiciona Informação Adicional no json principal
                   jsonFechamento.AddPair('informacaoAdicional', informacaoAdicional);

                  JsonString := jsonFechamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
        begin

                  JsonToSend := TMemoryStream.Create;

                  WriteStringToStream(JsonToSend, JsonString, enUTF8);
                  JsonToSend.Position := 0;

                  URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao;

            try
                  FrmPrincipal.HTTP.Request.ContentType := 'application/json';
                  FrmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  FrmPrincipal.Http.Response.ContentType :='application/json';
                  FrmPrincipal.Http.Response.CharSet := 'UTF-8';
                  frmPrincipal.HTTP.Request.ContentType := 'application/json';
                  frmPrincipal.HTTP.Request.Accept := 'application/json';

                JsonStreamRetorno := FrmPrincipal.Http.Post(URL, JsonToSend);


                FrmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);


                jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;
                bnf := TJSONObject(jsonObj.Get('bnf').JsonValue);
                identificacao :=  TJSONObject(bnf.Get('identificacao').JsonValue);
                cfe := identificacao.Get(0).JsonValue.Value;

                FrmPrincipal.memoCfe.Text := cfe;


                FrmFecharCupom.Hide;

            except on E:EIdHTTPProtocolException do
                FrmPrincipal.memoresultado.Lines.add(e.ErrorMessage);
            end;
            FrmFecharCupom.Hide;
          end;
        end;
procedure TfrmFecharcupom.btnJsonClick(Sender: TObject);
var
          URL, Retorno, JsonString: WideString ;
          jsonFechamento,total, icmsTotal,informacaoAdicional,observacoesContribuintes : TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: WideString;
          ArrayobservacoesContribuintes : TJSONArray;
begin
                   //JSon principal
                   jsonFechamento :=  TJSONObject.Create;

                   //Monta JSon do total
                   total := TJSONObject.Create;

                   //Monta JSon do icms total
                   icmsTotal := TJSONObject.Create;
                   icmsTotal.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                   icmsTotal.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));
                   icmsTotal.AddPair('vicmsDeson', TJSONNumber.Create(txtvicmsDeson.Text));
                   icmsTotal.AddPair('vbcst', TJSONNumber.Create(txtvbcst.Text));
                   icmsTotal.AddPair('vst', TJSONNumber.Create(txtvst.Text));
                   icmsTotal.AddPair('vProd', TJSONNumber.Create(txtvProd.Text));
                   icmsTotal.AddPair('vFrete', TJSONNumber.Create(txtvFrete.Text));
                   icmsTotal.AddPair('vSeg', TJSONNumber.Create(txtvSeg.Text));
                   icmsTotal.AddPair('vDesc', TJSONNumber.Create(txtvDesc.Text));
                   icmsTotal.AddPair('vii', TJSONNumber.Create(txtvii.Text));
                   icmsTotal.AddPair('vipi', TJSONNumber.Create(txtvipi.Text));
                   icmsTotal.AddPair('vpis', TJSONNumber.Create(txtvpis.Text));
                   icmsTotal.AddPair('vcofins', TJSONNumber.Create(txtvcofins.Text));
                   icmsTotal.AddPair('vOutro', TJSONNumber.Create(txtvOutro.Text));
                   icmsTotal.AddPair('vnf', TJSONNumber.Create(txtvnf.Text));
                   icmsTotal.AddPair('vTotTrib', TJSONNumber.Create(txtvTotTrib.Text));

                  //Adiciona JSon do icms total no JSon total
                  total.AddPair('icmsTotal',icmsTotal);


                  //Adiciona JSon do total no JSon principal
                  jsonFechamento.AddPair('total',total);

                   //Monta JSon Informação Adicional
                   informacaoAdicional := TJSONObject.Create;
                   informacaoAdicional.AddPair('infCpl', TJSONString.Create(txtinfCpl.Text));

                   //Monta JSon Observações contribuintes
                   observacoesContribuintes := TJSONObject.Create;
                   observacoesContribuintes.AddPair('xTexto', TJSONString.Create(txtxTexto.Text));
                   observacoesContribuintes.AddPair('xCampo', TJSONString.Create(txtxCampo.Text));

                   //Cria array Observações contribuintes
                    ArrayobservacoesContribuintes := TJSONArray.Create;
                    ArrayobservacoesContribuintes.AddElement(observacoesContribuintes);

                   //Adiciona Observações Contribuintes em Informação Adicional
                   informacaoAdicional.AddPair('observacoesContribuintes', ArrayobservacoesContribuintes);

                   //Adiciona Informação Adicional no json principal
                   jsonFechamento.AddPair('informacaoAdicional', informacaoAdicional);

                  JsonString := jsonFechamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;


end;

procedure TfrmFecharcupom.Button1Click(Sender: TObject);
begin
  frmFecharcupom.Hide;
end;

procedure TfrmFecharCupom.FormShow(Sender: TObject);
    begin
      if simplesNacional = true then
      begin
        txtvBc.Text :=   '0.00';
        txtvTotTrib.Text := '0.00';
        txtvNf.Text := '1.00';
        txtVicms.Text := '0.00';
        txtVtotTrib.Text := '0.42';
     end else
     begin
         txtvBc.Text :=   '1.00';
         txtvTotTrib.Text := '1.00';
         txtvNf.Text := '1.00';
         txtVicms.Text := '0.01';
         txtVtotTrib.Text := '0.00';
     end;
      end;

end.
