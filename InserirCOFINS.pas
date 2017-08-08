unit InserirCOFINS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;
type
  TfrmInserirCOFINS = class(TForm)
    Label2: TLabel;
    btnFechar: TButton;
    btnInserirCOFINS: TButton;
    txtCST: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txtVbc: TEdit;
    txtPcofins: TEdit;
    txtQbcProd: TEdit;
    txtValiqProd: TEdit;
    txtVcofins: TEdit;
    procedure txtCSTChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnInserirCOFINSClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInserirCOFINS: TfrmInserirCOFINS;

implementation
   uses Principal, json, VenderItem;
{$R *.dfm}

procedure TfrmInserirCOFINS.btnFecharClick(Sender: TObject);
begin
  frmInserirCofins.Hide;
end;

procedure TfrmInserirCOFINS.btnInserirCOFINSClick(Sender: TObject);
     var
          URL, Retorno,tipoCofins: WideString ;
          jsonCofins,cofinsAliq, CofinsQtde,CofinsNT, CofinsOutr :TJSONObject;
          JsonToSend:TMemoryStream;
          JsonStreamRetorno: AnsiString;
      begin
        if (jsonVenda <> nil) then
        begin

                    //Cria sessão cofins
                    jsonCofins := TJSONObject.Create;

                    tipoCofins := copy(txtCST.Text, 1, 2);

                   //----------------------------------------------------------------
                   //Verifica qual o tipo de cofins e adiciona de acordo com a seleção
                   if (tipoCofins = '01') or (tipoCofins = '02') then   //CofinsAliq
                    begin
                      cofinsAliq := TJSONObject.Create;
                      cofinsAliq.AddPair('cst', TJSONString.Create(tipoCofins));
                      cofinsAliq.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                      cofinsAliq.AddPair('pcofins', TJSONNumber.Create(txtpcofins.Text));
                      cofinsAliq.AddPair('vcofins', TJSONNumber.Create(txtvcofins.Text));


                      //Adiciona cofinsAliq em cofins
                      jsonCofins.AddPair('cofinsAliq', cofinsAliq);
                    end;

                  if tipoCofins = '03' then //CofinsQtde
                  begin
                      CofinsQtde := TJSONObject.Create;
                      CofinsQtde.AddPair('cst', TJSONString.Create(tipoCofins));
                      CofinsQtde.AddPair('qbcProd', TJSONNumber.Create(txtqbcProd.Text));
                      CofinsQtde.AddPair('vAliqProd', TJSONNumber.Create(txtvAliqProd.Text));
                      CofinsQtde.AddPair('vcofins', TJSONNumber.Create(txtvcofins.Text));

                      //Adiciona cofinsAliq em cofins
                      jsonCofins.AddPair('CofinsQtde', CofinsQtde);

                  end;

                  if (tipoCofins = '04') or (tipoCofins = '05') or (tipoCofins = '06') or (tipoCofins = '07') or (tipoCofins = '08')  or (tipoCofins =  '09') then  //CofinsNT
                  begin
                      CofinsNT := TJSONObject.Create;
                      CofinsNT.AddPair('cst', TJSONString.Create(tipoCofins));

                      //Adiciona cofinsAliq em cofins
                      jsonCofins.AddPair('CofinsNT', CofinsNT);

                  end;

                  if tipoCofins = '99'  then  //CofinsOutr
                  begin
                      CofinsOutr := TJSONObject.Create;
                      CofinsOutr.AddPair('cst', TJSONString.Create(tipoCofins));
                      CofinsOutr.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                      CofinsOutr.AddPair('pcofins', TJSONNumber.Create(txtpcofins.Text));
                      CofinsOutr.AddPair('qbcProd', TJSONNumber.Create(txtqbcProd.Text));
                      CofinsOutr.AddPair('vAliqProd', TJSONNumber.Create(txtvAliqProd.Text));
                      CofinsOutr.AddPair('vcofins', TJSONNumber.Create(txtvcofins.Text));

                      //Adiciona CofinsOutr em cofins
                      jsonCofins.AddPair('CofinsOutr', CofinsOutr);
                  end;

                    //----------------------------------------------------------------


                      //Adiciona cofins em imposto
                      imposto.AddPair('cofins',jsonCofins);

                      //Adiciona imposto no json completo de venda
                      JSonVenda.AddPair('imposto',imposto);

                      //Adiciona Informação adicional de produto no json principal
                      jsonVenda.AddPair('infAdProd', TJSONString.Create(frmVenderItem.txtinfAdProd.Text));

                      JsonString := jsonVenda.ToString;
                      JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                      JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                      FrmInserirCofins.Hide;
                      FrmVenderItem.bntInserirCOFINS.Enabled := false;
                      FrmVenderItem.btnInserirPIS.Enabled := false;
                      FrmVenderItem.btnJson.Enabled := true;
                      FrmVenderItem.btnVenderItem.Enabled := true;

        end
        else
                  Application.MessageBox('Insira os dados da venda primeiro!', 'Dados da Venda', mb_iconinformation + mb_ok);
                  FrmInserirCofins.Hide;

end;

procedure TfrmInserirCOFINS.FormCreate(Sender: TObject);
begin
  frmInserirCOFINS.txtCST.OnChange(Sender);
end;

procedure TfrmInserirCOFINS.txtCSTChange(Sender: TObject);
var
  cofins:String;
begin
  cofins := copy(txtCST.Text, 1, 2);
  if (cofins = '01') or (cofins = '02') then  //CofinsAliq
  begin
    txtcst.Color := $C0C0C0 ;
    txtvBC.Color:=  $C0C0C0 ;
    txtpcofins.Color :=  $C0C0C0 ;
    txtvcofins.Color :=  $C0C0C0 ;
    txtQbcProd.Color :=  $FFFFFF ;
    txtValiqProd.Color := $FFFFFF;
  end;

  if cofins = '03' then //CofinsQtde
  begin
    txtcst.Color := $C0C0C0 ;
    txtvBC.Color:=  $FFFFFF;
    txtpcofins.Color :=  $FFFFFF ;
    txtvcofins.Color :=  $C0C0C0 ;
    txtQbcProd.Color :=  $C0C0C0 ;
    txtValiqProd.Color := $C0C0C0;
  end;

  if (cofins = '04') or (cofins = '05') or (cofins = '06') or (cofins = '07') or (cofins = '08')  or (cofins =  '09') then  //CofinsNT
  begin
    txtcst.Color := $C0C0C0 ;
  end;

  if cofins = '99'  then  //CofinsOutr
  begin
    txtcst.Color := $C0C0C0 ;
    txtvBC.Color:=  $C0C0C0;
    txtpcofins.Color :=  $C0C0C0;
    txtvcofins.Color :=  $C0C0C0 ;
    txtQbcProd.Color :=  $C0C0C0 ;
    txtValiqProd.Color := $C0C0C0;
  end;


end;

end.
