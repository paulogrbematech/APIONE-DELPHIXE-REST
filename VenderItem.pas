unit VenderItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmVenderItem = class(TForm)
    GroupBox3: TGroupBox;
    Memo23: TMemo;
    btnJson: TButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    txtVoutro: TMemo;
    Label20: TLabel;
    Label17: TLabel;
    txtVprod: TMemo;
    txtUcom: TMemo;
    Label14: TLabel;
    Label11: TLabel;
    txtVunTrib: TMemo;
    Label9: TLabel;
    Label6: TLabel;
    txtCEan: TMemo;
    txtNcm: TMemo;
    Label7: TLabel;
    txtCProd: TMemo;
    Label12: TLabel;
    Label15: TLabel;
    txtQtrib: TMemo;
    txtIndRegra: TMemo;
    Label18: TLabel;
    txtNitem: TMemo;
    Label23: TLabel;
    Label19: TLabel;
    txtVdesc: TMemo;
    txtQcom: TMemo;
    Label16: TLabel;
    Label13: TLabel;
    txtXProd: TMemo;
    txtUtrib: TMemo;
    Label24: TLabel;
    Label8: TLabel;
    txtCFOP: TMemo;
    btnInserirICMS: TButton;
    btnInserirSimples: TButton;
    Label1: TLabel;
    Label2: TLabel;
    txtVitem: TEdit;
    Label3: TLabel;
    txtinfAdProd: TEdit;
    txtindTot: TComboBox;
    txtOrig: TComboBox;
    Label4: TLabel;
    txtVuncom: TEdit;
    Label5: TLabel;
    txtCest: TEdit;
    btnInserirInformacoesVenda: TButton;
    btnCancelar: TButton;
    GroupBox4: TGroupBox;
    btnInserirPIS: TButton;
    bntInserirCOFINS: TButton;
    GroupBox5: TGroupBox;
    btnVenderItem: TButton;
    procedure btnInserirInformacoesVendaClick(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure btnInserirICMSClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnVenderItemClick(Sender: TObject);
    procedure btnInserirSimplesClick(Sender: TObject);
    procedure bntInserirCOFINSClick(Sender: TObject);
    procedure btnInserirPISClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenderItem: TfrmVenderItem;
  JsonString: WideString;
  jsonVenda,imposto : TJSonObject;

implementation
   uses Principal, json, InserirICMS, InserirICMSSimplesNacional,InserirCofins, InserirPIS;
{$R *.dfm}

procedure TfrmVenderItem.bntInserirCOFINSClick(Sender: TObject);
begin
  frmInserirCofins.Show;
end;

procedure TfrmVenderItem.btnCancelarClick(Sender: TObject);
begin
  if (jsonVenda <> nil) then
  begin
      if (Application.MessageBox('Há dados da venda que não foram executados. Tem certeza de que deseja cancelar?','Cancelar',mb_yesno + mb_iconquestion) = id_yes) then
      begin
          jsonVenda := nil;
          btnInserirInformacoesVenda.Enabled := true;
          btnInserirICMS.Enabled := true;
          FrmVenderItem.btnInserirSimples.Enabled := true;
          frmVenderItem.Hide;
      end
  end;
           frmVenderItem.Hide;

end;

procedure TfrmVenderItem.btnInserirICMSClick(Sender: TObject);
begin
  frmInserirICMS.Show;
end;

procedure TfrmVenderItem.btnJsonClick(Sender: TObject);
      var
          URL, Retorno: WideString;
          produto, imposto: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;

      begin
                  if (jsonVenda <> nil) then
                    begin
                      JsonString := jsonVenda.ToString;
                      JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                      JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);
                      frmJSon.memoJSon.Clear;
                      frmJSon.memoJSon.Text :=   JsonString;
                      frmJSon.Show;
                    end
                    else
                      Application.MessageBox('Insira os dados da venda.', 'Dados da Venda', mb_iconinformation + mb_ok);

end;

procedure TfrmVenderItem.btnVenderItemClick(Sender: TObject);
      var
          URL, Retorno, JsonString: WideString ;
          produto: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
begin
        if (jsonVenda <> nil) then
        begin
                  JsonString := jsonVenda.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  JsonToSend := TMemoryStream.Create;

            begin
                  WriteStringToStream(JsonToSend, JsonString, enUTF8);
                  JsonToSend.Position := 0;

                  URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao+'/item';

            try
                  frmPrincipal.HTTP.Request.ContentType := 'application/json';
                  frmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  frmPrincipal.Http.Response.ContentType :='application/json';
                  frmPrincipal.Http.Response.CharSet := 'UTF-8';
                  frmPrincipal.HTTP.Request.ContentType := 'application/json';
                  frmPrincipal.HTTP.Request.Accept := 'application/json';

                  JsonStreamRetorno := frmPrincipal.Http.Post(URL, JsonToSend);

                  frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                  jsonVenda := nil;
                  btnInserirInformacoesVenda.Enabled := true;
                  btnInserirICMS.Enabled := true;
                  FrmVenderItem.btnInserirSimples.Enabled := true;
                  frmVenderItem.Hide;




               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);
               end;
                  jsonVenda := nil;
                  btnInserirInformacoesVenda.Enabled := true;
                  btnInserirICMS.Enabled := true;
                  FrmVenderItem.btnInserirSimples.Enabled := true;
                  frmVenderItem.Hide;

          end;
        end
          else
            Application.MessageBox('Insira os dados da venda.', 'Dados da Venda', mb_iconinformation + mb_ok);

