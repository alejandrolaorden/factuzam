﻿{*******************************************************}
{                                                       }
{       FactuZam                                        }
{                                                       }
{       Copyright (C) 2023 Alejandro Laorden Hidalgo    }
{                                                       }
{*******************************************************}

unit inMtoEmpresas;

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
  dxBevel, cxDBNavigator, UniDataEmpresas,  cxGridExportLink,
  dxDateRanges, MemDS, DBAccess, Uni, cxImage, dxGDIPlusClasses, inMtoGen,
  Vcl.Menus, dxSkinsForm, cxButtons, dxSkinsDefaultPainters, cxMemo, cxSpinEdit,
  cxCalendar, cxBlobEdit, dxScrollbarAnnotations, dxCore, cxRadioGroup,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  cxSplitter, cxGroupBox;

type
  TfrmMtoEmpresas = class(TfrmMtoGen)
    pnlFichaDetail: TPanel;
    pcPestana: TcxPageControl;
    tsMasDatos: TcxTabSheet;
    pnlFichaCab: TPanel;
    tsOtros: TcxTabSheet;
    pnlUserInstantBottom: TPanel;
    cxdbtxtdtDIRECCION1_CLIENTE: TcxDBTextEdit;
    lblUsuarioAlta: TcxLabel;
    lblInstanteAlta: TcxLabel;
    cxdbtxtdtUSUARIOALTA: TcxDBTextEdit;
    cxdbtxtdtINSTANTEALTA: TcxDBTextEdit;
    lblInstanteModif: TcxLabel;
    cxdbtxtdtUSUARIOALTA1: TcxDBTextEdit;
    lblUsuarioModif: TcxLabel;
    cxgrdbclmnGrdDBTabPrinCODIGO_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinORDEN_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinACTIVA_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNIF_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinMOVIL_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinEMAIL_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION1_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION2_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPOBLACION_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPROVINCIA_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCPOSTAL_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrin_ESREGIMENESPECIALAGRICOLA_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESRETENCIONES_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTEXTO_LEGAL_FACTURA_EMPRESA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn;
    lblTextoLegal: TcxLabel;
    cxdbmTEXTO_LEGAL_FACTURA_EMPRESA: TcxDBMemo;
    tsRetenciones: TcxTabSheet;
    lblOrden: TcxLabel;
    txtMOVIL_CLIENTE1: TcxDBTextEdit;
    lblTextoLegal1: TcxLabel;
    btnNuevaEmpresa: TcxButton;
    cxdbspndtORDEN_EMPRESA: TcxDBSpinEdit;
    pnlRetenOpts: TPanel;
    pnlRetencionesCli: TPanel;
    cxgrdRetenciones: TcxGrid;
    tvRetenciones: TcxGridDBTableView;
    cxgrdbclmntv1CODIGO_RETENCION: TcxGridDBColumn;
    cxgrdbclmntv1CODIGO_EMPRESA_RETENCION: TcxGridDBColumn;
    cxgrdbclmntv1FECHA_DESDE_RETENCION: TcxGridDBColumn;
    cxgrdbclmntv1FECHA_HASTA_RETENCION: TcxGridDBColumn;
    cxgrdbclmntv1INSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmntv1INSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmntv1USUARIOALTA: TcxGridDBColumn;
    cxgrdbclmntv1USUARIOMODIF: TcxGridDBColumn;
    cxgrdlvlRetenciones: TcxGridLevel;
    btnAddIRPF: TcxButton;
    cxGrdDBTabPrinPAIS_EMPRESA: TcxGridDBColumn;
    cxGrdDBTabPrinGRUPO_ZONA_IVA_EMPRESA: TcxGridDBColumn;
    cxGrdDBTabPrinDESCRIPCION_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinSERIE_CONTADOR_EMPRESA: TcxGridDBColumn;
    tsHistoriaFacturacion: TcxTabSheet;
    pnlFactura: TPanel;
    cxgrdEmpresasFacturas: TcxGrid;
    tvFacturacion: TcxGridDBTableView;
    tvLineasFacturacion: TcxGridDBTableView;
    tvLineasFacturacionLINEA_LINEA: TcxGridDBColumn;
    tvLineasFacturacionCODIGO_ARTICULO_LINEA: TcxGridDBColumn;
    tvLineasFacturacionDESCRIPCION_ARTICULO_LINEA: TcxGridDBColumn;
    tvLineasFacturacionPORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn;
    tvLineasFacturacionPRECIOVENTA_ARTICULO_LINEA: TcxGridDBColumn;
    tvLineasFacturacionCANTIDAD_LINEA: TcxGridDBColumn;
    tvLineasFacturacionTIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    tvLineasFacturacionSUM_TOTAL_LINEA: TcxGridDBColumn;
    tvLineasFacturacionFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdlvlcxgrd1Level1: TcxGridLevel;
    cxgrdlvlcxgrd1Level2: TcxGridLevel;
    pnlFacturaOpts: TPanel;
    btIraFactura: TcxButton;
    tvLineasFacturacionPRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    btnIraCliente: TcxButton;
    btExportarExcel: TcxButton;
    tvFacturacionFECHA_FACTURA: TcxGridDBColumn;
    tvFacturacionNRO_FACTURA: TcxGridDBColumn;
    tvFacturacionSERIE_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_LIQUIDO_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_RETENCION_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_RETENCION_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_IMPUESTOS_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_BASES_FACTURA: TcxGridDBColumn;
    tvFacturacionFORMA_PAGO_FACTURA: TcxGridDBColumn;
    tvFacturacionCODIGO_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionRAZONSOCIAL_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionNIF_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionMOVIL_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionEMAIL_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionDIRECCION1_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionDIRECCION2_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionPOBLACION_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionPROVINCIA_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionPAIS_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionCPOSTAL_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionESRETENCIONES_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA: TcxGridDBColumn;
    tvFacturacionCODIGO_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionRAZONSOCIAL_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionNIF_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionMOVIL_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionEMAIL_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionDIRECCION1_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionDIRECCION2_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionPOBLACION_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionPROVINCIA_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionCPOSTAL_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionPAIS_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionESIVA_RECARGO_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionESIVA_EXENTO_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionESRETENCIONES_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionESIMP_INCL_TARIFA_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionESINTRACOMUNITARIO_CLIENTE_FACTURA: TcxGridDBColumn;
    tvFacturacionESIRPF_IMP_INCL_ZONA_IVA_FACTURA: TcxGridDBColumn;
    tvFacturacionESAPLICA_RE_ZONA_IVA_FACTURA: TcxGridDBColumn;
    tvFacturacionESIVAAGRICOLA_ZONA_IVA_FACTURA: TcxGridDBColumn;
    tvFacturacionPALABRA_REPORTS_ZONA_IVA_FACTURA: TcxGridDBColumn;
    tvFacturacionESVENTA_ACTIVO_FIJO_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_IVAN_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_IVAN_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_REN_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_REN_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_BASEI_IVAN_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_IVAR_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_IVAR_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_RER_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_RER_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_BASEI_IVAR_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_IVAS_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_IVAS_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_RES_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_RES_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_BASEI_IVAS_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_IVAE_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_IVAE_FACTURA: TcxGridDBColumn;
    tvFacturacionPORCEN_REE_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_REE_FACTURA: TcxGridDBColumn;
    tvFacturacionTOTAL_BASEI_IVAE_FACTURA: TcxGridDBColumn;
    tvRetencionesPORCENRETENCION_RETENCION: TcxGridDBColumn;
    tvFacturacionNOMBRE_TARIFA_CLIENTE: TcxGridDBColumn;
    tvFacturacionDESCRIPCION_ZONA_IVA: TcxGridDBColumn;
    tvFacturacionDESCRIPCION_ZONA_IVA_EMPRESA_FACTURA: TcxGridDBColumn;
    ActionManager1: TActionManager;
    actClientes: TAction;
    actFacturas: TAction;
    spltFicha: TcxSplitter;
    actArticulos: TAction;
    btnIraArticulo: TcxButton;
    tsSeries: TcxTabSheet;
    pnlSeriesOpts: TPanel;
    btnAddSerie: TcxButton;
    pnlSeriesCli: TPanel;
    cxGrdSeries: TcxGrid;
    tvSeries: TcxGridDBTableView;
    dbcCODIGO_SERIE: TcxGridDBColumn;
    dbcCODIGO_EMPRESA: TcxGridDBColumn;
    dbccxgrdbclmntv1FECHA_DESDE_SERIE: TcxGridDBColumn;
    dbcFECHA_HASTA_SERIE: TcxGridDBColumn;
    cxgrdbclmn2: TcxGridDBColumn;
    cxgrdbclmn3: TcxGridDBColumn;
    cxgrdbclmn4: TcxGridDBColumn;
    cxgrdbclmn5: TcxGridDBColumn;
    lvSeries: TcxGridLevel;
    dbcLineasFacturacionNOMBRE_TIPO_IVA: TcxGridDBColumn;
    cxgrpbx1: TcxGroupBox;
    lblMovil: TcxLabel;
    txtMOVIL_EMPRESA: TcxDBTextEdit;
    lblEmail: TcxLabel;
    lblDireccion: TcxLabel;
    txtDIRECCION1_EMPRESA: TcxDBTextEdit;
    txtEMAIL_EMPRESA: TcxDBTextEdit;
    txtDIRECCION2_EMPRESA: TcxDBTextEdit;
    txtPOBLACION_EMPRESA: TcxDBTextEdit;
    lblPoblacion: TcxLabel;
    lblProvincia: TcxLabel;
    txtPROVINCIA_EMPRESA: TcxDBTextEdit;
    chkRegimenEspecial: TcxDBCheckBox;
    cxgrpbx2: TcxGroupBox;
    lblCodigo: TcxLabel;
    txtCODIGO_EMPRESA: TcxDBTextEdit;
    lblNif: TcxLabel;
    txtNIF_EMPRESA: TcxDBTextEdit;
    lblNombre: TcxLabel;
    txtRAZONSOCIAL_EMPRESA: TcxDBTextEdit;
    chkActivo: TcxDBCheckBox;
    chkAplicaRetenciones: TcxDBCheckBox;
    lblCanalIVA: TcxLabel;
    cbbZonaIVA: TcxDBLookupComboBox;
    procedure tsFichaEnter(Sender: TObject);
    procedure chkAplicaRetencionesPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCargarColumnasClick(Sender: TObject);
    procedure btnNuevaEmpresaClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnAddIRPFClick(Sender: TObject);
    procedure btIraFacturaClick(Sender: TObject);
    procedure btnIraClienteClick(Sender: TObject);
    procedure btExportarExcelClick(Sender: TObject);
    procedure actClientesExecute(Sender: TObject);
    procedure actFacturasExecute(Sender: TObject);
    procedure actArticulosExecute(Sender: TObject);
    procedure btnIraArticuloClick(Sender: TObject);
    procedure btnAddSerieClick(Sender: TObject);
  public
    procedure CrearTablaPrincipal; override;
  end;
  procedure ShowMtoEmpresas(Owner       : TComponent); overload;
  procedure ShowMtoEmpresas(Owner       : TComponent; sOdon: String); overload;
