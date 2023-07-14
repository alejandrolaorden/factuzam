unit inMtoTarifas;

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
  dxBevel, cxDBNavigator, inMtoPrincipal, UniDataTarifas,
  dxDateRanges, MemDS, DBAccess, Uni, cxImage, dxGDIPlusClasses, inMtoGen,
  Vcl.Menus, dxSkinsForm, cxButtons, dxSkinsDefaultPainters, cxMemo, cxSpinEdit,
  cxCalendar, cxBlobEdit, dxScrollbarAnnotations, dxCore, cxRadioGroup,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxSplitter;

type
  TfrmMtoTarifas = class(TfrmMtoGen)
    pnl1: TPanel;
    cxdbtxtdt1: TcxDBTextEdit;
    cxdbtxtdt2: TcxDBTextEdit;
    pnl2: TPanel;
    pcPestana: TcxPageControl;
    tsArticulos: TcxTabSheet;
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
    chkActivo: TcxDBCheckBox;
    txtNOMBRE_FAMILIA: TcxDBTextEdit;
    cxgrdbclmnGrdDBTabPrinCODIGO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNOMBRE_TARIFA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinACTIVO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFECHA_DESDE_TARIFA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFECHA_HASTA_TARIFA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESIMP_INCL_TARIFA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESDEFAULT_TARIFA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn;
    cxdbdtdtFECHA_FACTURA: TcxDBDateEdit;
    cxlbllblcxlbl3: TcxLabel;
    cxdbdtdtFECHA_FACTURA1: TcxDBDateEdit;
    cxlbllblcxlbl31: TcxLabel;
    cxdbchckbxACTIVO_TARIFA: TcxDBCheckBox;
    actmgr1: TActionManager;
    act1: TAction;
    act2: TAction;
    act3: TAction;
    pnl6: TPanel;
    btnIraArticulo: TcxButton;
    btAddBlock: TcxButton;
    cxspltr1: TcxSplitter;
    pnlArticulos: TPanel;
    cxgrdArticulosTarifas: TcxGrid;
    tvArticulos: TcxGridDBTableView;
    cxgrdbclmnArticulosACTIVO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnArticulosCODIGO_ARTICULO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnArticulosDESCRIPCION_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosCODIGO_FAMILIA_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosDESCRIPCION_FAMILIA: TcxGridDBColumn;
    cxgrdbclmnArticulosCODIGO_PROVEEDOR: TcxGridDBColumn;
    cxgrdbclmnArticulosTIPOIVA_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosFECHA_DESDE_TARIFA: TcxGridDBColumn;
    cxgrdbclmnArticulosFECHA_HASTA_TARIFA: TcxGridDBColumn;
    cxgrdbclmnArticulosRAZONSOCIAL_PROVEEDOR: TcxGridDBColumn;
    cxgrdbclmnArticulosTIPO_CANTIDAD_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosPRECIO_ULT_COMPRA: TcxGridDBColumn;
    cxgrdbclmnArticulosFECHA_VALIDEZ: TcxGridDBColumn;
    cxgrdbclmnArticulosPRECIOFINAL: TcxGridDBColumn;
    cxgrdbclmnArticulosINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnArticulosINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnArticulosUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnArticulosUSUARIOMODIF: TcxGridDBColumn;
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
    cxgrdlvlArticulosTarifas: TcxGridLevel;
    cxspltr2: TcxSplitter;
    cxspltr3: TcxSplitter;
    procedure act1Execute(Sender: TObject);
    procedure btnIraArticuloClick(Sender: TObject);
    procedure act2Execute(Sender: TObject);
    procedure act3Execute(Sender: TObject);
    procedure btAddBlockClick(Sender: TObject);
  public
    procedure CrearTablaPrincipal; override;
  end;
  procedure ShowMtoTarifas(Owner       : TComponent); overload;
  procedure ShowMtoTarifas(Owner       : TComponent; sCodigoTarifa: String); overload;
const
  pkFieldName = 'CODIGO_TARIFA';

var
  frmMtoTarifas: TfrmMtoTarifas;
  dmmTarifas : TdmTarifas;

implementation

uses
  inLibWin,
  inLibUser,
  inLibDevExp,
  inMtoArticulos,
  inMtoFamilias,
  inMtoProveedores;

{$R *.dfm}

procedure ShowMtoTarifas(Owner       : TComponent); overload;
var
  frmMtoTarifas : TfrmMtoTarifas;
