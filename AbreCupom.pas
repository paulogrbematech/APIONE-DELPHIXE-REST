unit AbreCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmAbreCupom = class(TForm)
    GroupBox1: TGroupBox;
    btnAbrirCupom: TButton;
    btnJson: TButton;
    GroupBox2: TGroupBox;
    txtImprimir: TCheckBox;
    txtEmail: TCheckBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label20: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    txtCuf: TEdit;
    txtCnf: TEdit;
    txtNatOp: TEdit;
    txtDhEmi: TEdit;
    txtCdv: TEdit;
    txtVerProc: TEdit;
    txtCMunFG: TEdit;
    txtMod: TComboBox;
    txtIndPag: TComboBox;
    txtTpNF: TComboBox;
    txtIdDest: TComboBox;
    txtTpImp: TComboBox;
    txtTpEmis: TComboBox;
    txtTpAmb: TComboBox;
    txtfinNFe: TComboBox;
    txtIndFinal: TCheckBox;
    txtIndPres: TComboBox;
    txtProcEmi: TComboBox;
    txtNnf: TEdit;
    txtSerie: TEdit;
    txtCnpjEmit: TEdit;
    txtNroEmit: TEdit;
    txtUfEmit: TEdit;
    txtCepEmit: TEdit;
    txtTelefoneEmit: TEdit;
    txtXBairroEmit: TEdit;
    txtXLgrEmit: TEdit;
    txtXFantEmit: TEdit;
    txtXNomeEmit: TEdit;
    txtIEEmit: TEdit;
    txtXMunEmit: TEdit;
    txtxPaisEmit: TEdit;
    txtCPaisEmit: TEdit;
    txtCMunEmit: TEdit;
    txtCrtEmit: TComboBox;
    txtCpfDest: TEdit;
    txtNroDest: TEdit;
    txtUfDest: TEdit;
    txtXPaisDest: TEdit;
    txtXMunDest: TEdit;
    txtCepDest: TEdit;
    txtFoneDest: TEdit;
    txtEmailDest: TEdit;
    txtXNomeDest: TEdit;
    txtXBairroDest: TEdit;
    txtXLgrDest: TEdit;
    txtCMunDest: TEdit;
    txtCPaisDest: TEdit;
    txtIndIEDest: TComboBox;
    Timer: TTimer;
    btnAumentaNumeroNota: TButton;
    btnDiminuiNumeroNota: TButton;
    procedure btnAbrirCupomClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btnAumentaNumeroNotaClick(Sender: TObject);
    procedure btnDiminuiNumeroNotaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbreCupom: TfrmAbreCupom;

implementation
    uses Principal, json;

{$R *.dfm}

