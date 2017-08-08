unit Status;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, xmldom, XMLIntf, msxmldom, XMLDoc;


type
  TfrmStatus = class(TForm)
    GroupBox1: TGroupBox;
    lblOvr: TLabel;
    lblOffline: TLabel;
    lblWait: TLabel;
    lblBufstat: TLabel;
    lblPnes: TLabel;
    Label17: TLabel;
    txtOvr: TMemo;
    txtOffline: TMemo;
    txtWait: TMemo;
    txtBufStat: TMemo;
    txtPnes: TMemo;
    lblFirmware: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    memoPS: TMemo;
    memoNre: TMemo;
    Label13: TLabel;
    memonoPaper: TMemo;
    Label9: TLabel;
    memoDrawer: TMemo;
    Label7: TLabel;
    memoError: TMemo;
    Label8: TLabel;
    memoCa: TMemo;
    Label10: TLabel;
    Label12: TLabel;
    memoCe: TMemo;
    Label11: TLabel;
    memoCover: TMemo;
    Label16: TLabel;
    memoCmd: TMemo;
    Label15: TLabel;
    memoHoh: TMemo;
    memoRe: TMemo;
    Label14: TLabel;
    btnVerificarStatus: TButton;
    procedure btnVerificarStatusClick(Sender: TObject);
    procedure Atualizar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatus: TfrmStatus;

implementation
   Uses Principal;
{$R *.dfm}

procedure TfrmStatus.btnVerificarStatusClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;
          jsonObj:TJSONObject;

      begin
        begin

              URL := 'http://localhost:9999/api/v1/impressora';

            try
                FrmPrincipal.HTTP.Request.ContentType := 'application/json';
                FrmPrincipal.HTTP.Request.Accept := 'application/json';

                JsonStreamRetorno := frmPrincipal.Http.Get(URL);

               // XML := NewXMLDocument;
                //XML.Encoding := 'UTF-8';
                //XML.Options := [doNodeAutoIndent];
                JsonStreamRetorno := StringReplace(JsonStreamRetorno,#13,'',[rfReplaceAll]);
                JsonStreamRetorno := StringReplace(JsonStreamRetorno,#10,'',[rfReplaceAll]);

                jsonObj := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(JsonStreamRetorno), 0) as TJSONObject;

                txtOvr.Text := jsonObj.Get(0).JsonValue.Value;
                txtOffline.Text := jsonObj.Get(1).JsonValue.Value;
                txtWait.Text := jsonObj.Get(2).JsonValue.Value;
                txtBufStat.Text := jsonObj.Get(3).JsonValue.Value;
                txtPnes.Text := jsonObj.Get(4).JsonValue.Value;
                MemoPS.Text := jsonObj.Get(5).JsonValue.Value;
                MemonoPaper.Text := jsonObj.Get(6).JsonValue.Value;
                memoDrawer.Text := jsonObj.Get(7).JsonValue.Value;
                memoError.Text := jsonObj.Get(8).JsonValue.Value;
                memoCover.Text := jsonObj.Get(9).JsonValue.Value;
                memoCa.Text := jsonObj.Get(10).JsonValue.Value;
                memoCe.Text := jsonObj.Get(11).JsonValue.Value;
                memoNre.Text := jsonObj.Get(12).JsonValue.Value;
                memoRe.Text := jsonObj.Get(13).JsonValue.Value;
                memoHoh.Text := jsonObj.Get(14).JsonValue.Value;
                memoCmd.Text := jsonObj.Get(15).JsonValue.Value;
                lblFirmware.Caption := jsonObj.Get(16).JsonValue.Value;

                if txtOvr.Text = '0' then
                begin
                  lblOvr.Caption := 'Impressora pronta.';
                end else
                begin
                  lblOvr.Caption := 'Impressora em erro.';
                end;

               //txtOffline.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['offline'].Text;

               if txtOffline.Text = '0' then
                begin
                  lblOffline.Caption := 'Impressora online.';
                end else
                begin
                  lblOffline.Caption := 'Impressora offline.';
                end;

                //txtWait.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['wait'].Text;
               if txtWait.Text = '1' then
                begin
                  lblWait.Caption := 'Impressora ocupada(imprimindo).';
                end else
                begin
                  lblWait.Caption := 'Buffer da impressora vazio e esperando comandos.';
                end;


               //txtBufStat.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['bufStat'].Text;
               if txtBufStat.Text = '00' then
                begin
                  lblBufStat.Caption := 'Buffer da impressora vazio.';
                end;
               if txtBufStat.Text = '01' then
                begin
                  lblBufStat.Caption := 'Buffer da impressora abaixo de 1/3 da capacidade.';
                end;

                if txtBufStat.Text = '10 ' then
                begin
                  lblBufStat.Caption := 'Buffer da impressora acima de 1/3 da capacidade.';
                end;


                if txtBufStat.Text = '11 ' then
                begin
                  lblWait.Caption := 'Buffer da impressora acima de 3/4 da capacidade.';
                end;

               // txtPnes.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['pnes'].Text;

                if txtPnes.Text = '0' then
                begin
                  lblPnes.Caption := 'Quantidade de papel OK.';
                end else
                begin
                  lblPnes.Caption := 'O papel está acabando';
                end;



                //memoPS.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['ps'].Text;

                //memonoPaper.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['drawer'].Text;
                //memoDrawer.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['noPaper'].Text;
               // memoError.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['error'].Text;

                //memoCover.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['cover'].Text;
                //memoCa.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['ca'].Text;
                //memoCe.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['ce'].Text;

               // memoNre.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['nre'].Text;
               // memoRe.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['re'].Text;
               // memoHoh.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['hoh'].Text;

               // memoCmd.Text := XML.ChildNodes['impressoraStatus'].ChildNodes['cmd'].Text;
               // lblFirmware.Caption := XML.ChildNodes['impressoraStatus'].ChildNodes['firmwareVersion'].Text;


                frmPrincipal.memoresultado.Lines.add(JsonStreamRetorno);


               except on E:EIdHTTPProtocolException do
                  frmPrincipal.memoresultado.Lines.add(e.ErrorMessage);

              end;
        end;
end;
procedure TfrmStatus.Atualizar(Sender: TObject);
        begin
          frmStatus.btnVerificarStatusClick(Sender);
        end;

end.