const
  pkFieldName = 'CODIGO_EMPRESA';

var
  frmMtoEmpresas: TfrmMtoEmpresas;
  dmmEmpresas : TdmEmpresas;

implementation

uses
  inLibWin,
  inLibUser,
  inLibDir,
  inLibDevExp,
  inMtoPrincipal,
  inMtoFacturas,
  inMtoArticulos,
  inMtoClientes;

{$R *.dfm}

procedure ShowMtoEmpresas(Owner       : TComponent); overload;
var
  frmMtoEmpresas : TfrmMtoEmpresas;
begin
  if ((Owner as TfrmOpenApp).mnuEmpresas.Visible) then
  begin
    frmMtoEmpresas := TfrmMtoEmpresas(FindMDIChildOpen((Owner as TfrmOpenApp),
                                                       TfrmMtoEmpresas,
                                                       'frmMtoEmpresas'));
    if (frmMtoEmpresas = nil) then
    begin
      frmMtoEmpresas := TfrmMtoEmpresas.Create(Owner);
      frmMtoEmpresas.edtBusqGlobal.SetFocus;
    end
    else
      frmMtoEmpresas.BringToFront;
  end;
end;

procedure ShowMtoEmpresas(Owner       : TComponent; sOdon: String); overload;
var
  frmMtoEmpresas : TfrmMtoEmpresas;