procedure TfrmAbreCupom.btnAbrirCupomClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonAbertura,jsonObj,identificacao,emitente,enderecoEmitente,destinatario,configuracao, enderecoDestinatario: TJSONObject;
          par0,par1 : TJSONPair;
          retornoOK,numeroSessao: TJSONArray;

          begin
                   //JSon principal
                   jsonAbertura :=  TJSONObject.Create;
                   jsonAbertura.AddPair('versao', TJSONString.Create('3.10'));

                   //Monta JSon configuração
                   configuracao := TJSONObject.Create;
                   if txtImprimir.Checked = true then
                    begin
                      configuracao.AddPair('imprimir', TJSONString.Create('true'));
                    end
                   else
                      configuracao.AddPair('imprimir', TJSONString.Create('false'));

                   if txtEmail.Checked = true then
                    begin
                      configuracao.AddPair('email', TJSONString.Create('true'));
                    end
                   else
                      configuracao.AddPair('email', TJSONString.Create('false'));

                   //Adiciona o Json de configuração no json principal
                   jsonAbertura.AddPair('configuracao', configuracao);

                   //Monta JSon identificação
                   identificacao := TJSONObject.Create;
                   identificacao.AddPair('cuf', TJSONString.Create(txtCuf.Text));
                   identificacao.AddPair('cnf', TJSONString.Create(txtCnf.Text));
                   identificacao.AddPair('natOp', TJSONString.Create(txtNatop.Text));
                   identificacao.AddPair('indPag', TJSONNumber.Create(txtIndPag.Text[1]));
                   identificacao.AddPair('mod', TJSONString.Create(copy(txtMod.Text, 1, 2)));
                   identificacao.AddPair('serie', TJSONString.Create(txtSerie.Text));
                   identificacao.AddPair('nnf', TJSONString.Create(txtNnf.Text));
                   identificacao.AddPair('dhEmi', TJSONString.Create(txtDhemi.Text));
                   identificacao.AddPair('tpNF', TJSONString.Create(txttpNF.Text[1]));
                   identificacao.AddPair('idDest', TJSONString.Create(txtidDest.Text[1]));
                   identificacao.AddPair('tpImp', TJSONString.Create(txttpImp.Text[1]));
                   identificacao.AddPair('tpEmis', TJSONString.Create(txttpEmis.Text[1]));
                   identificacao.AddPair('cdv', TJSONString.Create(txtcdv.Text));
                   identificacao.AddPair('tpAmb', TJSONString.Create(txttpAmb.Text[1]));
                   identificacao.AddPair('finNFe', TJSONString.Create(txtfinNFe.Text[1]));

                    if txtindFinal.Checked = true then
                    begin
                      identificacao.AddPair('indFinal', TJSONString.Create('1'));
                    end
                    else
                      identificacao.AddPair('indFinal', TJSONString.Create('0'));

                   identificacao.AddPair('indPres', TJSONString.Create(txtindPres.Text[1]));
                   identificacao.AddPair('procEmi', TJSONString.Create(txtprocEmi.Text[1]));
                   identificacao.AddPair('verProc', TJSONString.Create(txtverProc.Text));
                   identificacao.AddPair('cMunFG', TJSONString.Create(txtcMunFG.Text));

                   //Adiciona identificação no json principal
                   jsonAbertura.AddPair('identificacao', identificacao);

                   //-------------------------------------
                   //Cria Json emitente
                   emitente := TJSONObject.Create;
                   emitente.AddPair('cnpj', TJSONString.Create(txtcnpjEmit.Text));
                   emitente.AddPair('xNome', TJSONString.Create(txtxNomeEmit.Text));
                   emitente.AddPair('xFant', TJSONString.Create(txtxFantEmit.Text));

                   //Cria Json endereco emitente
                   enderecoEmitente := TJSONObject.Create;
                   enderecoEmitente.AddPair('nro', TJSONString.Create(txtNroEmit.Text));
                   enderecoEmitente.AddPair('uf', TJSONString.Create(txtufEmit.Text));
                   enderecoEmitente.AddPair('cep', TJSONString.Create(txtCepEmit.Text));
                   enderecoEmitente.AddPair('fone', TJSONString.Create(txtTelefoneEmit.Text));
                   enderecoEmitente.AddPair('xBairro', TJSONString.Create(txtxBairroEmit.Text));
                   enderecoEmitente.AddPair('xLgr', TJSONString.Create(txtxLgrEmit.Text));
                   enderecoEmitente.AddPair('cMun', TJSONString.Create(txtCMunEmit.Text));
                   enderecoEmitente.AddPair('cPais', TJSONString.Create(txtCPaisEmit.Text));
                   enderecoEmitente.AddPair('xPais', TJSONString.Create(txtxPaisEmit.Text));
                   enderecoEmitente.AddPair('xMun', TJSONString.Create(txtxMunEmit.Text));

                   //Adiciona o Json Endereço em emitente
                   emitente.AddPair('endereco', enderecoEmitente);

                   emitente.AddPair('ie', TJSONString.Create(txtIEEmit.Text));
                   emitente.AddPair('crt', TJSONNumber.Create(txtCrtEmit.Text[1]));

                   //Adiciona Json emitente no Json principal
                   jsonAbertura.AddPair('emitente', emitente);

                  //-------------------------------------
                  //Criar JSon destinatario
                  destinatario := TJSONObject.Create;
                  destinatario.AddPair('cpf', TJSONString.Create(txtcpfDest.Text));
                  destinatario.AddPair('xNome', TJSONString.Create(txtXNomeDest.Text));

                  //Criar JSon endereço destinatario
                  enderecoDestinatario := TJSONObject.Create;
                  enderecoDestinatario.AddPair('nro', TJSONString.Create(txtnroDest.Text));
                  enderecoDestinatario.AddPair('uf', TJSONString.Create(txtUfDest.Text));
                  enderecoDestinatario.AddPair('cep', TJSONString.Create(txtCepDest.Text));
                  enderecoDestinatario.AddPair('fone', TJSONString.Create(txtFoneDest.Text));
                  enderecoDestinatario.AddPair('xBairro', TJSONString.Create(txtxBairroDest.Text));
                  enderecoDestinatario.AddPair('xLgr', TJSONString.Create(txtxLgrDest.Text));
                  enderecoDestinatario.AddPair('cMun', TJSONString.Create(txtcMunDest.Text));
                  enderecoDestinatario.AddPair('cPais', TJSONString.Create(txtcPaisDest.Text));
                  enderecoDestinatario.AddPair('xPais', TJSONString.Create(txtXPaisDest.Text));
                  enderecoDestinatario.AddPair('xMun', TJSONString.Create(txtxMunDest.Text));

                  //Adiciona endereco em destinatario
                  destinatario.AddPair('endereco', enderecoDestinatario);

                  destinatario.AddPair('indIEDest', TJSONString.Create(txtindIEDest.Text[1]));
                  destinatario.AddPair('email', TJSONString.Create(txtemailDest.Text));

                  //Adiciona destinatario em jSon principal
                  jsonAbertura.AddPair('destinatario', destinatario);

                  //-------------------------------------

                  JsonString := jsonAbertura.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  JsonToSend := TMemoryStream.Create;

                  WriteStringToStream(JsonToSend, JsonString, enUTF8);
                  JsonToSend.Position := 0;

                  URL := 'http://localhost:9999/api/v1/documento/cupom';




        try
          FrmPrincipal.HTTP.Request.ContentType := 'application/json';
          FrmPrincipal.HTTP.Request.CharSet := 'utf-8';
          FrmPrincipal.Http.Response.ContentType :='plain/text';
          FrmPrincipal.Http.Response.CharSet := 'UTF-8';



            JsonStreamRetorno := FrmPrincipal.Http.Post(URL, JsonToSend);
            Sessao :=  JsonStreamRetorno;

            FrmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);

            JsonStreamRetorno := StringReplace(JsonStreamRetorno,#$A,'',[rfReplaceAll]);
            JsonStreamRetorno := StringReplace(JsonStreamRetorno,#$D,'',[rfReplaceAll]);

            jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;
            par0 := jsonObj.Get(0);
            par1 := jsonObj.Get(1);

            FrmPrincipal.memoResultado.Text := FrmPrincipal.memoResultado.Text + par0.JsonString.Value;
            FrmPrincipal.memoSessao.Clear;
            FrmPrincipal.memoSessao.Text := FrmPrincipal.memoSessao.Text + par1.JsonValue.ToString;
            sessao := StringReplace(FrmPrincipal.memoSessao.Text,'"','',[rfReplaceAll]);
            FrmAbrecupom.Hide;
           except on E:EIdHTTPProtocolException do
              FrmPrincipal.memoresultado.Lines.add(e.ErrorMessage);
        end;
        FrmAbrecupom.Hide;
    end;
procedure TfrmAbreCupom.btnAumentaNumeroNotaClick(Sender: TObject);
var
  contador:Integer;
begin
  contador:= StrToInt(txtnnf.Text);
  contador := contador+1;
  txtnnf.Text := IntToStr(contador);
end;

procedure TfrmAbreCupom.btnDiminuiNumeroNotaClick(Sender: TObject);
var
  contador:Integer;
begin
  contador:= StrToInt(txtnnf.Text);
  contador := contador-1;
  if(contador < 0) then
  begin
    contador :=1;
  end;
  txtnnf.Text := IntToStr(contador);
end;


procedure TfrmAbreCupom.btnJsonClick(Sender: TObject);
var
          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj, jsonAbertura,identificacao,emitente,enderecoEmitente,destinatario,configuracao, enderecoDestinatario: TJSONObject;
          par0,par1, jSubPar : TJSONPair;
          retornoOK,numeroSessao: TJSONArray;
begin
                   //JSon principal
                   jsonAbertura :=  TJSONObject.Create;
                   jsonAbertura.AddPair('versao', TJSONString.Create('3.10'));

                   //Monta JSon configuração
                   configuracao := TJSONObject.Create;
                   if txtImprimir.Checked = true then
                    begin
                      configuracao.AddPair('imprimir', TJSONString.Create('true'));
                    end
                   else
                      configuracao.AddPair('imprimir', TJSONString.Create('false'));

                   if txtEmail.Checked = true then
                    begin
                      configuracao.AddPair('email', TJSONString.Create('true'));
                    end
                   else
                      configuracao.AddPair('email', TJSONString.Create('false'));

                   //Adiciona o Json de configuração no json principal
                   jsonAbertura.AddPair('configuracao', configuracao);

                   //Monta JSon identificação
                   identificacao := TJSONObject.Create;
                   identificacao.AddPair('cuf', TJSONString.Create(txtCuf.Text));
                   identificacao.AddPair('cnf', TJSONString.Create(txtCnf.Text));
                   identificacao.AddPair('natOp', TJSONString.Create(txtNatop.Text));
                   identificacao.AddPair('indPag', TJSONNumber.Create(txtIndPag.Text[1]));
                   identificacao.AddPair('mod', TJSONString.Create(copy(txtMod.Text, 1, 2)));
                   identificacao.AddPair('serie', TJSONString.Create(txtSerie.Text));
                   identificacao.AddPair('nnf', TJSONString.Create(txtNnf.Text));
                   identificacao.AddPair('dhEmi', TJSONString.Create(txtDhemi.Text));
                   identificacao.AddPair('tpNF', TJSONString.Create(txttpNF.Text[1]));
                   identificacao.AddPair('idDest', TJSONString.Create(txtidDest.Text[1]));
                   identificacao.AddPair('tpImp', TJSONString.Create(txttpImp.Text[1]));
                   identificacao.AddPair('tpEmis', TJSONString.Create(txttpEmis.Text[1]));
                   identificacao.AddPair('cdv', TJSONString.Create(txtcdv.Text));
                   identificacao.AddPair('tpAmb', TJSONString.Create(txttpAmb.Text[1]));
                   identificacao.AddPair('finNFe', TJSONString.Create(txtfinNFe.Text[1]));

                    if txtindFinal.Checked = true then
                    begin
                      identificacao.AddPair('indFinal', TJSONString.Create('1'));
                    end
                    else
                      identificacao.AddPair('indFinal', TJSONString.Create('0'));

                   identificacao.AddPair('indPres', TJSONString.Create(txtindPres.Text[1]));
                   identificacao.AddPair('procEmi', TJSONString.Create(txtprocEmi.Text[1]));
                   identificacao.AddPair('verProc', TJSONString.Create(txtverProc.Text));
                   identificacao.AddPair('cMunFG', TJSONString.Create(txtcMunFG.Text));

                   //Adiciona identificação no json principal
                   jsonAbertura.AddPair('identificacao', identificacao);

                   //-------------------------------------
                   //Cria Json emitente
                   emitente := TJSONObject.Create;
                   emitente.AddPair('cnpj', TJSONString.Create(txtcnpjEmit.Text));
                   emitente.AddPair('xNome', TJSONString.Create(txtxNomeEmit.Text));
                   emitente.AddPair('xFant', TJSONString.Create(txtxFantEmit.Text));

                   //Cria Json endereco emitente
                   enderecoEmitente := TJSONObject.Create;
                   enderecoEmitente.AddPair('nro', TJSONString.Create(txtNroEmit.Text));
                   enderecoEmitente.AddPair('uf', TJSONString.Create(txtufEmit.Text));
                   enderecoEmitente.AddPair('cep', TJSONString.Create(txtCepEmit.Text));
                   enderecoEmitente.AddPair('fone', TJSONString.Create(txtTelefoneEmit.Text));
                   enderecoEmitente.AddPair('xBairro', TJSONString.Create(txtxBairroEmit.Text));
                   enderecoEmitente.AddPair('xLgr', TJSONString.Create(txtxLgrEmit.Text));
                   enderecoEmitente.AddPair('cMun', TJSONString.Create(txtCMunEmit.Text));
                   enderecoEmitente.AddPair('cPais', TJSONString.Create(txtCPaisEmit.Text));
                   enderecoEmitente.AddPair('xPais', TJSONString.Create(txtxPaisEmit.Text));
                   enderecoEmitente.AddPair('xMun', TJSONString.Create(txtxMunEmit.Text));

                   //Adiciona o Json Endereço em emitente
                   emitente.AddPair('endereco', enderecoEmitente);

                   emitente.AddPair('ie', TJSONString.Create(txtIEEmit.Text));
                   emitente.AddPair('crt', TJSONNumber.Create(txtCrtEmit.Text[1]));

                   //Adiciona Json emitente no Json principal
                   jsonAbertura.AddPair('emitente', emitente);

                  //-------------------------------------
                  //Criar JSon destinatario
                  destinatario := TJSONObject.Create;
                  destinatario.AddPair('cpf', TJSONString.Create(txtcpfDest.Text));
                  destinatario.AddPair('xNome', TJSONString.Create(txtXNomeDest.Text));

                  //Criar JSon endereço destinatario
                  enderecoDestinatario := TJSONObject.Create;
                  enderecoDestinatario.AddPair('nro', TJSONString.Create(txtnroDest.Text));
                  enderecoDestinatario.AddPair('uf', TJSONString.Create(txtUfDest.Text));
                  enderecoDestinatario.AddPair('cep', TJSONString.Create(txtCepDest.Text));
                  enderecoDestinatario.AddPair('fone', TJSONString.Create(txtFoneDest.Text));
                  enderecoDestinatario.AddPair('xBairro', TJSONString.Create(txtxBairroDest.Text));
                  enderecoDestinatario.AddPair('xLgr', TJSONString.Create(txtxLgrDest.Text));
                  enderecoDestinatario.AddPair('cMun', TJSONString.Create(txtcMunDest.Text));
                  enderecoDestinatario.AddPair('cPais', TJSONString.Create(txtcPaisDest.Text));
                  enderecoDestinatario.AddPair('xPais', TJSONString.Create(txtXPaisDest.Text));
                  enderecoDestinatario.AddPair('xMun', TJSONString.Create(txtxMunDest.Text));

                  //Adiciona endereco em destinatario
                  destinatario.AddPair('endereco', enderecoDestinatario);

                  destinatario.AddPair('indIEDest', TJSONString.Create(txtindIEDest.Text[1]));
                  destinatario.AddPair('email', TJSONString.Create(txtemailDest.Text));

                  //Adiciona destinatario em jSon principal
                  jsonAbertura.AddPair('destinatario', destinatario);

                  //-------------------------------------

                  JsonString := jsonAbertura.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);


                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;

end;

procedure TfrmAbreCupom.TimerTimer(Sender: TObject);
var
  formattedDateTime : string;
begin

  txtDhEmi.Text:=formatdatetime('yyyy-mm-dd"T"hh:mm:ss'+'-03:00',now);
end;

procedure TfrmAbreCupom.FormShow(Sender: TObject);
    begin
      if simplesNacional = true then
      begin
        txtCrtEmit.ItemIndex :=   0;
     end else
     begin
         txtCrtEmit.ItemIndex :=   2;
     end;
      end;
end.
