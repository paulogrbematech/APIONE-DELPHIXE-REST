unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi, jpeg;

type
  TfrmPrincipal = class(TForm)
    HTTP: TIdHTTP;
    memoSessao: TMemo;
    Label1: TLabel;
    Image1: TImage;
    lblAjuda: TLabel;
    GroupBox6: TGroupBox;
    GroupBox1: TGroupBox;
    btnStatus: TButton;
    btnVendeItem: TButton;
    btnAbrirCupom: TButton;
    Label3: TLabel;
    memoCfe: TMemo;
    btnContingencia: TButton;
    GroupBox2: TGroupBox;
    memoresultado: TMemo;
    GroupBox3: TGroupBox;
    btnPagamento: TButton;
    btnEfetuarPagamentoCredenciadora: TButton;
    btnLimparlog: TButton;
    GroupBox4: TGroupBox;
    btnFecharCupom: TButton;
    btnCancelar: TButton;
    Button1: TButton;
    procedure btnAbrirCupomClick(Sender: TObject);
    procedure btnVenderItemClick(Sender: TObject);
    procedure btnPagamentoClick(Sender: TObject);
    procedure btnFecharCupomClick(Sender: TObject);
    procedure LimparLogClick(Sender: TObject);
    procedure lblAjudaClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnVendeItemClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnContingenciaClick(Sender: TObject);
    procedure btnEfetuarPagamentoCredenciadoraClick(Sender: TObject);
    procedure btnLimparlogClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  Sessao : AnsiString;
  cfe: AnsiString;
  json:AnsiString;
  simplesNacional: boolean;

implementation
  Uses AbreCupom, VenderItem, EfetuarPagamento, FecharCupom, CancelarCupom, Configuracoes, Status,EfetuarPagamentoCredenciadora, Json, VendaCompleta;

{$R *.dfm}

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  frmCancelarCupom.Show;
end;

procedure TfrmPrincipal.btnContingenciaClick(Sender: TObject);
begin
  frmConfiguracoes.Show;
end;

procedure TfrmPrincipal.btnEfetuarPagamentoCredenciadoraClick(Sender: TObject);
begin
  frmEfetuarPagamentoCredenciadora.Show;
end;

procedure TfrmPrincipal.btnFecharCupomClick(Sender: TObject);
begin
  frmFecharcupom.Show;
end;

procedure TfrmPrincipal.btnLimparlogClick(Sender: TObject);
begin
  memoresultado.Clear;
end;

procedure TfrmPrincipal.btnPagamentoClick(Sender: TObject);
    begin
      frmEfetuarPagamento.Show;
    end;

procedure TfrmPrincipal.btnStatusClick(Sender: TObject);
begin
  frmStatus.Show;

end;

procedure TfrmPrincipal.btnVendeItemClick(Sender: TObject);
begin
  frmVenderItem.Show;
  frmVenderItem.btnInserirICMS.Enabled := false;
  frmVenderItem.btnInserirSimples.Enabled := false;
  frmVenderItem.btnInserirPIS.Enabled :=false;
  frmVenderItem.bntInserirCOFINS.Enabled :=false;
  frmVenderItem.btnVenderItem.Enabled := false;
end;

procedure TfrmPrincipal.btnVenderItemClick(Sender: TObject);
      var

          URL, Retorno, JsonString: WideString ;
          Json,JsonToSend :TMemoryStream;
          JsonStreamRetorno: AnsiString;

      begin
        begin
                        //JsonString := MemoVenda.Lines.GetText();
                        JsonToSend := TMemoryStream.Create;
              //JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
              //JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

              WriteStringToStream(JsonToSend, JsonString, enUTF8);
              JsonToSend.Position := 0;

              URL := 'http://localhost:9999/api/v1/documento/cupom/'+sessao+'/item';

            try
              HTTP.Request.ContentType := 'application/json';
              HTTP.Request.CharSet := 'utf-8';
               Http.Response.ContentType :='application/json';
                Http.Response.CharSet := 'UTF-8';

               // memojson.Lines.Add(JsonString);

                JsonStreamRetorno := Http.Post(URL, JsonToSend);


                memoresultado.Lines.add(JsonStreamRetorno);
                //memoresultado.Lines.add('1=' + JsonStreamRetorno);
                //memoresultado.Lines.add('3=' + Retorno);

               except on E:EIdHTTPProtocolException do
                  memoresultado.Lines.add(e.ErrorMessage);

              end;
          end;

        end;





procedure TfrmPrincipal.Button1Click(Sender: TObject);
      begin
        FrmVendaCompleta.Show;
      end;

procedure TfrmPrincipal.LimparLogClick(Sender: TObject);
begin
  memoSessao.Lines.Clear();
  memoResultado.Lines.Clear();
end;



procedure TfrmPrincipal.btnAbrirCupomClick(Sender: TObject);
  var
    taskDialog: TTaskDialog;
    taskButton: TTaskDialogBaseButtonItem;
  begin
      taskDialog := TTaskDialog.Create(nil);
      try
        taskDialog.Caption := 'Escolher regime do imposto';
        taskDialog.Text := 'Utilizar regime normal ou simples nacional?';
        taskDialog.MainIcon := tdiWarning;
        taskDialog.CommonButtons := [];

        taskButton := taskDialog.Buttons.Add;
        taskButton.Caption := 'Regime Normal';
        taskButton.ModalResult := 100;

        taskButton := taskDialog.Buttons.Add;
        taskButton.Caption := 'Simples Nacional';
        taskButton.ModalResult := 101;

        taskDialog.Execute;

        if taskDialog.ModalResult = 100 then
        begin
          simplesNacional :=   false;
          frmAbreCupom.Show;
        end;

        if taskDialog.ModalResult = 101 then
        begin
          simplesNacional :=   true;
          frmAbreCupom.Show;
        end;


      finally
        taskDialog.Free;
      end;

  end;
procedure TfrmPrincipal.lblAjudaClick(Sender: TObject);
var
  Link: string;
begin
  Link := 'http://localhost:9999/docs/';
  ShellExecute(Application.Handle, PChar('open'), PChar(Link),nil, nil, SW_SHOW);
end;

end.
