{*******************************************************}
{                                                       }
{       FactuZam                                        }
{                                                       }
{       Copyright (C) 2023 Alejandro Laorden Hidalgo    }
{                                                       }
{*******************************************************}

unit inMtoProveedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inMtoGen,
  dxSkinsCore, dxSkinsDefaultPainters, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  Vcl.Menus, cxContainer, dxSkinsForm, cxClasses, cxLocalization, cxDBNavigator,
  cxLabel, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  Vcl.ExtCtrls, UniDataConn, UniDataProveedores, dxBar, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, cxTextEdit, Vcl.Buttons, dxBevel, cxCurrencyEdit,
  cxCalendar, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxGDIPlusClasses, cxImage,
  cxCustomListBox, cxCheckListBox, cxDBCheckListBox, cxCheckBox, cxMemo,
  inLibDevExp, inLibtb, cxBlobEdit, ClipBrd, dxScrollbarAnnotations, dxCore,
  cxRadioGroup, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  cxSplitter, cxSpinEdit;

type
  TfrmMtoProveedores = class(TfrmMtoGen)
    cxgrdbclmnGrdDBTabPrinCODIGO_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNIF_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinMOVIL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinEMAIL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION1_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION2_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPOBLACION_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPROVINCIA_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCPOSTAL_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPAIS_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinOBSERVACIONES_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinREFERENCIA_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTELEFONO_CLIENTE: TcxGridDBColumn;
    pnlCabFicha: TPanel;
    cxdbtxtdtCODIGO_CLIENTE: TcxDBTextEdit;
    lblCodigo: TcxLabel;
    txtRAZONSOCIAL_PROVEEDOR: TcxDBTextEdit;
    lblRazonSocial: TcxLabel;
    cxdbtxtdtTELEFONO2: TcxDBTextEdit;
    lblEmail: TcxLabel;
    cxdbtxtdtEMAIL: TcxDBTextEdit;
    lblNif: TcxLabel;
    cxdbtxtdtNIF: TcxDBTextEdit;
    cxdbtxtdtMOVIL_CLIENTE: TcxDBTextEdit;
    pnlDetailFicha: TPanel;
    pcPestanas: TcxPageControl;
    tsDomicilioFiscal: TcxTabSheet;
    cxdbtxtdt7: TcxDBTextEdit;
    lblDireccion1: TcxLabel;
    lblCodPostal: TcxLabel;
    cxdbtxtdt8: TcxDBTextEdit;
    lblPoblacion: TcxLabel;
    cxdbtxtdt9: TcxDBTextEdit;
    cxdbtxtdt10: TcxDBTextEdit;
    lblProvincia: TcxLabel;
    cxdbtxtdt16: TcxDBTextEdit;
    lblPais: TcxLabel;
    cxdbtxtdtDireccion: TcxDBTextEdit;
    lblDireccion2: TcxLabel;
    tsMasDatos: TcxTabSheet;
    lblObservaciones: TcxLabel;
    lblReferencia: TcxLabel;
    cxdbtxtdtREFERENCIA_CLIENTE: TcxDBTextEdit;
    lblContacto: TcxLabel;
    cxdbtxtdtREFERENCIA_CLIENTE1: TcxDBTextEdit;
    cxdbtxtdtIBAN: TcxDBTextEdit;
    lblNroCuenta: TcxLabel;
    lblTelefonoContacto: TcxLabel;
    cxdbtxtdtCONTACTO_CLIENTE: TcxDBTextEdit;
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
    cxgrdbclmnGrdDBTabPrinCONTACTO_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTELEFONO_CONTACTO_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinIBAN_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn;
    cxdbm2: TcxDBMemo;
    chkActivo: TcxDBCheckBox;
    cxgrdbclmnGrdDBTabPrinACTIVO_CLIENTE: TcxGridDBColumn;
    tsArticulos: TcxTabSheet;
    pnl6: TPanel;
    btnIraArticulo: TcxButton;
    pnl61: TPanel;
    cxgrdArticulos: TcxGrid;
    tvArticulos: TcxGridDBTableView;
    cxgrdlvlArticulos: TcxGridLevel;
    cxgrdbclmnArticulosCODIGO_PROVEEDOR: TcxGridDBColumn;
    cxgrdbclmnArticulosCODIGO_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosDESCRIPCION_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosCODIGO_FAMILIA: TcxGridDBColumn;
    cxgrdbclmnArticulosDESCRIPCION_FAMILIA: TcxGridDBColumn;
    cxgrdbclmnArticulosTIPO_CATNTIDAD_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosESACTIVO_FIJO_ARTICULO: TcxGridDBColumn;
    cxgrdbclmnArticulosPRECIO_ULT_COMPRA: TcxGridDBColumn;
    cxgrdbclmnArticulosFECHA_VALIDEZ: TcxGridDBColumn;
    cxgrdbclmnArticulosESPROVEEDORPRINCIPAL: TcxGridDBColumn;
    cxgrdbclmnArticulosINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnArticulosINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnArticulosUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnArticulosUSUARIOMODIF: TcxGridDBColumn;
    actmgr1: TActionManager;
    act1: TAction;
    actFacturas: TAction;
    tsVentas: TcxTabSheet;
    cxgrdLinFac: TcxGrid;
    tvLinFac: TcxGridDBTableView;
    cxgrdbclmnLinFacNRO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacSERIE_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacLINEA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacTIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacCANTIDAD_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacDESCRIPCION_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacNOMBRE_TARIFA: TcxGridDBColumn;
    cxgrdbclmnLinFacESIMP_INCL_TARIFA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacPRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacPORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacPRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacCODIGO_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacCODIGO_FAMILIA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacNOMBRE_FAMILIA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacTOTAL_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmnLinFacFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdlvlLinFac: TcxGridLevel;
    actArticulos: TAction;
    cxspltr1: TcxSplitter;
    lblTextoLegal11: TcxLabel;
    cxdbspndtORDEN_CLIENTE: TcxDBSpinEdit;
    btnNuevoProveedor: TcxButton;
    dbcLinFacNOMBRE_TIPO_IVA: TcxGridDBColumn;
    dbcLinFacCODIGO_TARIFA_FACTURA_LINEA: TcxGridDBColumn;
    pnl62: TPanel;
    btnIraFactura: TcxButton;
    btnIraCliente: TcxButton;
    dbcLinFacCODIGO_CLIENTE_FACTURA: TcxGridDBColumn;
    btnExportar: TcxButton;
    btnIraArticuloVentas: TcxButton;
    procedure btnGrabarClick(Sender: TObject);
    procedure btnIraArticuloClick(Sender: TObject);
    procedure actArticulosExecute(Sender: TObject);
    procedure btnNuevoProveedorClick(Sender: TObject);
    procedure actFacturasExecute(Sender: TObject);
    procedure btnIraFacturaClick(Sender: TObject);
    procedure btnIraClienteClick(Sender: TObject);
    procedure act1Execute(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CrearTablaPrincipal; override;
    procedure CargarPerfilesParticulares; override;
  end;

procedure ShowMtoProveedores(Owner: TComponent); overload;

procedure ShowMtoProveedores(Owner: TComponent; sCodigoProveedor: string);
                                                                       overload;

const
  pkFieldName = 'CODIGO_PROVEEDOR';

var
  dmmProveedores: TDMProveedores;
  frmMtoProveedores: TfrmMtoProveedores;

implementation

uses
  inLibWin,
  inLibUser,
  inMtoPrincipal,
  inMtoArticulos,
  inMtoClientes,
  inMtoFacturas;

{$R *.dfm}

procedure ShowMtoProveedores(Owner: TComponent); overload;
var
  frmMtoProveedores: TfrmMtoProveedores;
begin
  if ((Owner as TfrmOpenApp).mnuProveedores.Visible) then
  begin
    frmMtoProveedores := TfrmMtoProveedores(
                                      FindMDIChildOpen((Owner as TfrmOpenApp),
                                      TfrmMtoProveedores, 'frmMtoProveedores'));
    if (frmMtoProveedores = nil) then
    begin
      frmMtoProveedores := TfrmMtoProveedores.Create(Owner);
      frmMtoProveedores.edtBusqGlobal.SetFocus;
    end
    else
      frmMtoProveedores.BringToFront;
    frmMtoProveedores.pcPantalla.ActivePage :=
                                            frmMtoProveedores.tsDomicilioFiscal;
  end;
  //cxdbtxtdtRAZON_SOCIAL.SetFocus;
end;

procedure ShowMtoProveedores(Owner: TComponent; sCodigoProveedor: string);
                                                                       overload;
var
  frmMtoProveedores: TfrmMtoProveedores;
begin
  if ((Owner as TfrmOpenApp).mnuProveedores.Visible) then
  begin
    frmMtoProveedores := TfrmMtoProveedores(
                                      FindMDIChildOpen((Owner as TfrmOpenApp),
                                      TfrmMtoProveedores, 'frmMtoProveedores'));
    if (frmMtoProveedores = nil) then
    begin
      frmMtoProveedores := TfrmMtoProveedores.Create(Owner);
    end;
    frmMtoProveedores.BringToFront;
    if not (frmMtoProveedores.tdmDataModule.unqryTablaG.Locate(pkFieldName,
                                                               sCodigoProveedor,
                                                               [])) then
      ShowMessage('Proveedor no encontrado')
    else
      frmMtoProveedores.pcPantalla.ActivePage := frmMtoProveedores.tsFicha;
    frmMtoProveedores.pcPantalla.ActivePage :=
                                            frmMtoProveedores.tsDomicilioFiscal;
  end;
end;

procedure TfrmMtoProveedores.btnIraArticuloClick(Sender: TObject);
begin
  inherited;
  with dmmProveedores do
  begin
    if ((tvArticulos.Focused) and (pcPestanas.ActivePage = tsArticulos)) then
      ShowMtoArticulos(Self.Owner,
                         unqryArticulos.FieldByName('CODIGO_ARTICULO').AsString)
    else if ((tvLinFac.Focused) and (pcPestanas.ActivePage = tsVentas)) then
      ShowMtoArticulos(Self.Owner,
              unqryLinFacturasArticulos.FieldByName('CODIGO_ARTICULO').AsString)
  end;
end;

procedure TfrmMtoProveedores.btnIraClienteClick(Sender: TObject);
begin
  inherited;
  ShowMtoClientes(Self.Owner,
                           dmmProveedores.unqryLinFacturasArticulos.FieldByName(
                                            'CODIGO_CLIENTE_FACTURA').AsString);
end;

procedure TfrmMtoProveedores.btnIraFacturaClick(Sender: TObject);
var
  sNroFactura, sSerieFactura:String;
begin
  inherited;
  sNroFactura := tvLinFac.DataController.DataSet.FieldByName(
                                                  'NRO_FACTURA_LINEA').AsString;
  sSerieFactura := tvLinFac.DataController.DataSet.FieldByName(
                                                'SERIE_FACTURA_LINEA').AsString;
  ShowMtoFacturas(Self.Owner, sNroFactura, sSerieFactura);
end;

procedure TfrmMtoProveedores.btnNuevoProveedorClick(Sender: TObject);
begin
  inherited;
  if ( (dmmProveedores.unqryTablaG.State = dsInsert) or
       (dmmProveedores.unqryTablaG.State = dsEdit)) then
  begin
    dmmProveedores.unqryTablaG.Post;
  end;
  dmmProveedores.unqryTablaG.Insert;
  tsFicha.SetFocus;
  pcPestanas.ActivePageIndex := tsDomicilioFiscal.PageIndex;
  txtRAZONSOCIAL_PROVEEDOR.SetFocus;
end;

procedure TfrmMtoProveedores.act1Execute(Sender: TObject);
begin
  inherited;
  //Control + K
    if ((tvLinFac.Focused) and
      (pcPestanas.ActivePage = tsVentas)
     ) then
       btnIraClienteClick(Sender)
  else
    ShowMtoClientes(Self.Owner);
end;

procedure TfrmMtoProveedores.actFacturasExecute(Sender: TObject);
begin
  inherited;
  //Control + F
    if ((tvLinFac.Focused) and
        (pcPestanas.ActivePage = tsVentas)) then
      btnIraFacturaClick(Sender)
    else
      ShowMtoFacturas(Self.Owner);
end;

procedure TfrmMtoProveedores.actArticulosExecute(Sender: TObject);
begin
  inherited;
  // Control + R
  btnIraArticuloClick(Sender);
end;

procedure TfrmMtoProveedores.btnExportarClick(Sender: TObject);
begin
  inherited;
  ExportarExcel(cxgrdLinFac, 'Ventas de artículos por proveedor_' +
                     dsTablaG.DataSet.FieldByName('CODIGO_PROVEEDOR').AsString);
end;

procedure TfrmMtoProveedores.btnGrabarClick(Sender: TObject);
begin
  dmmProveedores.unqryTablaG.Post;
end;

procedure TfrmMtoProveedores.CargarPerfilesParticulares;
begin
  inherited;
end;

procedure TfrmMtoProveedores.CrearTablaPrincipal;
begin
  inherited;
  dmmProveedores := TDMProveedores.Create(Self);
  tvArticulos.DataController.DataSource := dmmProveedores.dsArticulos;
  tvLinFac.DataController.DataSource := dmmProveedores.dsLinFacturasArticulos;
  pcPestanas.ActivePage := tsDomicilioFiscal;
end;

end.

