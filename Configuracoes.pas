unit Configuracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, xmldom, XMLIntf, msxmldom, XMLDoc;



type
  TfrmConfiguracoes = class(TForm)
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    txtAPP_ROOT_PATH: TMemo;
    txtENABLE_GUI: TMemo;
    txtWHITE_LABEL: TMemo;
    txtPATH_NFCE_NEW: TMemo;
    txtPATH_NFCE_SIGN: TMemo;
    txtPATH_NFCE_CUSTODY: TMemo;
    txtPATH_NFCE_BACKUP: TMemo;
    txtPATH_NFCE_ERRORS: TMemo;
    txtPATH_NFCE_DANFE: TMemo;
    txtPATH_NFCE_DANFE_CONTINGENCIA: TMemo;
    txtURL_QRCODE_CONSULTA: TMemo;
    txtQRCODE_TOKEN: TMemo;
    txtQRCODE_TOKEN_ID: TMemo;
    txtTRUST_STORE_PATH: TMemo;
    txtFILE_CERTIFICADO: TMemo;
    txtURL_DANFE: TMemo;
    txtNFCE_AMBIENTE: TMemo;
    txtNFCE_UF: TMemo;
    txtNFCE_VERSAO: TMemo;
    txtINFO_RODAPE_DANFE: TMemo;
    txtREMOVE_ACENTOS: TMemo;
    txtDADOS_RODAPE_DANFE: TMemo;
    txtCONTINGENCIA_AUTOMATICA: TMemo;
    txtCONTINGENCY_TIME_IN_MINUTES: TMemo;
    btnLerParametros: TButton;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txtCONTINGENCY_SWITCHING_AUTO: TMemo;
    Label25: TLabel;
    txtNOVA_EMISSAO_EM_PRIMEIRA_CONTINGENCIA: TMemo;
    Label26: TLabel;
    txtCONTINGENCY_RETURN_ONLY_99990: TMemo;
    Label27: TLabel;
    txtFISCAL_CLOUD_ENABLE: TMemo;
    Label28: TLabel;
    txtFISCAL_CLOUD_URL: TMemo;
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
    Label39: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    txtCNPJ_CONTRIBUINTE: TMemo;
    txtID_PDV: TMemo;
    txtCUSTODY_SEND_MAX_DOCS_PER_MINUTE: TMemo;
    txtIE: TMemo;
    txtURL_NFE_RECEPCAO: TMemo;
    txtURL_NFE_RET_RECEPCAO: TMemo;
    txtURL_NFE_AUTORIZACAO: TMemo;
    txtURL_NFE_RET_AUTORIZACAO: TMemo;
    txtURL_NFE_RECEPCAO_EVE: TMemo;
    txtURL_NFE_INUTILIZACAO: TMemo;
    txtURL_NFE_STATUS_SERV: TMemo;
    txtURL_NFE_CONSULTA_NF: TMemo;
    txtCONNECTION_TIMEOUT_IN_SECONDS: TMemo;
    txtSOCKET_DYNAMIC: TMemo;
    txtPRINTER_URI: TMemo;
    txtPRINT_DANFE_ITEMS: TMemo;
    txtSMALL_QRCODE: TMemo;
    txtDANFE_REDUZIDO: TMemo;
    txtPRINT_CLICHE: TMemo;
    txtDANFE_LOGO_FILE_PATH: TMemo;
    txtPRINT_LOGO_DANFE: TMemo;
    txtCUT_DANFE: TMemo;
    txtSALVA_DANFE: TMemo;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    txtDANFE_VIA_EMIT: TMemo;
    Label54: TLabel;
    txtPRINT_EAN: TMemo;
    Label55: TLabel;
    txtDEBUG_SALVA_BIN_IMPRESSAO: TMemo;
    Label56: TLabel;
    txtINCLUIR_DESC_ACRES_ITEM: TMemo;
    Label57: TLabel;
    txtINCLUIR_DESC_ACRES_NOTA: TMemo;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    txtINCLUIR_IMPOSTOS_POR_ITEM: TMemo;
    txtPROXY: TMemo;
    txtPROXY_HOST: TMemo;
    txtPROXY_PORT: TMemo;
    txtPROXY_USER: TMemo;
    txtPROXY_PASSWORD: TMemo;
    txtPROXY_DOMAIN: TMemo;
    txtPROXY_PREEMPTIVE: TMemo;
    txtAUTH: TMemo;
    txtSMTP: TMemo;
    txtSMTP_HOST: TMemo;
    txtSMTP_PORT: TMemo;
    txtSMTP_AUTH: TMemo;
    txtSMTP_TLS: TMemo;
    txtSMTP_USER: TMemo;
    txtSMTP_USER_NAME: TMemo;
    txtSMTP_USER_LOGIN: TMemo;
    txtSMTP_PASSWORD: TMemo;
    txtHORA_INUTILIZACAO: TMemo;
    txtRETRY_ERROR_LIST_COUNT: TMemo;
    txtCONTINGENCY_CODE_LIST: TMemo;
    txtRETRY_ERRO_AND_CONTIGENCY: TMemo;
    Label75: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    txtSUCCESS_LIST: TMemo;
    Label82: TLabel;
    txtIGNORE_INUTILIZACAO_LIST: TMemo;
    Label83: TLabel;
    txtNUMERO_DIAS_PARA_RESOLUCAO_NOTAS_ERRO: TMemo;
    Label84: TLabel;
    txtQNTD_NOTAS_COM_ERRO_RESOLUCAO: TMemo;
    Label85: TLabel;
    Label87: TLabel;
    txtINCLUIR_RECEBIDO_TROCO_NOTA: TMemo;
    Label41: TLabel;
    txtDANFE_SUPER_SCRIPT: TMemo;
    Label77: TLabel;
    txtRETRY_ERROR_LIST: TMemo;
    Button1: TButton;
    btnJson: TButton;
    btnCancelar: TButton;
    procedure btnLerParametrosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnJsonClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormHide(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracoes: TfrmConfiguracoes;

implementation
    Uses principal, json;
{$R *.dfm}



procedure TfrmConfiguracoes.btnCancelarClick(Sender: TObject);
var
i:Integer;
begin
  frmConfiguracoes.Hide;
  frmPrincipal.Show;
end;

procedure TfrmConfiguracoes.btnJsonClick(Sender: TObject);
var
          URL, Retorno, JsonString: WideString ;
          jsonConfiguracoes, cortaExtrato, jsonPair: TJSONObject;
          configuracoes:TJSONArray;
          jsonPrincipal: TJsonPair;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;

begin
                     //JSon principal
                   jsonConfiguracoes :=  TJSONObject.Create;
                   configuracoes :=  TJSONArray.Create;
                   jsonPrincipal := TJSONPair.Create('configuracao', configuracoes);

                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'APP_ROOT_PATH'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtAPP_ROOT_PATH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'ENABLE_GUI'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtENABLE_GUI.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'WHITE_LABEL'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtWHITE_LABEL.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_NEW'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_NEW.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_SIGN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_SIGN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_CUSTODY'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_CUSTODY.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_BACKUP'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_BACKUP.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_ERRORS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_ERRORS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_DANFE_CONTINGENCIA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_DANFE_CONTINGENCIA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_QRCODE_CONSULTA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_QRCODE_CONSULTA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'QRCODE_TOKEN_ID'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtQRCODE_TOKEN_ID.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'QRCODE_TOKEN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtQRCODE_TOKEN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'TRUST_STORE_PATH'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtTRUST_STORE_PATH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'FILE_CERTIFICADO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtFILE_CERTIFICADO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NFCE_AMBIENTE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNFCE_AMBIENTE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NFCE_UF'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNFCE_UF.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NFCE_VERSAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNFCE_VERSAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INFO_RODAPE_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINFO_RODAPE_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'REMOVE_ACENTOS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtREMOVE_ACENTOS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DADOS_RODAPE_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDADOS_RODAPE_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCIA_AUTOMATICA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCIA_AUTOMATICA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCY_TIME_IN_MINUTES'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_TIME_IN_MINUTES.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCY_SWITCHING_AUTO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_SWITCHING_AUTO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NOVA_EMISSAO_EM_PRIMEIRA_CONTINGENCIA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNOVA_EMISSAO_EM_PRIMEIRA_CONTINGENCIA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCY_RETURN_ONLY_99990'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_RETURN_ONLY_99990.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'FISCAL_CLOUD_ENABLE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtFISCAL_CLOUD_ENABLE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'FISCAL_CLOUD_URL'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtFISCAL_CLOUD_URL.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CNPJ_CONTRIBUINTE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCNPJ_CONTRIBUINTE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'ID_PDV'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtID_PDV.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CUSTODY_SEND_MAX_DOCS_PER_MINUTE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCUSTODY_SEND_MAX_DOCS_PER_MINUTE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'IE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtIE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_RECEPCAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_RECEPCAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_RET_RECEPCAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_RET_RECEPCAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_AUTORIZACAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_AUTORIZACAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_RET_AUTORIZACAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_RET_AUTORIZACAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_RECEPCAO_EVE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_RECEPCAO_EVE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_INUTILIZACAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_INUTILIZACAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_STATUS_SERV'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_STATUS_SERV.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_CONSULTA_NF'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_CONSULTA_NF.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONNECTION_TIMEOUT_IN_SECONDS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONNECTION_TIMEOUT_IN_SECONDS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SOCKET_DYNAMIC'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSOCKET_DYNAMIC.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINTER_URI'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINTER_URI.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINT_DANFE_ITEMS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINT_DANFE_ITEMS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMALL_QRCODE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMALL_QRCODE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_REDUZIDO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_REDUZIDO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINT_CLICHE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINT_CLICHE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_LOGO_FILE_PATH'));
                    txtDANFE_LOGO_FILE_PATH.Text := StringReplace(txtDANFE_LOGO_FILE_PATH.Text,'\','\\',[rfReplaceAll]);
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_LOGO_FILE_PATH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINT_LOGO_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINT_LOGO_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_SUPER_SCRIPT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_SUPER_SCRIPT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_SUPER_SCRIPT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_SUPER_SCRIPT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CUT_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCUT_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SALVA_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSALVA_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_VIA_EMIT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_VIA_EMIT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINT_EAN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINT_EAN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DEBUG_SALVA_BIN_IMPRESSAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDEBUG_SALVA_BIN_IMPRESSAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INCLUIR_DESC_ACRES_ITEM'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINCLUIR_DESC_ACRES_ITEM.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INCLUIR_DESC_ACRES_NOTA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINCLUIR_DESC_ACRES_NOTA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INCLUIR_RECEBIDO_TROCO_NOTA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINCLUIR_RECEBIDO_TROCO_NOTA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INCLUIR_IMPOSTOS_POR_ITEM'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINCLUIR_IMPOSTOS_POR_ITEM.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY_USER'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY_USER.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY_PASSWORD'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY_PASSWORD.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY_DOMAIN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY_DOMAIN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY_PREEMPTIVE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY_PREEMPTIVE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'AUTH'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtAUTH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_HOST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_HOST.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_PORT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_PORT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_AUTH'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_AUTH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_TLS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_TLS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_USER'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_USER.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_USER_NAME'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_USER_NAME.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_USER_LOGIN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_USER_LOGIN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_PASSWORD'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_PASSWORD.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'HORA_INUTILIZACAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtHORA_INUTILIZACAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'RETRY_ERROR_LIST_COUNT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtRETRY_ERROR_LIST_COUNT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'RETRY_ERROR_LIST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtRETRY_ERROR_LIST.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCY_CODE_LIST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_CODE_LIST.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'RETRY_ERRO_AND_CONTIGENC'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtRETRY_ERRO_AND_CONTIGENCY.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SUCCESS_LIST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_CODE_LIST.Text));
                    configuracoes.AddElement(jsonPair);


                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'IGNORE_INUTILIZACAO_LIST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_CODE_LIST.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NUMERO_DIAS_PARA_RESOLUCAO_NOTAS_ERRO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNUMERO_DIAS_PARA_RESOLUCAO_NOTAS_ERRO.Text));
                    configuracoes.AddElement(jsonPair);


                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'QNTD_NOTAS_COM_ERRO_RESOLUCAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtQNTD_NOTAS_COM_ERRO_RESOLUCAO.Text));
                    configuracoes.AddElement(jsonPair);



                    jsonConfiguracoes.AddPair(jsonPrincipal);


                  JsonString := jsonConfiguracoes.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  JsonToSend := TMemoryStream.Create;

                  //JsonString := jsonPagamento.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  frmJSon.memoJSon.Clear;
                  frmJSon.memoJSon.Text :=   JsonString;
                  frmJSon.Show;
end;

procedure TfrmConfiguracoes.btnLerParametrosClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj,item: TJSONObject;
          configuracao: TJSONArray;

      begin
        begin

              URL := 'http://localhost:9999/api/v1/sistema/configuracoes';

            try
                FrmPrincipal.HTTP.Request.ContentType := 'application/json';
                FrmPrincipal.HTTP.Request.Accept := 'application/json';


                JsonStreamRetorno := frmPrincipal.Http.Get(URL);


                JsonStreamRetorno := StringReplace(JsonStreamRetorno,#13,'',[rfReplaceAll]);
                JsonStreamRetorno := StringReplace(JsonStreamRetorno,#10,'',[rfReplaceAll]);

                jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;
                configuracao := TJSONArray(jsonObj.Get('configuracao').JsonValue);

                item := TJsonObject(configuracao.Get(0));
                txtAPP_ROOT_PATH.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(1));
                txtENABLE_GUI.Text :=  item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(2));
                txtWHITE_LABEL.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(3));
                txtPATH_NFCE_NEW.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(4));
                txtPATH_NFCE_SIGN.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(5));
                txtPATH_NFCE_CUSTODY.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(6));
                txtPATH_NFCE_BACKUP.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(7));
                txtPATH_NFCE_ERRORS.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(8));
                txtPATH_NFCE_DANFE.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(9));
                txtPATH_NFCE_DANFE_CONTINGENCIA.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(10));
                txtURL_QRCODE_CONSULTA.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(11));
                txtQRCODE_TOKEN_ID.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(12));
                txtQRCODE_TOKEN.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(13));
                txtTRUST_STORE_PATH.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(14));
                txtFILE_CERTIFICADO.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(15));
                txtURL_DANFE.Text   := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(16));
                txtNFCE_AMBIENTE.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(17));
                txtNFCE_UF.Text :=item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(18));
                txtNFCE_VERSAO.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(19));
                txtINFO_RODAPE_DANFE.Text  := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(20));
                txtREMOVE_ACENTOS.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(21));
                txtDADOS_RODAPE_DANFE.Text  := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(22));
                txtCONTINGENCIA_AUTOMATICA.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(23));
                txtCONTINGENCY_TIME_IN_MINUTES.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(24));
                txtCONTINGENCY_SWITCHING_AUTO.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(25));
                txtNOVA_EMISSAO_EM_PRIMEIRA_CONTINGENCIA.Text  := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(26));
                txtCONTINGENCY_RETURN_ONLY_99990.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(27));
                txtFISCAL_CLOUD_ENABLE.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(28));
                txtFISCAL_CLOUD_URL.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(29));
                txtCNPJ_CONTRIBUINTE.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(30));
                txtID_PDV.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(31));
                txtCUSTODY_SEND_MAX_DOCS_PER_MINUTE.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(32));
                txtIE.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(33));
                txtURL_NFE_RECEPCAO.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(34));
                txtURL_NFE_RET_RECEPCAO.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(35));
                txtURL_NFE_AUTORIZACAO.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(36));
                txtURL_NFE_RET_AUTORIZACAO.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(37));
                txtURL_NFE_RECEPCAO_EVE.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(38));
                txtURL_NFE_INUTILIZACAO.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(39));
                txtURL_NFE_STATUS_SERV.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(40));
                txtURL_NFE_CONSULTA_NF.Text  := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(41));
                txtCONNECTION_TIMEOUT_IN_SECONDS.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(42));
                txtSOCKET_DYNAMIC.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(44));
                txtPRINTER_URI.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(45));
                txtPRINT_DANFE_ITEMS.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(46));
                txtSMALL_QRCODE.Text  := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(47));
                txtDANFE_REDUZIDO.Text  := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(48));
                txtPRINT_CLICHE.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(49));
                txtDANFE_LOGO_FILE_PATH.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(50));
                txtPRINT_LOGO_DANFE.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(51));
                txtDANFE_SUPER_SCRIPT.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(52));
                txtCUT_DANFE.Text   := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(53));
                txtSALVA_DANFE.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(54));
                txtDANFE_VIA_EMIT.Text  := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(55));
                txtPRINT_EAN.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(56));
                txtDEBUG_SALVA_BIN_IMPRESSAO.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(57));
                txtINCLUIR_DESC_ACRES_ITEM.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(58));
                txtINCLUIR_DESC_ACRES_NOTA.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(59));
                txtINCLUIR_RECEBIDO_TROCO_NOTA.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(60));
                txtINCLUIR_IMPOSTOS_POR_ITEM.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(61));
                txtPROXY.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(62));
                txtPROXY_HOST.Text   := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(63));
                txtPROXY_PORT.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(64));
                txtPROXY_USER.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(65));
                txtPROXY_PASSWORD.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(66));
                txtPROXY_DOMAIN.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(67));
                txtPROXY_PREEMPTIVE.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(68));
                txtAUTH.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(69));
                txtSMTP.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(70));
                txtSMTP_HOST.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(71));
                txtSMTP_PORT.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(72));
                txtSMTP_AUTH.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(73));
                txtSMTP_TLS.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(74));
                txtSMTP_USER.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(75));
                txtSMTP_USER_NAME.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(76));
                txtSMTP_USER_LOGIN.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(77));
                txtSMTP_PASSWORD.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(78));
                txtHORA_INUTILIZACAO.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(79));
                txtRETRY_ERROR_LIST_COUNT.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(80));
                txtRETRY_ERROR_LIST.Text := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(81));
                txtCONTINGENCY_CODE_LIST.Text  := item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(82));
                txtRETRY_ERRO_AND_CONTIGENCY.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(83));
                txtSUCCESS_LIST.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(84));
                txtIGNORE_INUTILIZACAO_LIST.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(85));
                txtNUMERO_DIAS_PARA_RESOLUCAO_NOTAS_ERRO.Text:= item.Get(1).JsonValue.Value;

                item := TJsonObject(configuracao.Get(86));
                txtQNTD_NOTAS_COM_ERRO_RESOLUCAO.Text:= item.Get(1).JsonValue.Value;

                frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                Button1.Enabled :=  true;

               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
        end;
