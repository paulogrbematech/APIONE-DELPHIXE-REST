unit InserirICMSSimplesNacional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmInserirICMSSimplesNacional = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
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
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    txtPredBCST: TEdit;
    txtpMVAST: TEdit;
    txtpRedBC: TEdit;
    txtVbc: TEdit;
    txtpICMS: TEdit;
    txtVicms: TEdit;
    txtVBCst: TEdit;
    txtPICMSST: TEdit;
    txtVicmsst: TEdit;
    txtVBCSTret: TEdit;
    txtvCredICMSSN: TEdit;
    txtpCredSN: TEdit;
    txtvICMSRet: TEdit;
    txtVtotTrib: TEdit;
    txtmodBCST: TComboBox;
    txtModBC: TComboBox;
    btnFechar: TButton;
    btnInserir: TButton;
    txtCSOSN: TComboBox;
    procedure btnInserirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInserirICMSSimplesNacional: TfrmInserirICMSSimplesNacional;

implementation
    uses Principal, json, VenderItem;
{$R *.dfm}

procedure TfrmInserirICMSSimplesNacional.btnFecharClick(Sender: TObject);
begin
  FrmInserirICMSSimplesNacional.Hide;
end;

procedure TfrmInserirICMSSimplesNacional.btnInserirClick(Sender: TObject);
      var
          URL, Retorno: WideString ;
          icms101,icms102,icms201,icms202,icms500,icms900, icms: TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;


      begin
        if (jsonVenda <> nil) then
        begin
                    //Cria sessão imposto
                    imposto := TJSONObject.Create;
                    imposto.AddPair('vTotTrib', TJSONNumber.Create(txtvTotTrib.Text));

                    //Cria sessão icms
                    icms := TJSONObject.Create;

                   //----------------------------------------------------------------
                   //Verifica qual o tipo de ICMS e adiciona de acordo com a seleção
                   if txtCSOSN.Text = '101'  then
                    begin
                      //imposto.AddPair('vItem12741',TJSONString.Create(txtvItem12741.Text));)
                      icms101 := TJSONObject.Create;
                      icms101.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms101.AddPair('csosn', TJSONNumber.Create(txtcsosn.Text));
                      icms101.AddPair('pCredSN', TJSONNumber.Create(txtpCredSN.Text[1]));
                      icms101.AddPair('vCredICMSSN', TJSONNumber.Create(txtvCredICMSSN.Text));

                      //Adiciona icms101 em icms
                      icms.AddPair('icmssn101', icms101);
                    end;

                    if txtCSOSN.Text = '102' then
                    begin
                      icms102 := TJSONObject.Create;
                      icms102.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms102.AddPair('csosn', TJSONNumber.Create(txtcsosn.Text));

                      //Adiciona icms102 em icms
                      icms.AddPair('icmssn102', icms102);
                    end;

                    if txtCSOSN.Text = '201' then
                    begin
                      icms201 := TJSONObject.Create;
                      icms201.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms201.AddPair('csosn', TJSONNumber.Create(txtcsosn.Text));
                      icms201.AddPair('modBCST', TJSONNumber.Create(txtmodBCST.Text[1]));
                      icms201.AddPair('pmvast', TJSONNumber.Create(txtpmvast.Text));
                      icms201.AddPair('pRedBCST', TJSONNumber.Create(txtpRedBCST.Text));
                      icms201.AddPair('vbcst', TJSONNumber.Create(txtvbcst.Text));
                      icms201.AddPair('picmsst', TJSONNumber.Create(txtpicmsst.Text));
                      icms201.AddPair('vicmsst', TJSONNumber.Create(txtvicmsst.Text));
                      icms201.AddPair('pCredSN', TJSONNumber.Create(txtpCredSN.Text));
                      icms201.AddPair('vCredICMSSN', TJSONNumber.Create(txtvCredICMSSN.Text));

                      //Adiciona icms201 em icms
                      icms.AddPair('icmssn201', icms201);
                    end;

                    if txtCSOSN.Text = '202' then
                    begin
                      icms202 := TJSONObject.Create;
                      icms202.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms202.AddPair('csosn', TJSONNumber.Create(txtcsosn.Text));
                      icms202.AddPair('modBCST', TJSONNumber.Create(txtmodBCST.Text[1]));
                      icms202.AddPair('pmvast', TJSONNumber.Create(txtpmvast.Text));
                      icms202.AddPair('pRedBCST', TJSONNumber.Create(txtpRedBCST.Text));
                      icms202.AddPair('vbcst', TJSONNumber.Create(txtvbcst.Text));
                      icms202.AddPair('picmsst', TJSONNumber.Create(txtpicmsst.Text));
                      icms202.AddPair('vicmsst', TJSONNumber.Create(txtvicmsst.Text));

                      //Adiciona icms202 em icms
                      icms.AddPair('icmssn202', icms202);
                    end;

                    if txtCSOSN.Text = '500' then
                    begin
                      icms500 := TJSONObject.Create;
                      icms500.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms500.AddPair('csosn', TJSONNumber.Create(txtcsosn.Text));
                      icms500.AddPair('vbcstRet', TJSONNumber.Create(txtvbcstRet.Text));
                      icms500.AddPair('vicmsstRet', TJSONNumber.Create(txtvICMSRet.Text));

                      //Adiciona icms500 em icms
                      icms.AddPair('icmssn500', icms500);
                    end;

                    if txtCSOSN.Text = '900' then
                    begin
                      icms900 := TJSONObject.Create;
                      icms900.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms900.AddPair('csosn', TJSONNumber.Create(txtcsosn.Text));
                      icms900.AddPair('modBC', TJSONNumber.Create(txtmodBC.Text[1]));
                      icms900.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                      icms900.AddPair('pRedBC', TJSONNumber.Create(txtpRedBC.Text));
                      icms900.AddPair('picms', TJSONNumber.Create(txtpicms.Text));
                      icms900.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));
                      icms900.AddPair('modBCST', TJSONNumber.Create(txtmodBCST.Text[1]));
                      icms900.AddPair('pmvast', TJSONNumber.Create(txtpmvast.Text));
                      icms900.AddPair('pRedBCST', TJSONNumber.Create(txtpRedBCST.Text));
                      icms900.AddPair('vbcst', TJSONNumber.Create(txtvbcst.Text));
                      icms900.AddPair('picmsst', TJSONNumber.Create(txtpicmsst.Text));
                      icms900.AddPair('vicmsst', TJSONNumber.Create(txtvicmsst.Text));
                      icms900.AddPair('pCredSN', TJSONNumber.Create(txtpCredSN.Text));
                      icms900.AddPair('vCredICMSSN', TJSONNumber.Create(txtvCredICMSSN.Text));

                      //Adiciona icms201 em icms
                      icms.AddPair('icmssn900', icms900);
                    end;

                    //----------------------------------------------------------------

                      //Adiciona icms em imposto
                      imposto.AddPair('icms',icms);

                      //Adiciona imposto no json de venda
                      //JSonVenda.AddPair('imposto',imposto);

                      //Adiciona Informação adicional de produto no json principal
                      //jsonVenda.AddPair('infAdProd', TJSONString.Create(frmVenderItem.txtinfAdProd.Text));

                      JsonString := jsonVenda.ToString;
                      JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                      JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                      FrmInserirICMSSimplesNacional.Hide;
                      FrmVenderItem.btnInserirICMS.Enabled := false;
                      FrmVenderItem.btnInserirSimples.Enabled := false;
                      FrmVenderItem.btnInserirPIS.Enabled := true;
                      FrmVenderItem.bntInserirCOFINS.Enabled := false;


        end
        else
                  Application.MessageBox('Insira os dados da venda primeiro!', 'Dados da Venda', mb_iconinformation + mb_ok);
                  FrmInserirICMSSimplesNacional.Hide;

end;
end.
