unit UfrmRelTituloPagarLiquidados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmRelPad, DB, IBCustomDataSet, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, StdCtrls, ComCtrls, RpCon, RpConDS, RpBase, RpSystem, RpDefine,
  RpRave, IBQuery, Buttons, ExtCtrls;

type
  TfrmRelTituloPagarLiquidados = class(TfrmRelPad)
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label8: TLabel;
    dtde: TdxDateEdit;
    dtate: TdxDateEdit;
    RvDtCnTituloPagarLiquidados: TRvDataSetConnection;
    RvSysTituloPagarLiquidados: TRvSystem;
    RvPrjTituloPagarLiquidados: TRvProject;
    RvDtCnTituloPagarLiquidadosConfRel: TRvDataSetConnection;
    qyGeralCD_TITULO_PAGAR: TIntegerField;
    qyGeralNR_TITULO: TIBStringField;
    qyGeralCD_PESSOA: TIntegerField;
    qyGeralNM_PESSOA: TIBStringField;
    qyGeralDT_EMISSAO: TDateField;
    qyGeralDT_REFERENCIA: TDateField;
    qyGeralDT_VENCIMENTO: TDateField;
    qyGeralVL_TITULO: TIBBCDField;
    qyGeralCD_NAT_LANCAMENTO: TIntegerField;
    qyGeralDS_NAT_LANCAMENTO: TIBStringField;
    qyGeralCD_FORMA_PAGAMENTO: TIntegerField;
    qyGeralDS_FORMA_PAGAMENTO: TIBStringField;
    qyGeralVL_DESCONTO: TIBBCDField;
    qyGeralVL_ACRESCIMO: TIBBCDField;
    qyGeralVL_MULTA: TIBBCDField;
    qyGeralVL_JUROS: TIBBCDField;
    qyGeralVL_TOTAL: TIBBCDField;
    qyGeralCD_EMPRESA: TIntegerField;
    qyGeralDS_OBS: TIBStringField;
    qyGeralCD_USUARIO: TIntegerField;
    qyGeralNM_USUARIO: TIBStringField;
    qyGeralSG_STATUS: TIBStringField;
    qyGeralCD_BANCO: TIntegerField;
    qyGeralDS_BANCO: TIBStringField;
    qyGeralNR_AGENCIA: TIBStringField;
    qyGeralNR_CONTA: TIBStringField;
    qyGeralNR_TITULO_BANCO: TIBStringField;
    qyGeralDT_EXCLUSAO: TDateTimeField;
    qyGeralDT_BAIXA: TDateField;
    qyGeralCD_EMPRESA_ORIGEM: TIntegerField;
    qyGeralDT_CADASTRO: TDateTimeField;
    qyGeralCD_NF: TIntegerField;
    qyGeralCD_VENDA: TIntegerField;
    qyGeralDS_EMPRESA: TIBStringField;
    qyGeralDS_STATUS: TIBStringField;
    procedure btImprimirClick(Sender: TObject);
    procedure qyGeralBeforeOpen(DataSet: TDataSet);
    procedure dtateExit(Sender: TObject);
    procedure RvPrjTituloPagarLiquidadosCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelTituloPagarLiquidados: TfrmRelTituloPagarLiquidados;

implementation

uses
 UDM, UDMGERAL, UGeral, UDMRelatorios;

{$R *.dfm}

procedure TfrmRelTituloPagarLiquidados.btImprimirClick(Sender: TObject);
begin
  inherited;

  if (dtDe.Text = '  /  /    ') then
  begin
    MessageDlg('Data (Inicio) inv�lido! Favor inserir novamente!',mtInformation,
     [mbOK],0);
    dtDe.setfocus;
    Exit;
  end;

  if (dtAte.Text = '  /  /    ') then
  begin
    MessageDlg('Data (Final) inv�lido! Favor inserir novamente!',mtInformation,
     [mbOK],0);
    dtAte.setfocus;
    Exit;
  end;

  try
    dmRelatorios.tbTmpParametro.Open;
    dmRelatorios.tbTmpParametro.Insert;
    dmRelatorios.tbTmpParametroCD_PARAMETRO.AsInteger := 1;
    dmRelatorios.tbTmpParametroVL_PARAMETRO1.AsString := dtde.text;
    dmRelatorios.tbTmpParametroVL_PARAMETRO2.AsString := dtate.text;
    dmRelatorios.tbTmpParametro.Post;
    qyGeral.open;
    RvPrjTituloPagarLiquidados.Execute;
  finally
    qyGeral.Close;
    dmRelatorios.tbTmpParametro.Delete;
    dmRelatorios.tbTmpParametro.Close;
    close;
  end;

end;

procedure TfrmRelTituloPagarLiquidados.qyGeralBeforeOpen(
  DataSet: TDataSet);
begin
  inherited;
  qyGeral.ParamByName('de').AsDate := dtDe.Date;
  qyGeral.ParamByName('ate').AsDate := dtAte.Date;

end;

procedure TfrmRelTituloPagarLiquidados.dtateExit(Sender: TObject);
begin
  inherited;
  if dtate.Date < DM.GetDate then
    begin
      MessageDlg('Data Final n�o pode ser menor que a data atual! Favor inserir novamente!',mtInformation,
       [mbOK],0);
      dtate.setfocus;
    end;

end;

procedure TfrmRelTituloPagarLiquidados.RvPrjTituloPagarLiquidadosCreate(
  Sender: TObject);
begin
  inherited;
  RvPrjTituloPagarLiquidados.ProjectFile := sPathLayout +'\RelTituloPagarLiquidados.rav';
end;

end.
