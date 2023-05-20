unit inMtoFamilias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer,
   cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  dxBarBuiltInMenu, cxPC, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxDropDownEdit, cxDBEdit, cxLabel,
  cxGridBandedTableView, cxGridDBBandedTableView,  cxLocalization,
  cxCurrencyEdit, cxDataControllerConditionalFormattingRulesManagerDialog,
  dxBevel, cxDBNavigator, inMtoPrincipal, UniDataFamilias,
  dxDateRanges, MemDS, DBAccess, Uni, cxImage, dxGDIPlusClasses, inMtoGen,
  Vcl.Menus, dxSkinsForm, cxButtons, dxSkinsDefaultPainters, cxMemo, cxSpinEdit,
  cxCalendar, cxBlobEdit, dxScrollbarAnnotations, dxCore, cxRadioGroup,
  cxSplitter, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan;

type
  TfrmMtoFamilias = class(TfrmMtoGen)
    pnl1: TPanel;
    cxdbtxtdt1: TcxDBTextEdit;
    cxdbtxtdt2: TcxDBTextEdit;
    pnl2: TPanel;
    pcPestana: TcxPageControl;
    tsMasDatos: TcxTabSheet;
    cxdbtxtdt15: TcxDBTextEdit;
    Panel1: TPanel;
    lblCodigo: TcxLabel;
    lblNombre: TcxLabel;
    tsOtros: TcxTabSheet;
    pnl3: TPanel;
    cxdbtxtdtDIRECCION1_CLIENTE: TcxDBTextEdit;
    lblUsuarioAlta: TcxLabel;
    lblInstanteAlta: TcxLabel;
    cxdbtxtdtUSUARIOALTA: TcxDBTextEdit;
    cxdbtxtdtINSTANTEALTA: TcxDBTextEdit;
    lblInstanteModif: TcxLabel;
    cxdbtxtdtUSUARIOALTA1: TcxDBTextEdit;
    lblUsuarioModif: TcxLabel;
    lblDescripcion: TcxLabel;
    chkActivo: TcxDBCheckBox;
    cxgrdbclmnPerfilUSUARIO_GRUPO_PERFILES: TcxGridDBColumn;
    cxgrdbclmnPerfilKEY_PERFILES: TcxGridDBColumn;
    cxgrdbclmnPerfilSUBKEY_PERFILES: TcxGridDBColumn;
    cxgrdbclmnPerfilVALUE_PERFILES: TcxGridDBColumn;
    cxgrdbclmnPerfilVALUE_TEXT_PERFILES: TcxGridDBColumn;
    cxgrdbclmnPerfilTYPE_BLOB_PERFILES: TcxGridDBColumn;
    cxgrdbclmnPerfilVALUE_BLOB_PERFILES: TcxGridDBColumn;
    cxgrdbclmnPerfilINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnPerfilINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnPerfilUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnPerfilUSUARIOMODIF: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCODIGO_FAMILIA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNOMBRE_FAMILIA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDESCRIPCION_FAMILIA: TcxGridDBColumn;
    txtNOMBRE_FAMILIA: TcxDBTextEdit;
    mDESCRIPCION_FAMILIA: TcxDBMemo;
    cxgrdbclmnGrdDBTabPrinACTIVO_FAMILIA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinORDEN_FAMILIA: TcxGridDBColumn;
    tsArticulos: TcxTabSheet;
    cxspltr1: TcxSplitter;
    cxgrdArticulosFamilias: TcxGrid;
    tvArticulos: TcxGridDBTableView;
    tvLineasFacturacion: TcxGridDBTableView;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1LINEA_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1CODIGO_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1DESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmnLineasFacturacionTIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1CANTIDAD_LINEA: TcxGridDBColumn;
    cxgrdbclmnLineasFacturacionPRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLineasFacturacionPORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1PRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn;
    cxgrdbclmncxgrdbtblvwcxgrd1DBTableView1SUM_TOTAL_LINEA: TcxGridDBColumn;
    cxgrdbclmnLineasFacturacionFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLineasFacturacionTIPOIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdlvlArticulosFamilias: TcxGridLevel;
    cxgrdbclmnArticulosCODIGO_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosDESCRIPCION_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosCODIGO_PROVEEDOR_PRINCIPAL: TcxGridDBColumn;
    cxgrdbclmnArticulosRAZON_SOCIAL_PROVEEDOR_PRINCIPAL: TcxGridDBColumn;
    cxgrdbclmnArticulosNOMBRE_TARIFA: TcxGridDBColumn;
    cxgrdbclmnArticulosPRECIOFINAL_TARIFA: TcxGridDBColumn;
    cxgrdbclmnArticulosESIMP_INCL_TARIFA: TcxGridDBColumn;
    cxgrdbclmnArticulosNOMBRE_TIPO_IVA: TcxGridDBColumn;
    cxgrdbclmnArticulosTIPO_CANTIDAD_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosESACTIVO_FIJO_ARTICULO: TcxGridDBColumn;
    lblOrden: TcxLabel;
    cxdbspndtORDEN_CLIENTE: TcxDBSpinEdit;
    ActionManager1: TActionManager;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    procedure btnGrabarClick(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
  public
    procedure CrearTablaPrincipal; override;
  end;
  procedure ShowMtoFamilias(Owner       : TComponent); overload;
  procedure ShowMtoFamilias(Owner       : TComponent; sOdon: String); overload;
const
  pkFieldName = 'CODIGO_FAMILIA';

var
  frmMtoFamilias: TfrmMtoFamilias;
  dmmFamilias : TdmFamilias;

implementation

uses
  inLibWin,
  inLibUser,
  inLibDevExp,
  inMtoArticulos,
  inMtoProveedores,
  inMtoTarifas;

{$R *.dfm}

procedure ShowMtoFamilias(Owner       : TComponent); overload;
var
  frmMtoFamilias : TfrmMtoFamilias;
begin
  if not(IsOpenMDI('frmMtoFamilias', Owner)) then
  begin
    frmMtoFamilias := TfrmMtoFamilias.Create(Owner);
    //Application.CreateForm(TfrmMtoFamilias, frmMtoFamilias);
    frmMtoFamilias.edtBusqGlobal.SetFocus;
  end;
end;

procedure ShowMtoFamilias(Owner       : TComponent; sOdon: String); overload;
var
  frmMtoFamilias : TfrmMtoFamilias;
begin
  if not(IsOpenMDI('frmMtoFamilias', Owner)) then
  begin
    Application.CreateForm(TfrmMtoFamilias, frmMtoFamilias);
    frmMtoFamilias.Show;
    //dmmClientes.unqryClientes.Locate(pkFieldName, sOdon, []);
    frmMtoFamilias.edtBusqGlobal.SetFocus;
  end;
end;

procedure TfrmMtoFamilias.Action1Execute(Sender: TObject);
begin
  inherited;
  //Control + R --Artículos
  with dmmFamilias.dsArticulosFamilias.DataSet do
  if ((tvArticulos.Focused) and
      (pcPestana.ActivePage = tsArticulos) and
      (not(FieldByName('CODIGO_ARTICULO').isNull))) then
    ShowMtoArticulos(Self.Owner, FieldByName('CODIGO_ARTICULO').AsString)
  else
    ShowMtoArticulos(Self.Owner);
end;

procedure TfrmMtoFamilias.Action2Execute(Sender: TObject);
begin
  inherited;
  // Control + P-> Proveedores
  with dmmFamilias.dsArticulosFamilias.DataSet do
  if ((tvArticulos.Focused) and
      (pcPestana.ActivePage = tsArticulos) and
      (not(FieldByName('CODIGO_PROVEEDOR_PRINCIPAL').isNull))) then
    ShowMtoProveedores(Self.Owner,
                       FieldByName('CODIGO_PROVEEDOR_PRINCIPAL').AsString)
  else
    ShowMtoProveedores(Self.Owner);
end;

procedure TfrmMtoFamilias.Action3Execute(Sender: TObject);
begin
  inherited;
  //Control + T -> Tarifas
  with dmmFamilias.dsArticulosFamilias.DataSet do
  if ((tvArticulos.Focused) and
      (pcPestana.ActivePage = tsArticulos) and
      (not(FieldByName('CODIGO_TARIFA').isNull))) then
    ShowMtoTarifas(Self.Owner,
                       FieldByName('CODIGO_TARIFA').AsString)
  else
    ShowMtoTarifas(Self.Owner);
end;

procedure TfrmMtoFamilias.btnGrabarClick(Sender: TObject);
begin
  if ( (dsTablaG.DataSet.State = dsInsert) or
       (dsTablaG.DataSet.State = dsEdit)) then
  begin
    dsTablaG.DataSet.Post;
  end;
end;

procedure TfrmMtoFamilias.CrearTablaPrincipal;
begin
  inherited;
  dmmFamilias := TdmFamilias.Create(Self);
end;

end.
