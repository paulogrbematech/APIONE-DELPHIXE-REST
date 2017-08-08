unit InserirICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP, IOUtils, DBXJSON, IdGlobal, pngimage, ExtCtrls, ShellApi;

type
  TfrmInserirICMS = class(TForm)
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
    btnFechar: TButton;
    btnInserirICMS: TButton;
    txtVicms: TEdit;
    txtVbc: TEdit;
    txtvICMSRet: TEdit;
    txtPredBCST: TEdit;
    txtPmvast: TEdit;
    txtPicms: TEdit;
    txtPredBC: TEdit;
    txtVBCSTret: TEdit;
    txtVicmsst: TEdit;
    txtVBCst: TEdit;
    txtVicmsDeson: TEdit;
    txtVTotTrib: TEdit;
    txtCST: TComboBox;
    txtModBC: TComboBox;
    txtModBCST: TComboBox;
    txtPICMSST: TEdit;
    txtMotdesICMS: TComboBox;
    procedure btnInserirICMSClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure txtCSTChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInserirICMS: TfrmInserirICMS;

implementation
    uses Principal, json, VenderItem;
{$R *.dfm}

procedure TfrmInserirICMS.btnFecharClick(Sender: TObject);
begin
  FrmInserirICMS.Hide;
end;