begin
  frmMtoTarifas := TfrmMtoTarifas(FindMDIChildOpen((Owner as TfrmOpenApp),
                                  TfrmMtoTarifas,
                                  'frmMtoTarifas'));
  begin
  if (frmMtoTarifas = nil) then
  begin
    frmMtoTarifas := TfrmMtoTarifas.Create(Owner);
    frmMtoTarifas.edtBusqGlobal.SetFocus;
  end
  else
    frmMtoTarifas.BringToFront;
  frmMtoTarifas.pcPantalla.ActivePage := frmMtoTarifas.tsFicha;
  end;
end;

procedure ShowMtoTarifas(Owner       : TComponent;
                           sCodigoTarifa: String); overload;
var
  frmMtoTarifas : TfrmMtoTarifas;
begin
  frmMtoTarifas := TfrmMtoTarifas(FindMDIChildOpen((Owner as TfrmOpenApp),
                                  TfrmMtoTarifas,
                                  'frmMtoTarifas'));
  if (frmMtoTarifas = nil) then
  begin
    frmMtoTarifas := TfrmMtoTarifas.Create(Owner);
  end;
  frmMtoTarifas.BringToFront;
  if not (frmMtoTarifas.tdmDataModule.unqryTablaG.Locate(pkFieldName,
                                                        sCodigoTarifa, [])) then
    ShowMessage('Tarifa no encontrada')
  else
    frmMtoTarifas.pcPantalla.ActivePage := frmMtoTarifas.tsFicha;
end;

procedure TfrmMtoTarifas.act1Execute(Sender: TObject);
begin
  inherited; //Control + R Artículos
  with dmmTarifas do
  if ((tvArticulos.Focused) and
      (pcPestana.ActivePage = tsArticulos) and
      (not(unqryArticulosTarifas.FieldByName('CODIGO_ARTICULO_TARIFA').IsNull))
     ) then
    ShowMtoArticulos(Self.Owner,
      unqryArticulosTarifas.FieldByName('CODIGO_ARTICULO_TARIFA').AsString)
  else
    ShowMtoArticulos(Self.Owner);
end;

procedure TfrmMtoTarifas.act2Execute(Sender: TObject);
begin
  inherited;  //Control + N Familias
  with dmmTarifas.unqryArticulosTarifas do
  begin
    if ((tvArticulos.Focused) and
        (pcPestana.ActivePage = tsArticulos) and
         (not(FieldByName('CODIGO_FAMILIA_ARTICULO').IsNull))
       ) then
      ShowMtoFamilias(Self.Owner,
                      FieldByName('CODIGO_FAMILIA_ARTICULO').AsString)
      else
        ShowMtoFamilias(Self.Owner);
  end;
end;

procedure TfrmMtoTarifas.act3Execute(Sender: TObject);
begin
  inherited; // Control + P Proveedores
  with dmmTarifas.unqryArticulosTarifas do
  begin
    if ((tvArticulos.Focused) and
        (pcPestana.ActivePage = tsArticulos) and
        (not(FieldByName('CODIGO_PROVEEDOR').IsNull))
       ) then
      ShowMtoProveedores(Self.Owner,
                         FieldByName('CODIGO_PROVEEDOR').AsString)
      else
        ShowMtoProveedores(Self.Owner);
  end;
end;

procedure TfrmMtoTarifas.btAddBlockClick(Sender: TObject);
begin
  inherited;
  //mostrar dialogo para filtrar por proveedores, familias, artículos
end;

procedure TfrmMtoTarifas.btnIraArticuloClick(Sender: TObject);
begin
  inherited;  //CONTROL + R Articulos
    with dmmTarifas.unqryArticulosTarifas do
  begin
    if ((tvArticulos.Focused) and
        (pcPestana.ActivePage = tsArticulos) and
        (not(FieldByName('CODIGO_ARTICULO_TARIFA').Isnull))
       ) then
      ShowMtoArticulos(Self.Owner,
          FieldByName('CODIGO_ARTICULO_TARIFA').AsString)
      else
        ShowMtoArticulos(Self.Owner);
  end;
end;

procedure TfrmMtoTarifas.CrearTablaPrincipal;
begin
  inherited;
  dmmTarifas := TdmTarifas.Create(Self);
  tvArticulos.DataController.DataSource := dmmTarifas.dsArticulosTarifas;
end;

end.
