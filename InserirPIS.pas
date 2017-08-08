unit InserirPIS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmInserirPIS = class(TForm)
    txtCST: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    txtVbc: TEdit;
    txtPpis: TEdit;
    txtVpis: TEdit;
    txtQbcProd: TEdit;
    txtvAliqProd: TEdit;
    btnInserirPIS: TButton;
    btnFechar: TButton;
    procedure txtCSTChange(Sender: TObject);
    procedure btnInserirPISClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInserirPIS: TfrmInserirPIS;

implementation
 uses Principal, json, VenderItem;
{$R *.dfm}

procedure TfrmInserirPIS.btnFecharClick(Sender: TObject);
begin
  frmInserirPIS.Hide;
end;

procedure TfrmInserirPIS.btnInserirPISClick(Sender: TObject);
     var
          URL, Retorno,tipoPis: WideString ;
          jsonPis,PisAliq,pisNT,pisOutr, PisQtde :TJSONObject;
     begin
        if (jsonVenda <> nil) then
        begin

                    //Cria sessão pis
                    jsonPis := TJSONObject.Create;

                    tipoPis := copy(txtCST.Text, 1, 2);

                   //----------------------------------------------------------------
                   //Verifica qual o tipo de pis e adiciona de acordo com a seleção
                   if (tipoPis = '01') or (tipoPis = '02') then   //PisAliq
                    begin
                      PisAliq := TJSONObject.Create;
                      PisAliq.AddPair('cst', TJSONString.Create(tipoPis));
                      PisAliq.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                      PisAliq.AddPair('ppis', TJSONNumber.Create(txtppis.Text));
                      PisAliq.AddPair('vpis', TJSONNumber.Create(txtvpis.Text));


                      //Adiciona pisAliq em pis
                      jsonPis.AddPair('pisAliq', pisAliq);
                    end;

                  if tipoPis = '03' then //PisQtde
                  begin
                      PisQtde := TJSONObject.Create;
                      PisQtde.AddPair('cst', TJSONString.Create(tipoPis));
                      PisQtde.AddPair('qbcProd', TJSONNumber.Create(txtqbcProd.Text));
                      PisQtde.AddPair('vAliqProd', TJSONNumber.Create(txtvAliqProd.Text));
                      PisQtde.AddPair('vpis', TJSONNumber.Create(txtvpis.Text));

                      //Adiciona pisAliq em pis
                      jsonPis.AddPair('PisQtde', PisQtde);

                  end;

                  if (tipoPis = '04') or (tipoPis = '05') or (tipoPis = '06') or (tipoPis = '07') or (tipoPis = '08')  or (tipoPis =  '09') then  //pisNT
                  begin
                      pisNT := TJSONObject.Create;
                      pisNT.AddPair('cst', TJSONString.Create(tipoPis));

                      //Adiciona pisAliq em pis
                      jsonPis.AddPair('pisNT', pisNT);

                  end;

                  if tipoPis = '99'  then  //pisOutr
                  begin
                      pisOutr := TJSONObject.Create;
                      pisOutr.AddPair('cst', TJSONString.Create(tipopis));
                      pisOutr.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                      pisOutr.AddPair('ppis', TJSONNumber.Create(txtppis.Text));
                      pisOutr.AddPair('qbcProd', TJSONNumber.Create(txtqbcProd.Text));
                      pisOutr.AddPair('vAliqProd', TJSONNumber.Create(txtvAliqProd.Text));
                      pisOutr.AddPair('vpis', TJSONNumber.Create(txtvpis.Text));

                      //Adiciona PisOutr em pis
                      jsonPis.AddPair('pisOutr', PisOutr);
                  end;

                    //----------------------------------------------------------------


                      //Adiciona pis em imposto
                      imposto.AddPair('pis',jsonPis);


                      //Adiciona Informação adicional de produto no json principal
                      //jsonVenda.AddPair('infAdProd', TJSONString.Create(frmVenderItem.txtinfAdProd.Text));

                      JsonString := jsonVenda.ToString;
                      JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                      JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                      frminserirPis.Hide;
                      FrmVenderItem.bntInserirCOFINS.Enabled := true;
                      FrmVenderItem.btnInserirPIS.Enabled := false;
                      FrmVenderItem.btnJson.Enabled := false;


        end
        else
                  Application.MessageBox('Insira os dados da venda primeiro!', 'Dados da Venda', mb_iconinformation + mb_ok);
                  FrmInserirPIS.Hide;
end;

procedure TfrmInserirPIS.txtCSTChange(Sender: TObject);
var
  pis:String;
begin
  pis := copy(txtCST.Text, 1, 2);
  if (pis = '01') or (pis = '02') then  //pisAliq
  begin
    txtcst.Color := $C0C0C0 ;
    txtvBC.Color:=  $C0C0C0 ;
    txtppis.Color :=  $C0C0C0 ;
    txtvpis.Color :=  $C0C0C0 ;
    txtQbcProd.Color := $FFFFFF;
    txtvAliqProd.Color := $FFFFFF;
  end;

  if pis = '03' then //pisQtde
  begin
    txtcst.Color := $C0C0C0 ;
    txtvBC.Color:=  $FFFFFF;
    txtppis.Color :=  $FFFFFF;
    txtvpis.Color :=  $C0C0C0 ;
    txtQbcProd.Color := $C0C0C0 ;
    txtvAliqProd.Color := $C0C0C0 ;
  end;

  if (pis = '04') or (pis = '05') or (pis = '06') or (pis = '07') or (pis = '08')  or (pis =  '09') then  //PisNT
  begin
    txtcst.Color := $FFFFFF;
    txtvBC.Color:=  $FFFFFF;
    txtppis.Color :=  $FFFFFF;
    txtvpis.Color :=  $FFFFFF ;
    txtQbcProd.Color := $FFFFFF ;
    txtvAliqProd.Color := $FFFFFF ;
  end;

  if pis = '99'  then  //PisOutr
  begin
    txtcst.Color := $C0C0C0;
    txtvBC.Color:=  $C0C0C0;
    txtppis.Color :=  $C0C0C0;
    txtvpis.Color :=  $C0C0C0 ;
    txtQbcProd.Color := $C0C0C0 ;
    txtvAliqProd.Color := $C0C0C0 ;
  end;


end;

end.