procedure TfrmInserirICMS.btnInserirICMSClick(Sender: TObject);
      var
          URL, Retorno: WideString ;
          icms00,icms10,icms20,icms40,icms41,icms60,icms70,icms90, icms30, icms: TJSONObject;
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
                   if txtCST.Text = '00'  then
                    begin
                      //imposto.AddPair('vItem12741',TJSONString.Create(txtvItem12741.Text));)
                      icms00 := TJSONObject.Create;
                      icms00.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms00.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms00.AddPair('modBC', TJSONNumber.Create(txtmodBC.Text[1]));
                      icms00.AddPair('vbc', TJSONNumber.Create(txtvBC.Text));
                      icms00.AddPair('picms', TJSONNumber.Create(txtpicms.Text));
                      icms00.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));

                      //Adiciona icms00 em icms
                      icms.AddPair('icms00', icms00);
                    end;

                    if txtCST.Text = '10'  then
                    begin
                      //imposto.AddPair('vItem12741',TJSONString.Create(txtvItem12741.Text));)
                      icms10 := TJSONObject.Create;
                      icms10.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms10.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms10.AddPair('modBC', TJSONNumber.Create(txtmodBC.Text[1]));
                      icms10.AddPair('vbc', TJSONNumber.Create(txtvbc.Text[1]));
                      icms10.AddPair('picms', TJSONNumber.Create(txtpicms.Text));
                      icms10.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));
                      icms10.AddPair('modBCST', TJSONNumber.Create(txtmodBCST.Text[1]));
                      icms10.AddPair('pmvast', TJSONNumber.Create(txtpmvast.Text));
                      icms10.AddPair('pRedBCST', TJSONNumber.Create(txtpRedBCST.Text));
                      icms10.AddPair('vBCST', TJSONNumber.Create(txtvBCST.Text));
                      icms10.AddPair('picmsst', TJSONNumber.Create(txtpicmsst.Text));
                      icms10.AddPair('vicmsst', TJSONNumber.Create(txtvicmsst.Text));

                      //Adiciona icms10 em icms
                      icms.AddPair('icms10', icms10);
                    end;

                    if txtCST.Text = '20'  then
                    begin
                      icms20 := TJSONObject.Create;
                      icms20.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms20.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms20.AddPair('modBC', TJSONNumber.Create(txtmodBC.Text[1]));
                      icms20.AddPair('vbc', TJSONNumber.Create(txtvbc.Text[1]));
                      icms20.AddPair('picms', TJSONNumber.Create(txtpicms.Text));
                      icms20.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));
                      icms20.AddPair('pRedBCST', TJSONNumber.Create(txtpRedBCST.Text));
                      icms20.AddPair('vicmsDeson', TJSONNumber.Create(txtvicmsDeson.Text));
                      icms20.AddPair('motDesICMS', TJSONNumber.Create(txtmotDesICMS.Text));

                      //Adiciona icms20 em icms
                      icms.AddPair('icms20', icms20);
                    end;

                    if txtCST.Text = '30'  then
                    begin
                      icms30 := TJSONObject.Create;
                      icms30.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms30.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms30.AddPair('modBC', TJSONNumber.Create(txtmodBC.Text[1]));
                      icms30.AddPair('vbc', TJSONNumber.Create(txtvbc.Text[1]));
                      icms30.AddPair('picms', TJSONNumber.Create(txtpicms.Text));
                      icms30.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));
                      icms30.AddPair('modBCST', TJSONNumber.Create(txtmodBCST.Text[1]));
                      icms30.AddPair('pmvast', TJSONNumber.Create(txtpmvast.Text));
                      icms30.AddPair('pRedBCST', TJSONNumber.Create(txtpRedBCST.Text));
                      icms30.AddPair('vBCST', TJSONNumber.Create(txtvBCST.Text));
                      icms30.AddPair('picmsst', TJSONNumber.Create(txtpicmsst.Text));
                      icms30.AddPair('vicmsst', TJSONNumber.Create(txtvicmsst.Text));
                      icms30.AddPair('vicmsDeson', TJSONNumber.Create(txtvicmsDeson.Text));
                      icms30.AddPair('motDesICMS', TJSONNumber.Create(txtmotDesICMS.Text));

                      //Adiciona icms30 em icms
                      icms.AddPair('icms30', icms30);
                    end;

                    if txtCST.Text = '40'  then
                    begin
                      icms40 := TJSONObject.Create;
                      icms40.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms40.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms40.AddPair('vicmsDeson', TJSONNumber.Create(txtvicmsDeson.Text));
                      icms40.AddPair('motDesICMS', TJSONNumber.Create(txtmotDesICMS.Text));

                      //Adiciona icms40 em icms
                      icms.AddPair('icms40', icms40);
                    end;

                     if txtCST.Text = '41'  then
                     begin
                      icms41 := TJSONObject.Create;
                      icms41.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms41.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms41.AddPair('vicmsDeson', TJSONNumber.Create(txtvicmsDeson.Text));
                      icms41.AddPair('motDesICMS', TJSONNumber.Create(txtmotDesICMS.Text));

                      //Adiciona icms41 em icms
                      icms.AddPair('icms41', icms41);
                    end;


                     if txtCST.Text = '60'  then
                     begin
                      icms60 := TJSONObject.Create;
                      icms60.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms60.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms60.AddPair('vbcstRet', TJSONNumber.Create(txtvbcstRet.Text));


                      //Adiciona icms60 em icms
                      icms.AddPair('icms60', icms60);
                    end;


                     if txtCST.Text = '70'  then
                     begin
                      icms70 := TJSONObject.Create;
                      icms70.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms70.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms70.AddPair('modBC', TJSONString.Create(txtmodBC.Text[1]));
                      icms70.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                      icms70.AddPair('picms', TJSONNumber.Create(txtpicms.Text));
                      icms70.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));
                      icms70.AddPair('modBCST', TJSONNumber.Create(txtmodBCST.Text[1]));
                      icms70.AddPair('pmvast', TJSONNumber.Create(txtpmvast.Text));
                      icms70.AddPair('pRedBCST', TJSONNumber.Create(txtpRedBCST.Text));
                      icms70.AddPair('vBCST', TJSONNumber.Create(txtvBCST.Text));
                      icms70.AddPair('picmsst', TJSONNumber.Create(txtpicmsst.Text));
                      icms70.AddPair('vicmsst', TJSONNumber.Create(txtvicmsst.Text));
                      icms70.AddPair('vicmsDeson', TJSONNumber.Create(txtvicmsDeson.Text));
                      icms70.AddPair('motDesICMS', TJSONNumber.Create(txtmotDesICMS.Text));
                      icms70.AddPair('pRedBC', TJSONNumber.Create(txtpRedBC.Text));


                      //Adiciona icms70 em icms
                      icms.AddPair('icms70', icms70);
                    end;

                     if txtCST.Text = '90'  then
                     begin
                      icms90 := TJSONObject.Create;
                      icms90.AddPair('orig', TJSONNumber.Create(frmVenderItem.txtorig.Text[1]));
                      icms90.AddPair('cst', TJSONString.Create(txtcst.Text));
                      icms90.AddPair('modBC', TJSONString.Create(txtmodBC.Text[1]));
                      icms90.AddPair('vbc', TJSONNumber.Create(txtvbc.Text));
                      icms90.AddPair('picms', TJSONNumber.Create(txtpicms.Text));
                      icms90.AddPair('vicms', TJSONNumber.Create(txtvicms.Text));
                      icms90.AddPair('modBCST', TJSONNumber.Create(txtmodBCST.Text[1]));
                      icms90.AddPair('pmvast', TJSONNumber.Create(txtpmvast.Text));
                      icms90.AddPair('pRedBCST', TJSONNumber.Create(txtpRedBCST.Text));
                      icms90.AddPair('vBCST', TJSONNumber.Create(txtvBCST.Text));
                      icms90.AddPair('picmsst', TJSONNumber.Create(txtpicmsst.Text));
                      icms90.AddPair('vicmsst', TJSONNumber.Create(txtvicmsst.Text));
                      icms90.AddPair('vicmsDeson', TJSONNumber.Create(txtvicmsDeson.Text));
                      icms90.AddPair('motDesICMS', TJSONNumber.Create(txtmotDesICMS.Text));
                      icms90.AddPair('pRedBC', TJSONNumber.Create(txtpRedBC.Text));


                      //Adiciona icms90 em icms
                      icms.AddPair('icms90', icms90);
                    end;

                    //----------------------------------------------------------------









                      //Adiciona icms em imposto
                      imposto.AddPair('icms',icms);

                      //Adiciona imposto no json de venda
                      //JSonVenda.AddPair('imposto',imposto);



                      JsonString := jsonVenda.ToString;
                      JsonString := StringReplace(JsonString,#$A,'',[rfReplaceAll]);
                      JsonString := StringReplace(JsonString,#$D,'',[rfReplaceAll]);

                      FrmInserirICMS.Hide;
                      FrmVenderItem.btnInserirICMS.Enabled := false;
                      FrmVenderItem.btnInserirSimples.Enabled := false;
                      FrmVenderItem.btnInserirPIS.Enabled := true;
                      FrmVenderItem.bntInserirCOFINS.Enabled := false;
        end
        else
                  Application.MessageBox('Insira os dados da venda primeiro!', 'Dados da Venda', mb_iconinformation + mb_ok);
                  FrmInserirICMS.Hide;


end;

procedure TfrmInserirICMS.txtCSTChange(Sender: TObject);
begin
  if txtCST.Text = '00' then
  begin
    txtModBC.Color := $C0C0C0 ;
    txtvBC.Color:=  $C0C0C0 ;
    txtPicMS.Color :=  $C0C0C0 ;
    txtVIcms.Color :=  $C0C0C0 ;
    txtModBCST.Color :=  $FFFFFF ;
    txtPMvast.Color := $FFFFFF;
    txtPredBCST.Color := $FFFFFF;
    txtVBCst.Color:= $FFFFFF;
    txtPICMSST.Color:= $FFFFFF;
    txtVicmsst.Color:= $FFFFFF;
    txtVBCSTret.Color:= $FFFFFF;
    txtVICMSret.Color:= $FFFFFF;
    txtVicmsDeson.Color:= $FFFFFF;
    txtVTotTrib.Color:= $FFFFFF;
    txtMotdesICMS.Color:= $FFFFFF;
  end;

  if txtCST.Text = '10' then
  begin
    txtModBC.Color := $C0C0C0 ;
    txtvBC.Color:=  $C0C0C0 ;
    txtPicMS.Color :=  $C0C0C0 ;
    txtVIcms.Color :=  $C0C0C0 ;
    txtModBCST.Color :=  $C0C0C0 ;
    txtPMvast.Color :=$C0C0C0;
    txtPredBCST.Color:= $C0C0C0;
    txtVBCst.Color:= $FFFFFF;
    txtPICMSST.Color:= $FFFFFF;
    txtVicmsst.Color:= $FFFFFF;
    txtVBCSTret.Color:= $FFFFFF;
    txtVICMSret.Color:= $FFFFFF;
    txtVicmsDeson.Color:= $FFFFFF;
    txtVTotTrib.Color:= $FFFFFF;
    txtMotdesICMS.Color:= $FFFFFF;
  end;

  if txtCST.Text = '20' then
  begin
    txtModBC.Color := $C0C0C0 ;
    txtPredBC.Color  := $FFFFFF ;
    txtvBC.Color:=  $C0C0C0 ;
    txtPicMS.Color :=  $C0C0C0 ;
    txtVIcms.Color :=  $C0C0C0 ;
    txtModBCST.Color :=  $C0C0C0 ;
    txtPMvast.Color :=$C0C0C0;
    txtPredBCST.Color:= $C0C0C0;
    txtVBCst.Color:= $FFFFFF;
    txtPICMSST.Color:= $FFFFFF;
    txtVicmsst.Color:= $FFFFFF;
    txtVBCSTret.Color:= $FFFFFF;
    txtVICMSret.Color:= $FFFFFF;
    txtVicmsDeson.Color:= $C0C0C0;
    txtVTotTrib.Color:= $FFFFFF;
    txtMotdesICMS.Color:= $C0C0C0;
  end;

  if txtCST.Text = '30' then
  begin
    txtModBC.Color := $FFFFFF ;
    txtPredBC.Color  := $FFFFFF ;
    txtvBC.Color:=  $FFFFFF ;
    txtPicMS.Color :=  $FFFFFF ;
    txtVIcms.Color :=  $FFFFFF ;
    txtModBCST.Color :=  $C0C0C0 ;
    txtPMvast.Color :=$C0C0C0;
    txtPredBCST.Color:= $C0C0C0;
    txtVBCst.Color:= $C0C0C0;
    txtPICMSST.Color:= $C0C0C0;
    txtVicmsst.Color:= $C0C0C0;
    txtVBCSTret.Color:= $FFFFFF;
    txtVICMSret.Color:= $FFFFFF;
    txtVicmsDeson.Color:= $C0C0C0;
    txtMotdesICMS.Color:= $FFFFFF;
    txtVTotTrib.Color:= $FFFFFF;

  end;

  if (txtCST.Text = '40') or (txtCST.Text = '41') then
  begin
    txtModBC.Color := $FFFFFF ;
    txtPredBC.Color  := $FFFFFF ;
    txtvBC.Color:=  $FFFFFF ;
    txtPicMS.Color :=  $FFFFFF ;
    txtVIcms.Color :=  $C0C0C0 ;
    txtModBCST.Color :=  $FFFFFF  ;
    txtPMvast.Color :=$FFFFFF ;
    txtPredBCST.Color:= $FFFFFF ;
    txtVBCst.Color:= $FFFFFF ;
    txtPICMSST.Color:= $FFFFFF ;
    txtVicmsst.Color:= $FFFFFF ;
    txtVBCSTret.Color:= $FFFFFF;
    txtVICMSret.Color:= $FFFFFF;
    txtVicmsDeson.Color:= $C0C0C0;
    txtMotdesICMS.Color:= $FFFFFF;
    txtVTotTrib.Color:= $FFFFFF;

  end;


  if (txtCST.Text = '40') or (txtCST.Text = '41') then
  begin
    txtModBC.Color := $FFFFFF ;
    txtPredBC.Color  := $FFFFFF ;
    txtvBC.Color:=  $FFFFFF ;
    txtPicMS.Color :=  $FFFFFF ;
    txtVIcms.Color :=  $C0C0C0 ;
    txtModBCST.Color :=  $FFFFFF  ;
    txtPMvast.Color :=$FFFFFF ;
    txtPredBCST.Color:= $FFFFFF ;
    txtVBCst.Color:= $FFFFFF ;
    txtPICMSST.Color:= $FFFFFF ;
    txtVicmsst.Color:= $FFFFFF ;
    txtVBCSTret.Color:= $FFFFFF;
    txtVICMSret.Color:= $FFFFFF;
    txtVicmsDeson.Color:= $C0C0C0;
    txtMotdesICMS.Color:= $FFFFFF;
    txtVTotTrib.Color:= $FFFFFF;

  end;

  if (txtCST.Text = '60') then
  begin
    txtModBC.Color := $FFFFFF ;
    txtPredBC.Color  := $FFFFFF ;
    txtvBC.Color:=  $FFFFFF ;
    txtPicMS.Color :=  $C0C0C0 ;
    txtVIcms.Color :=  $FFFFFF ;
    txtModBCST.Color :=  $FFFFFF  ;
    txtPMvast.Color :=$FFFFFF ;
    txtPredBCST.Color:= $FFFFFF ;
    txtVBCst.Color:= $FFFFFF ;
    txtPICMSST.Color:= $FFFFFF ;
    txtVicmsst.Color:= $C0C0C0 ;
    txtVBCSTret.Color:= $C0C0C0;
    txtVICMSret.Color:= $FFFFFF;
    txtVicmsDeson.Color:= $FFFFFF;
    txtMotdesICMS.Color:= $FFFFFF;
    txtVTotTrib.Color:= $FFFFFF;

  end;

  if (txtCST.Text = '70') or (txtCST.Text = '90') then
  begin
    txtModBC.Color := $C0C0C0 ;
    txtPredBC.Color  := $C0C0C0 ;
    txtvBC.Color:=  $C0C0C0 ;
    txtPicMS.Color :=  $C0C0C0 ;
    txtVIcms.Color :=  $C0C0C0 ;
    txtModBCST.Color :=  $C0C0C0  ;
    txtPMvast.Color :=$C0C0C0 ;
    txtPredBCST.Color:= $C0C0C0 ;
    txtVBCst.Color:= $FFFFFF ;
    txtPICMSST.Color:= $C0C0C0 ;
    txtVicmsst.Color:= $C0C0C0 ;
    txtVBCSTret.Color:= $C0C0C0;
    txtVICMSret.Color:= $FFFFFF;
    txtVicmsDeson.Color:= $C0C0C0;
    txtMotdesICMS.Color:= $C0C0C0;
    txtVTotTrib.Color:= $FFFFFF;

  end;

end;

end.