end;

procedure TfrmVenderItem.btnInserirInformacoesVendaClick(Sender: TObject);
      var
          URL, Retorno, JsonString: WideString ;
          produto: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
      begin
                   //JSon principal
                   jsonVenda :=  TJSONObject.Create;
                   jsonVenda.AddPair('nItem', TJSONNumber.Create(txtnItem.Text));

                   produto := TJSONObject.Create;
                   produto.AddPair('cProd', TJSONString.Create(txtCProd.Text));
                   produto.AddPair('cean', TJSONString.Create(txtCean.Text));
                   produto.AddPair('xProd', TJSONString.Create(txtxProd.Text));
                   produto.AddPair('ncm', TJSONString.Create(txtncm.Text));
                   produto.AddPair('cfop', TJSONString.Create(txtcfop.Text));
                   produto.AddPair('uCom', TJSONString.Create(txtuCom.Text));
                   produto.AddPair('qCom', TJSONString.Create(txtqCom.Text));
                   produto.AddPair('vUnCom', TJSONNumber.Create(txtvUnCom.Text));
                   produto.AddPair('vProd', TJSONNumber.Create(txtvProd.Text));
                   produto.AddPair('indRegra', TJSONString.Create(txtindRegra.Text));
                   produto.AddPair('uTrib', TJSONString.Create(txtuTrib.Text));
                   produto.AddPair('qTrib', TJSONNumber.Create(txtqTrib.Text));
                   produto.AddPair('vUnTrib', TJSONString.Create(txtvUnTrib.Text));
                   produto.AddPair('vDesc', TJSONNumber.Create(txtvDesc.Text));
                   produto.AddPair('vOutro', TJSONNumber.Create(txtvOutro.Text));
                   produto.AddPair('vItem', TJSONNumber.Create(txtvItem.Text));
                   produto.AddPair('indTot', TJSONNumber.Create(txtindTot.Text[1]));
                   produto.AddPair('cest', TJSONString.Create(txtcest.Text));


                   //jsonVenda.AddPair('infAdProd', TJSONString.Create(txtinfAdProd.Text));

                   //Adiciona jSonProduto no json principal
                   jsonVenda.AddPair('produto', produto);

                   //-------------------------------------
                   //Cria Json icms00
                   //icms00 := TJSONObject.Create;
                   //icms00.AddPair('orig', TJSONNumber.Create(MemoImpIcms00Orig.Text));
                   //icms00.AddPair('cst', TJSONString.Create(MemoImpIcms00Cst.Text));
                  // icms00.AddPair('picms', TJSONNumber.Create(MemoImpIcms00Picms.Text));

                   //Adiciona icms00 em icms
                   //icms := TJSONObject.Create;
                  // icms.AddPair('icms00', icms00);

                  //-------------------------------------
                  //Criar JSon cofinsnt
                  //cofinsnt := TJSONObject.Create;
                 // cofinsnt.AddPair('cst', TJSONString.Create(MemoImpCofinsNtCst.Text));

                  //Adiciona cofinsnt em cofins
                  //cofins := TJSONObject.Create;
                  //cofins.AddPair('cofinsnt', cofinsnt);

                  //-------------------------------------
                  //Criar JSon pisnt
                 // pisnt := TJSONObject.Create;
                 // pisnt.AddPair('cst', TJSONString.Create(MemoImpPisNTCst.Text));

                  //Adiciona pisnt em pis
                 // pis := TJSONObject.Create;
                 // pis.AddPair('pisnt', pisnt);


          //-------------------------------------
                  //Criar JSon Imposto
                 // imposto :=  TJSONObject.Create;

                  //Adiciona icms em imposto
                 // imposto.AddPair('icms', icms);

                 //Adiciona cofins em imposto

                 // imposto.AddPair('cofins', cofins);

                  //Adiciona pis em imposto
                 // imposto.AddPair('pis', pis);



                  //Adiciona imposto no json de venda
                 // jsonVenda.AddPair('imposto', imposto);




                  JsonString := jsonVenda.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                  btnInserirInformacoesVenda.Enabled := false;
                  btnInserirICMS.Enabled := true;
                  btnInserirSimples.Enabled := true;

                  //JsonString := memoJson.Lines.GetText();
                  JsonToSend := TMemoryStream.Create;

           { begin
                  WriteStringToStream(JsonToSend, JsonString, enUTF8);
                  JsonToSend.Position := 0;

                  URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao+'/item';

            try
                  frmPrincipal.HTTP.Request.ContentType := 'application/json';
                  frmPrincipal.HTTP.Request.CharSet := 'utf-8';
                  frmPrincipal.Http.Response.ContentType :='application/json';
                  frmPrincipal.Http.Response.CharSet := 'UTF-8';

                  JsonStreamRetorno := frmPrincipal.Http.Post(URL, JsonToSend);




               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;  }


      end;

procedure TfrmVenderItem.btnInserirPISClick(Sender: TObject);
begin
  frmInserirPIS.Show;
end;

procedure TfrmVenderItem.btnInserirSimplesClick(Sender: TObject);
begin
  frmInserirICMSSimplesNacional.Show;
end;

procedure TfrmVenderItem.FormShow(Sender: TObject);
    begin
      if simplesNacional = true then
      begin
        txtCfop.Text :=   '5102';
     end else
     begin
         txtCfop.Text :=   '5101';
     end;
      end;

end.
