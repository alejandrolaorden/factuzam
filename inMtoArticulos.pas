unit inMtoArticulos;

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
  dxBevel, cxDBNavigator, UniDataArticulos,
  dxDateRanges, MemDS, DBAccess, Uni, cxImage, dxGDIPlusClasses, inMtoGen,
  Vcl.Menus, dxSkinsForm, cxButtons, dxSkinsDefaultPainters, cxMemo, cxSpinEdit,
  cxCalendar, cxBlobEdit, Vcl.DBCtrls, cxCheckComboBox, cxDBCheckComboBox,
  cxGroupBox, cxCheckGroup, cxDBCheckGroup, cxRadioGroup,
  dxScrollbarAnnotations, dxCore, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, cxButtonEdit, cxSplitter,
  cxDBExtLookupComboBox;

type
  TfrmMtoArticulos = class(TfrmMtoGen)
    pnl1: TPanel;
    cxdbtxtdt1: TcxDBTextEdit;
    cxdbtxtdt2: TcxDBTextEdit;
    pnl2: TPanel;
    pcPestana: TcxPageControl;
    cxdbtxtdt15: TcxDBTextEdit;
    txtDESCRIPCION_ARTICULO: TcxDBTextEdit;
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
    cbbFamilia: TcxDBLookupComboBox;
    lbl1: TcxLabel;
    tsTarifas: TcxTabSheet;
    cxgrdbclmnGrdDBTabPrinCODIGO_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinACTIVO_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDESCRIPCION_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCODIGO_FAMILIA_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTIPOIVA_ARTICULO: TcxGridDBColumn;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxgrdbclmnGrdDBTabPrinDESCRIPCION_FAMILIA: TcxGridDBColumn;
    cxgrdTarifas: TcxGrid;
    tvTarifas: TcxGridDBTableView;
    cxgrdlvlTarifas: TcxGridLevel;
    chkACTIVO_ARTICULO: TcxDBCheckBox;
    tsProveedores: TcxTabSheet;
    tsLineasFactura: TcxTabSheet;
    actmgr1: TActionManager;
    actEmpresas: TAction;
    actFacturas: TAction;
    actProveedores: TAction;
    actTarifas: TAction;
    cxgrdProveedores: TcxGrid;
    tvProveedores: TcxGridDBTableView;
    cxgrdlvlProveedores: TcxGridLevel;
    cxgrdLinFac: TcxGrid;
    tvLinFac: TcxGridDBTableView;
    cxgrdlvlLinFac: TcxGridLevel;
    cxgrdbclmnProveedoresCODIGO_PROVEEDOR: TcxGridDBColumn;
    cxgrdbclmnProveedoresCODIGO_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnProveedoresPRECIO_ULT_COMPRA: TcxGridDBColumn;
    cxgrdbclmnProveedoresFECHA_VALIDEZ: TcxGridDBColumn;
    cxgrdbclmnProveedoresINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnProveedoresINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnProveedoresUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnProveedoresUSUARIOMODIF: TcxGridDBColumn;
    cxgrdbclmnLinFacNRO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacSERIE_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacLINEA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacCODIGO_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacCODIGO_FAMILIA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacNOMBRE_FAMILIA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacTIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacESIMP_INCL_TARIFA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacTIPOIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacDESCRIPCION_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacCANTIDAD_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacPRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacPORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacPRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacTOTAL_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacNOMBRE_TARIFA: TcxGridDBColumn;
    pnlFacturaOpts: TPanel;
    btIraFactura: TcxButton;
    btIraEmpresa: TcxButton;
    btExportarLineas: TcxButton;
    pnlFacturaOpts1: TPanel;
    btIraProveedor: TcxButton;
    btExportarProveedor: TcxButton;
    pnlFacturaOpts2: TPanel;
    btIraTarifa: TcxButton;
    btCrearTarifa: TcxButton;
    btExportarTarifa: TcxButton;
    btIraCliente: TcxButton;
    cxgrdbclmnProveedoresRAZONSOCIAL_PROVEEDOR: TcxGridDBColumn;
    btAddProveedor: TcxButton;
    cxgrdbclmnProveedoresESPROVEEDORPRINCIPAL: TcxGridDBColumn;
    cxdbtxtdtTIPO_CANTIDAD_ARTICULO: TcxDBTextEdit;
    lblNombre1: TcxLabel;
    cxspltr1: TcxSplitter;
    cxgrdbclmnTarifasCODIGO_ARTICULO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnTarifasDESCRIPCION_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnTarifasTIPO_CANTIDAD_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnTarifasTIPO_IVA_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnTarifasACTIVO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnTarifasCODIGO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnTarifasFECHA_DESDE_TARIFA: TcxGridDBColumn;
    cxgrdbclmnTarifasFECHA_HASTA_TARIFA: TcxGridDBColumn;
    cxgrdbclmnTarifasPRECIOFINAL: TcxGridDBColumn;
    cxgrdbclmnTarifasPRECIOSALIDA: TcxGridDBColumn;
    cxgrdbclmnTarifasPORCEN_DTO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnTarifasPRECIO_DTO_TARIFA: TcxGridDBColumn;
    cxgrdbclmnTarifasCODIGO_PROVEEDOR: TcxGridDBColumn;
    cxgrdbclmnTarifasRAZONSOCIAL_PROVEEDOR: TcxGridDBColumn;
    cxgrdbclmnTarifasPRECIO_ULT_COMPRA: TcxGridDBColumn;
    cxgrdbclmnTarifasFECHA_VALIDEZ: TcxGridDBColumn;
    cxgrdbclmnTarifasCODIGO_FAMILIA_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnTarifasDESCRIPCION_FAMILIA: TcxGridDBColumn;
    cxgrdbclmnTarifasINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnTarifasINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnTarifasUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnTarifasUSUARIOMODIF: TcxGridDBColumn;
    cxgrdbclmnTarifasNOMBRE_TARIFA: TcxGridDBColumn;
    lblTextoLegal11: TcxLabel;
    cxdbspndtORDEN_CLIENTE: TcxDBSpinEdit;
    btnNuevoArticulo: TcxButton;
    actFamilias: TAction;
    procedure btAddProveedorClick(Sender: TObject);
    procedure cxgrdbclmnProveedoresCODIGO_PROVEEDORPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btIraProveedorClick(Sender: TObject);
    procedure actProveedoresExecute(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure actTarifasExecute(Sender: TObject);
    procedure btnNuevoArticuloClick(Sender: TObject);
    procedure actFacturasExecute(Sender: TObject);
    procedure actFamiliasExecute(Sender: TObject);
    procedure btIraFacturaClick(Sender: TObject);
    procedure btIraEmpresaClick(Sender: TObject);
  private
     procedure BuscarProveedores;
  public
    procedure CrearTablaPrincipal; override;
  end;
  procedure ShowMtoArticulos(Owner       : TComponent); overload;
  procedure ShowMtoArticulos(Owner       : TComponent;
                             sCodigoArticulo: String); overload;
const
  pkFieldName = 'CODIGO_ARTICULO';

var
  frmMtoArticulos: TfrmMtoArticulos;
  dmmArticulos : TdmArticulos;

implementation

uses
  inLibWin,
  inLibUser,
  inLibDevExp,
  inMtoProveedores,
  inMtoPrincipal,
  inMtoTarifas,
  inMtoFamilias,
  inMtoEmpresas,
  inMtoFacturas,
  inMtoGenSearch;

{$R *.dfm}

procedure ShowMtoArticulos(Owner       : TComponent); overload;
var
  frmMtoArticulos : TfrmMtoArticulos;
begin
  if ((Owner as TfrmOpenApp).mnuArticulos.Visible) then
  begin
    frmMtoArticulos := TfrmMtoArticulos(FindMDIChildOpen((Owner as TfrmOpenApp),
                                        TfrmMtoArticulos,
                                        'frmMtoArticulos'));
    if (frmMtoArticulos = nil) then
    begin
      frmMtoArticulos := TfrmMtoArticulos.Create(Owner);
      frmMtoArticulos.edtBusqGlobal.SetFocus;
    end
    else
      frmMtoArticulos.BringToFront;
  end;
end;

procedure ShowMtoArticulos(Owner       : TComponent;
                           sCodigoArticulo: String); overload;
var
  frmMtoArticulos : TfrmMtoArticulos;
begin
  if ((Owner as TfrmOpenApp).mnuArticulos.Visible) then
  begin
    frmMtoArticulos := TfrmMtoArticulos(FindMDIChildOpen((Owner as TfrmOpenApp),
                                        TfrmMtoArticulos,
                                        'frmMtoArticulos'));
    if (frmMtoArticulos = nil) then
    begin
      frmMtoArticulos := TfrmMtoArticulos.Create(Owner);
    end;
    frmMtoArticulos.BringToFront;
    if not (frmMtoArticulos.tdmDataModule.unqryTablaG.Locate(pkFieldName,
                                                      sCodigoArticulo, [])) then
      ShowMessage('Artículo no encontrado')
    else
      frmMtoArticulos.pcPantalla.ActivePage := frmMtoArticulos.tsFicha;
  end;
end;

procedure TfrmMtoArticulos.actFacturasExecute(Sender: TObject);
begin
  inherited;
  //Control + F   -> Facturas
   with tvLinFac.DataController.DataSet do
    if ((tvLinFac.Focused) and
        (pcPestana.ActivePage = tsLineasFactura)        and
        (not(FieldByName('NRO_FACTURA_LINEA').IsNull))  and
        (not(FieldByName('SERIE_FACTURA_LINEA').IsNull))
       ) then
      btIraFacturaClick(Sender)
    else
      ShowMtoFacturas(Self.Owner);
end;

procedure TfrmMtoArticulos.actFamiliasExecute(Sender: TObject);
begin
  inherited;
  //Control + N     -> Familias
  with dsTablaG.DataSet do
    if ((not(FieldByName('CODIGO_FAMILIA_ARTICULO').IsNull))
       ) then
      ShowMtoFamilias(Self.Owner,
                               FieldByName('CODIGO_FAMILIA_ARTICULO').AsString)
    else
      ShowMtoFamilias(Self.Owner);
end;

procedure TfrmMtoArticulos.actProveedoresExecute(Sender: TObject);
begin  //control + P -> proveedores
  inherited;
  with tvProveedores.DataController.DataSet do
    if ((tvProveedores.Focused) and
        (pcPestana.ActivePage = tsProveedores) and
        (not(FieldByName('CODIGO_PROVEEDOR').IsNull))
       ) then
      btIraProveedorClick(Sender)
    else
      ShowMtoProveedores(Self.Owner);
end;

procedure TfrmMtoArticulos.actTarifasExecute(Sender: TObject);
begin
  inherited;
  //Control + T -> Tarifas

end;

procedure TfrmMtoArticulos.btAddProveedorClick(Sender: TObject);
begin
  if ((dmmArticulos.unqryProveedoresArticulos.State <> dsInsert)
     ) then
    dmmArticulos.unqryProveedoresArticulos.Insert;
  BuscarProveedores;
end;

procedure TfrmMtoArticulos.btIraEmpresaClick(Sender: TObject);
begin
  inherited;
  ShowMtoEmpresas(Self.Owner,
  tvLinfac.DataController.DataSet.FieldByName(
                                      'CODIGO_EMPRESA_FACTURA_LINEA').AsString);
end;

procedure TfrmMtoArticulos.btIraFacturaClick(Sender: TObject);
begin
  inherited;
  with tvLinFac.DataController.DataSource.DataSet do
  ShowMtoFacturas(Self.Owner,
                  FieldByName('NRO_FACTURA_LINEA').AsString,
                  FieldByName('SERIE_FACTURA_LINEA').AsString);
end;

procedure TfrmMtoArticulos.btIraProveedorClick(Sender: TObject);
begin
  inherited;
    ShowMtoProveedores(Self.Owner,
 tvProveedores.DataController.DataSet.FieldByName('CODIGO_PROVEEDOR').AsString);
end;

procedure TfrmMtoArticulos.btnGrabarClick(Sender: TObject);
begin
  if ( (dmmArticulos.unqryTablaG.State = dsInsert) or
       (dmmArticulos.unqryTablaG.State = dsEdit)) then
  begin
    dmmArticulos.unqryTablaG.Post;
  end;
  if ( (dmmArticulos.unqryProveedoresArticulos.State = dsInsert) or
       (dmmArticulos.unqryProveedoresArticulos.State = dsEdit)) then
  begin
    dmmArticulos.unqryProveedoresArticulos.Post;
  end;
  if ( (dmmArticulos.unqryTarifasArticulos.State = dsInsert) or
       (dmmArticulos.unqryTarifasArticulos.State = dsEdit)) then
  begin
    dmmArticulos.unqryTarifasArticulos.Post;
  end;
end;

procedure TfrmMtoArticulos.btnNuevoArticuloClick(Sender: TObject);
begin
  inherited;
  if ( (dmmArticulos.unqryTablaG.State = dsInsert) or
       (dmmArticulos.unqryTablaG.State = dsEdit)) then
  begin
    dmmArticulos.unqryTablaG.Post;
  end;
  dmmArticulos.unqryTablaG.Insert;
  pcPantalla.Properties.ActivePage := tsFicha;
  tsFicha.SetFocus;
  pcPestana.Properties.ActivePage := tsTarifas;
  //tsDomicilioFiscal.SetFocus;
  txtDESCRIPCION_ARTICULO.SetFocus;
end;

procedure TfrmMtoArticulos.BuscarProveedores;
var
  formulario : TfrmMtoSearch;
begin
  formulario := TfrmMtoSearch.Create(Self.Owner);
  formulario.Name := 'frmMtoArtProvSearch';
  formulario.Caption := 'Búsqueda de Proveedores en Articulos';
  try
    formulario.dsTablaG.DataSet := dmmArticulos.unqryProveedores;
    formulario.dsTablaG.DataSet.Open;
    formulario.ProcesarPerfiles;  //debe ir después de abrir el datase
    formulario.ShowModal;
  finally
      inherited;
      if formulario.sFicha = 'S' then
        dmmArticulos.CopiarProveedoraArticulo(dmmArticulos.unqryProveedores);
      formulario.dsTablaG.DataSet.Close;
      FreeAndNil(formulario);
  end;
end;

procedure TfrmMtoArticulos.CrearTablaPrincipal;
begin
  inherited;
  dmmArticulos := TdmArticulos.Create(Self);
  cbbFamilia.Properties.ListSource := dmmArticulos.dsFamiliaArticulos;
  tvTarifas.DataController.DataSource := dmmArticulos.dsTarifasArticulos;
  tvProveedores.DataController.DataSource :=
                                            dmmArticulos.dsProveedoresArticulos;
  tvLinFac.DataController.DataSource := dmmArticulos.dsLinFacturasArticulos;
//TcxLookupComboBoxProperties(
//             cxgrdbclmnGrdDBTabPrinTIPOIVA_ARTICULO.Properties).ListSource :=
//                                                      dmmArticulos.dsTiposIVA;
  pcPestana.ActivePage := tsTarifas;
end;

procedure
    TfrmMtoArticulos.cxgrdbclmnProveedoresCODIGO_PROVEEDORPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  BuscarProveedores;
end;

end.