end;

procedure TfrmConfiguracoes.Button1Click(Sender: TObject);
   var
          URL, Retorno, JsonString: WideString ;
          jsonConfiguracoes, cortaExtrato, jsonPair: TJSONObject;
          configuracoes:TJSONArray;
          jsonPrincipal: TJsonPair;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
          i:Integer;

      begin
       if (Application.MessageBox('Tem certeza que deseja gravar? Todos as configurações do Fiscal Manager serão sobreescritas.','Cancelar',mb_yesno + mb_iconquestion) = id_yes) then
        begin
                   //JSon principal
                   jsonConfiguracoes :=  TJSONObject.Create;
                   configuracoes :=  TJSONArray.Create;
                   jsonPrincipal := TJSONPair.Create('configuracao', configuracoes);

                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'APP_ROOT_PATH'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtAPP_ROOT_PATH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'ENABLE_GUI'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtENABLE_GUI.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'WHITE_LABEL'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtWHITE_LABEL.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_NEW'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_NEW.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_SIGN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_SIGN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_CUSTODY'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_CUSTODY.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_BACKUP'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_BACKUP.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_ERRORS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_ERRORS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PATH_NFCE_DANFE_CONTINGENCIA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPATH_NFCE_DANFE_CONTINGENCIA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_QRCODE_CONSULTA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_QRCODE_CONSULTA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'QRCODE_TOKEN_ID'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtQRCODE_TOKEN_ID.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'QRCODE_TOKEN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtQRCODE_TOKEN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'TRUST_STORE_PATH'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtTRUST_STORE_PATH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'FILE_CERTIFICADO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtFILE_CERTIFICADO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NFCE_AMBIENTE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNFCE_AMBIENTE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NFCE_UF'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNFCE_UF.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NFCE_VERSAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNFCE_VERSAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INFO_RODAPE_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINFO_RODAPE_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'REMOVE_ACENTOS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtREMOVE_ACENTOS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DADOS_RODAPE_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDADOS_RODAPE_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCIA_AUTOMATICA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCIA_AUTOMATICA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCY_TIME_IN_MINUTES'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_TIME_IN_MINUTES.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCY_SWITCHING_AUTO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_SWITCHING_AUTO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NOVA_EMISSAO_EM_PRIMEIRA_CONTINGENCIA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNOVA_EMISSAO_EM_PRIMEIRA_CONTINGENCIA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCY_RETURN_ONLY_99990'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_RETURN_ONLY_99990.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'FISCAL_CLOUD_ENABLE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtFISCAL_CLOUD_ENABLE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'FISCAL_CLOUD_URL'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtFISCAL_CLOUD_URL.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CNPJ_CONTRIBUINTE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCNPJ_CONTRIBUINTE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'ID_PDV'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtID_PDV.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CUSTODY_SEND_MAX_DOCS_PER_MINUTE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCUSTODY_SEND_MAX_DOCS_PER_MINUTE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'IE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtIE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_RECEPCAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_RECEPCAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_RET_RECEPCAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_RET_RECEPCAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_AUTORIZACAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_AUTORIZACAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_RET_AUTORIZACAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_RET_AUTORIZACAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_RECEPCAO_EVE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_RECEPCAO_EVE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_INUTILIZACAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_INUTILIZACAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_STATUS_SERV'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_STATUS_SERV.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'URL_NFE_CONSULTA_NF'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtURL_NFE_CONSULTA_NF.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONNECTION_TIMEOUT_IN_SECONDS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONNECTION_TIMEOUT_IN_SECONDS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SOCKET_DYNAMIC'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSOCKET_DYNAMIC.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINTER_URI'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINTER_URI.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINT_DANFE_ITEMS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINT_DANFE_ITEMS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMALL_QRCODE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMALL_QRCODE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_REDUZIDO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_REDUZIDO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINT_CLICHE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINT_CLICHE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_LOGO_FILE_PATH'));
                    txtDANFE_LOGO_FILE_PATH.Text := StringReplace(txtDANFE_LOGO_FILE_PATH.Text,'\','\\',[rfReplaceAll]);
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_LOGO_FILE_PATH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINT_LOGO_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINT_LOGO_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_SUPER_SCRIPT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_SUPER_SCRIPT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_SUPER_SCRIPT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_SUPER_SCRIPT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CUT_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCUT_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SALVA_DANFE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSALVA_DANFE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DANFE_VIA_EMIT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDANFE_VIA_EMIT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PRINT_EAN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPRINT_EAN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'DEBUG_SALVA_BIN_IMPRESSAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtDEBUG_SALVA_BIN_IMPRESSAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INCLUIR_DESC_ACRES_ITEM'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINCLUIR_DESC_ACRES_ITEM.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INCLUIR_DESC_ACRES_NOTA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINCLUIR_DESC_ACRES_NOTA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INCLUIR_RECEBIDO_TROCO_NOTA'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINCLUIR_RECEBIDO_TROCO_NOTA.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'INCLUIR_IMPOSTOS_POR_ITEM'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtINCLUIR_IMPOSTOS_POR_ITEM.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY_USER'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY_USER.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY_PASSWORD'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY_PASSWORD.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY_DOMAIN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY_DOMAIN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'PROXY_PREEMPTIVE'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtPROXY_PREEMPTIVE.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'AUTH'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtAUTH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_HOST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_HOST.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_PORT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_PORT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_AUTH'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_AUTH.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_TLS'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_TLS.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_USER'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_USER.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_USER_NAME'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_USER_NAME.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_USER_LOGIN'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_USER_LOGIN.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SMTP_PASSWORD'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtSMTP_PASSWORD.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'HORA_INUTILIZACAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtHORA_INUTILIZACAO.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'RETRY_ERROR_LIST_COUNT'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtRETRY_ERROR_LIST_COUNT.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'RETRY_ERROR_LIST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtRETRY_ERROR_LIST.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'CONTINGENCY_CODE_LIST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_CODE_LIST.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'RETRY_ERRO_AND_CONTIGENCY'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtRETRY_ERRO_AND_CONTIGENCY.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'SUCCESS_LIST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_CODE_LIST.Text));
                    configuracoes.AddElement(jsonPair);


                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'IGNORE_INUTILIZACAO_LIST'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtCONTINGENCY_CODE_LIST.Text));
                    configuracoes.AddElement(jsonPair);

                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'NUMERO_DIAS_PARA_RESOLUCAO_NOTAS_ERRO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtNUMERO_DIAS_PARA_RESOLUCAO_NOTAS_ERRO.Text));
                    configuracoes.AddElement(jsonPair);


                    jsonPair := nil;
                    jsonPair := TJsonObject.Create();
                    jsonPair.AddPair(TJSONPair.Create('nome', 'QNTD_NOTAS_COM_ERRO_RESOLUCAO'));
                    jsonPair.AddPair(TJSONPair.Create('valor', txtQNTD_NOTAS_COM_ERRO_RESOLUCAO.Text));
                    configuracoes.AddElement(jsonPair);



                    jsonConfiguracoes.AddPair(jsonPrincipal);


                  JsonString := jsonConfiguracoes.ToString;
                  JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                  JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                  JsonToSend := TMemoryStream.Create;
        begin
                  JsonToSend := TMemoryStream.Create;

              WriteStringToStream(JsonToSend, JsonString, enUTF8);
              JsonToSend.Position := 0;

              URL := 'http://localhost:9999/api/v1/sistema/configuracoes';

            try
                frmPrincipal.HTTP.Request.ContentType := 'application/json';
                frmPrincipal.HTTP.Request.CharSet := 'utf-8';
                frmPrincipal.Http.Response.ContentType :='application/json';
                frmPrincipal.Http.Response.CharSet := 'UTF-8';

               // memojson.Lines.Add(JsonString);

                JsonStreamRetorno := frmPrincipal.Http.Post(URL, JsonToSend);


                frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);
                //memoresultado.Lines.add('1=' + JsonStreamRetorno);
                //memoresultado.Lines.add('3=' + Retorno);
               FrmConfiguracoes.Hide;
               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);
              end
            end;
          end;
      end;

procedure TfrmConfiguracoes.FormHide(Sender: TObject);
var
i:Integer;
    begin
                  for i := 0 to ComponentCount-1 do
                  if (Components[i] is TMemo) then
                  begin
                    TMemo(Components[i]).Text := '';
                  end;
      Button1.Enabled := false;
      end;

end.
