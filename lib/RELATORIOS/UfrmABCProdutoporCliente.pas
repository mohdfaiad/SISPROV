unit UfrmABCProdutoporCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmRelPad, ComCtrls, DB, IBCustomDataSet, IBQuery, StdCtrls,
  Buttons, ExtCtrls, RpRave, RpBase, RpSystem, RpDefine, RpCon, RpConDS,
  dxDBEdtr, dxDBELib, dxCntner, dxEditor, dxExEdtr, dxEdLib;

type
  TfrmRelABCProdutosporCliente = class(TfrmRelPad)
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label8: TLabel;
    dtde: TdxDateEdit;
    dtate: TdxDateEdit;
    RvDtCnABCCliente: TRvDataSetConnection;
    RvSysABCCliente: TRvSystem;
    RvPrjABCCliente: TRvProject;
    RvDtCnABCClienteConfRel: TRvDataSetConnection;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    btFamilia: TSpeedButton;
    btFamiliaLimpar: TSpeedButton;
    edCod: TEdit;
    edCliente: TEdit;
    qyNFProduto: TIBQuery;
    RvDtCnABCClienteProduto: TRvDataSetConnection;
    dsGeral: TDataSource;
    qyGeralCD_PESSOA: TIntegerField;
    qyGeralDS_PESSOA: TIBStringField;
    qyGeralCD_NF: TIntegerField;
    qyGeralCD_OPERACAO: TIntegerField;
    qyGeralSG_STATUS: TIBStringField;
    qyGeralTP_OPERACAO: TIBStringField;
    qyGeralNM_EMPRESA: TIBStringField;
    qyGeralDT_NF: TDateTimeField;
    qyNFProdutoCD_PRODUTO: TIntegerField;
    qyNFProdutoDS_PRODUTO: TIBStringField;
    qyNFProdutoQTDE_TOTAL: TLargeintField;
    qyNFProdutoVALOR_TOTAL: TIBBCDField;
    rgordenar: TRadioGroup;
    procedure btImprimirClick(Sender: TObject);
    procedure btFamiliaClick(Sender: TObject);
    procedure btFamiliaLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelABCProdutosporCliente: TfrmRelABCProdutosporCliente;
  strSQL:string;
implementation

USES
  UDM, UDMGERAL, UGeral, UfrmLocalizar;

{$R *.dfm}

procedure TfrmRelABCProdutosporCliente.btImprimirClick(Sender: TObject);
begin
  inherited;

  if dtde.Text <> '  /  /    ' then
  begin
    if dtate.Text <> '  /  /    ' then
      begin
        if edCliente.Text <> '' then
        begin
          qyGeral.Close;
          qyGeral.SQL.Text := strSQL;
          qyGeral.SQL.Add('and NF.DT_NF between :de and :ate');
          qyGeral.ParamByName('de').AsDate := dtDe.Date;
          qyGeral.ParamByName('ate').AsDate := dtAte.Date;
          qyGeral.SQL.Add('and NF.CD_PESSOA =:CLIENTE');
          qyGeral.ParamByName('CLIENTE').AsInteger := StrToInt(edCod.Text);

          if rgordenar.ItemIndex = 0 then
            qyNFProduto.SQL.Add('order by VALOR_TOTAL');

          if rgordenar.ItemIndex = 1 then
            qyNFProduto.SQL.Add('order by QTDE_TOTAL');

          qyGeral.open;
          qyNFProduto.Open;
          DMGERAL.qyConfRelatorio.Open;
          RvPrjABCCliente.Execute;
          DMGERAL.qyConfRelatorio.Close;
          qyNFProduto.Close;
          qyGeral.Close;
          close;
        end
        else
          begin
            MessageDlg('Cliente inv�lido! Favor inserir novamente!',mtInformation,
             [mbOK],0);
            edCliente.setfocus;
          end;

      end
      else
        begin
          MessageDlg('Data (Final) inv�lido! Favor inserir novamente!',mtInformation,
           [mbOK],0);
          dtate.setfocus;
        end;
  end
  else
    begin
      MessageDlg('Data (Inicio) inv�lido! Favor inserir novamente!',mtInformation,
       [mbOK],0);
      dtde.setfocus;
    end;

end;

procedure TfrmRelABCProdutosporCliente.btFamiliaClick(Sender: TObject);
begin
  inherited;
  frmLocalizar := TfrmLocalizar.Create(application);
  frmLocalizar.Caption := 'Localizar Cliente';
  frmLocalizar.qyDados.sql.add('select CD_PESSOA, NM_PESSOA from PESSOA');
  frmLocalizar.qyDados.sql.add('where FL_ATIVO = '''+('S')+'''');
  frmLocalizar.qyDados.sql.add('and TP_PESSOA = '''+('CL')+'''');

  try
    frmLocalizar.Where := true;
    frmLocalizar.OrderBy:='cd_Pessoa';
    SetLength(VCampo,2);
    VCampo[0].Titulo  := 'C�digo';
    VCampo[1].Titulo  := 'Cliente';
    VCampo[0].Visivel := True;
    VCampo[1].Visivel := True;

  except
    ShowMessage(frmLocalizar.qyDados.Sql.Text);
  end;
  if frmLocalizar.ShowModal=mrok then
  begin
    edCod.text := frmLocalizar.qyDados.FieldByname('cd_pessoa').AsString;
    edCliente.text := frmLocalizar.qyDados.FieldByname('nm_pessoa').AsString;
  end;
  frmLocalizar.qyDados.Close;
  frmLocalizar.Free;

end;

procedure TfrmRelABCProdutosporCliente.btFamiliaLimparClick(Sender: TObject);
begin
  inherited;
  edCod.Clear;
  edCliente.Clear;
end;

procedure TfrmRelABCProdutosporCliente.FormCreate(Sender: TObject);
begin
  inherited;
  strSQL := qyGeral.SQL.Text;  
  RvPrjABCCliente.ProjectFile := sPathLayout +'\RelABCCliente.rav';
end;

end.