begin
  if ((Owner as TfrmOpenApp).mnuEmpresas.Visible) then
  begin
    frmMtoEmpresas := TfrmMtoEmpresas(FindMDIChildOpen((Owner as TfrmOpenApp),
                                                       TfrmMtoEmpresas,
                                                       'frmMtoEmpresas'));
    if (frmMtoEmpresas = nil) then
    begin
      frmMtoEmpresas := TfrmMtoEmpresas.Create(Owner);
      frmMtoEmpresas.edtBusqGlobal.SetFocus;
    end
    else
      frmMtoEmpresas.BringToFront;
     if not (frmMtoEmpresas.tdmDataModule.unqryTablaG.Locate(pkFieldName,
                                                             sOdon, [])) then
      ShowMessage('Empresa no encontrada')
     else
       frmMtoEmpresas.pcPantalla.ActivePage := frmMtoEmpresas.tsFicha;
  end;
end;

procedure TfrmMtoEmpresas.actClientesExecute(Sender: TObject);
begin
  inherited;
  //Control + K
  //https://stackoverflow.com/questions/2317208/
  //how-to-fire-keypreview-event-when-form-has-a-tactionmainmenubar
  if ((tvFacturacion.Focused) and
      (pcPestana.ActivePage = tsHistoriaFacturacion)
     ) then
       btnIraClienteClick(Sender)
  else
    ShowMtoClientes(Self.Owner);
end;

procedure TfrmMtoEmpresas.actFacturasExecute(Sender: TObject);
begin
  inherited;
  //Control + F
    if ((tvFacturacion.Focused) and
        (pcPestana.ActivePage = tsHistoriaFacturacion)) then
       btIraFacturaClick(Sender)
    else
      ShowMtoFacturas(Self.Owner);
end;

procedure TfrmMtoEmpresas.actArticulosExecute(Sender: TObject);
begin
  inherited;
  //Control + R -> Articulos
   if ((tvLineasFacturacion.Focused) and
        (pcPestana.ActivePage = tsHistoriaFacturacion)) then
       btnIraArticuloClick(Sender)
    else
      ShowMtoArticulos(Self.Owner);
end;

procedure TfrmMtoEmpresas.btExportarExcelClick(Sender: TObject);
begin
  ExportarExcel(cxgrdEmpresasFacturas, 'Historico_Facturas_Empresa_' +
                       dsTablaG.Dataset.FieldByName('CODIGO_EMPRESA').AsString);
end;

procedure TfrmMtoEmpresas.btIraFacturaClick(Sender: TObject);
var
  sNroFactura, sSerieFactura:String;
begin
  inherited;
  with tvFacturacion.DataController.DataSet do
  begin
    if ((not(FieldByName('NRO_FACTURA').IsNull)) and
        (not(FieldByName('SERIE_FACTURA').IsNull))
       ) then
       begin
          sNroFactura := FieldByName('NRO_FACTURA').AsString;
          sSerieFactura := FieldByName('SERIE_FACTURA').AsString;
          ShowMtoFacturas(Self.Owner, sNroFactura, sSerieFactura);
       end;
  end;
end;

procedure TfrmMtoEmpresas.btnAddIRPFClick(Sender: TObject);
begin
  inherited;
  if ((dmmEmpresas.unqryTablaG.State <> dsInsert) and
      (dmmEmpresas.unqryTablaG.State <> dsEdit) and
      (dmmEmpresas.unqryRetenciones.State <> dsInsert) and
      (dmmEmpresas.unqryRetenciones.State <> dsEdit)
     ) then
    dmmEmpresas.unqryRetenciones.Insert;
end;

procedure TfrmMtoEmpresas.btnAddSerieClick(Sender: TObject);
begin
  inherited;
    if ((dmmEmpresas.unqryTablaG.State <> dsInsert) and
      (dmmEmpresas.unqryTablaG.State <> dsEdit) and
      (dmmEmpresas.unqrySeries.State <> dsInsert) and
      (dmmEmpresas.unqrySeries.State <> dsEdit)
     ) then
    dmmEmpresas.unqrySeries.Insert;

end;

procedure TfrmMtoEmpresas.btnNuevaEmpresaClick(Sender: TObject);
begin
  inherited;
  if ( (dmmEmpresas.unqryTablaG.State = dsInsert) or
       (dmmEmpresas.unqryTablaG.State = dsEdit)) then
  begin
    dmmEmpresas.unqryTablaG.Post;
  end;
  dmmEmpresas.unqryTablaG.Insert;
  pcPantalla.Properties.ActivePage := tsFicha;
  tsFicha.SetFocus;
  pcPestana.ActivePageIndex := tsMasDatos.PageIndex;
  tsMasDatos.SetFocus;
  txtRAZONSOCIAL_EMPRESA.SetFocus;
end;

procedure TfrmMtoEmpresas.btnCargarColumnasClick(Sender: TObject);
begin
  inherited;
  GetSettingsColumn(tvRetenciones, Self.Name, Self.Owner);
end;

procedure TfrmMtoEmpresas.btnGrabarClick(Sender: TObject);
begin
  if ( (dmmEmpresas.unqryTablaG.State = dsInsert) or
       (dmmEmpresas.unqryTablaG.State = dsEdit)) then
  begin
    dmmEmpresas.unqryTablaG.Post;
  end;
  if ( (dmmEmpresas.unqryRetenciones.State = dsInsert) or
       (dmmEmpresas.unqryRetenciones.State = dsEdit)) then
  begin
    dmmEmpresas.unqryRetenciones.Post;
  end;
  if ( (dmmEmpresas.unqrySeries.State = dsInsert) or
       (dmmEmpresas.unqrySeries.State = dsEdit)) then
  begin
    dmmEmpresas.unqrySeries.Post;
  end;
end;

procedure TfrmMtoEmpresas.chkAplicaRetencionesPropertiesChange(Sender: TObject);
begin
  inherited;
  if chkAplicaRetenciones.Checked = True then
    tsRetenciones.TabVisible := True
  else
    tsRetenciones.TabVisible := False;
end;

procedure TfrmMtoEmpresas.CrearTablaPrincipal;
begin
  inherited;
  dmmEmpresas := TdmEmpresas.Create(Self);
  tvRetenciones.DataController.DataSource := dmmEmpresas.dsRetenciones;
  pcPestana.ActivePage := tsMasDatos;
  tvSeries.DataController.DataSource := dmmEmpresas.dsSeries;
  cbbZonaIVA.Properties.ListSource := dmmEmpresas.dsIvas;
  tvFacturacion.DataController.DataSource := dmmEmpresas.dsFacturasEmpresas;
  tvLineasFacturacion.DataController.DataSource :=
                                           dmmEmpresas.dsFacturasLineasEmpresas;
end;

procedure TfrmMtoEmpresas.btnIraArticuloClick(Sender: TObject);
begin
  inherited;
  with tvLineasFacturacion.DataController.DataSet do
    ShowMtoArticulos(Self.Owner,
                         FieldByName('CODIGO_ARTICULO_FACTURA_LINEA').AsString);
end;

procedure TfrmMtoEmpresas.btnIraClienteClick(Sender: TObject);
begin
  inherited;
  with tvFacturacion.DataController.DataSet do
  ShowMtoClientes(Self.Owner, FieldByName('CODIGO_CLIENTE_FACTURA').AsString);
end;

procedure TfrmMtoEmpresas.FormCreate(Sender: TObject);
begin
  inherited;
  chkAplicaRetencionesPropertiesChange(Sender);
end;

procedure TfrmMtoEmpresas.tsFichaEnter(Sender: TObject);
begin
  inherited;
  txtRAZONSOCIAL_EMPRESA.SetFocus;
end;

end.
