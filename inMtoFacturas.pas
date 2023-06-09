﻿{*******************************************************}
{                                                       }
{       FactuZam                                        }
{                                                       }
{       Copyright (C) 2023 Alejandro Laorden Hidalgo    }
{                                                       }
{*******************************************************}

unit inMtoFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, inMtoGen, UniDataFacturas, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,  System.StrUtils,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, DB, cxDBData, cxContainer,
  cxCheckBox, cxTextEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ComCtrls, StdCtrls, Buttons, ExtCtrls,
  cxSplitter, cxImage, cxDBEdit, dxBarBuiltInMenu, cxPC, cxLabel,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo, cxDBLookupComboBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxLocalization,
  cxGroupBox, DBCtrls, cxCurrencyEdit, Menus, cxButtons, cxButtonEdit,
  inlibDevExp, cxLookupEdit, cxDBLookupEdit, Uni, cxSpinEdit, cxCalc,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxBevel,
  cxDBNavigator, dxNumericWheelPicker, dxDateRanges, cxDataUtils, cxVariants,
  cxDBLabel, dxGDIPlusClasses, System.UITypes, dxSkinsForm, cxBlobEdit,
  dxScrollbarAnnotations, dxCore, cxRadioGroup;

type
  TfrmMtoFacturas = class(TfrmMtoGen)
    pnl1: TPanel;
    pcDetailFac: TcxPageControl;
    tsLineasFactura: TcxTabSheet;
    tsTotales: TcxTabSheet;
    cxlbl17: TcxLabel;
    cxgrdLineasFactura: TcxGrid;
    tvLineasFactura: TcxGridDBTableView;
    cxgrdlvlLineasFactura: TcxGridLevel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    tsOtros: TcxTabSheet;
    btnRectificar: TSpeedButton;
    btnImprimir: TSpeedButton;
    cxlbl12: TcxLabel;
    cxgrdbclmnGrdDBTabPrinNRO_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinSERIE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCODIGO_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNIF_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinMOVIL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinEMAIL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION1_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION2_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPOBLACION_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPROVINCIA_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCPOSTAL_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPAIS_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFECHA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_LIQUIDO_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFORMA_PAGO_FACTURA: TcxGridDBColumn;
    cxdbm1: TcxDBMemo;
    sbNuevaFactura: TSpeedButton;
    tsRecibos: TcxTabSheet;
    pnl2: TPanel;
    pnl3: TPanel;
    pcCabFac: TcxPageControl;
    tsCabecera: TcxTabSheet;
    lblcxlbl1: TcxLabel;
    lblcxlbl3: TcxLabel;
    dteFECHA_FACTURA: TcxDBDateEdit;
    lblcxlbl8: TcxLabel;
    btnCODIGO_CLIENTE: TcxDBButtonEdit;
    lblcxlbl4: TcxLabel;
    cxdblblRAZONSOCIAL_CLIENTE_FACTURA1: TcxDBLabel;
    tsEmpresa: TcxTabSheet;
    cxgrp1: TcxGroupBox;
    txtDIRECCION1_CLIENTE_FACTURA: TcxDBTextEdit;
    txtCPOSTAL_CLIENTE_FACTURA: TcxDBTextEdit;
    txtPROVINCIA_CLIENTE_FACTURA: TcxDBTextEdit;
    txtPAIS_CLIENTE_FACTURA: TcxDBTextEdit;
    txtDIRECCION2_CLIENTE_FACTURA: TcxDBTextEdit;
    lbl1: TcxLabel;
    lbl2: TcxLabel;
    txtRAZONSOCIAL_CLIENTE_FACTURA1: TcxDBTextEdit;
    txtNIF_CLIENTE_FACTURA1: TcxDBTextEdit;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    txtMOVIL_CLIENTE_FACTURA1: TcxDBTextEdit;
    txtEMAIL_CLIENTE_FACTURA1: TcxDBTextEdit;
    lbl5: TcxLabel;
    tsDatosCliente: TcxTabSheet;
    cxgrpbx1: TcxGroupBox;
    txtDIRECCION1_CLIENTE_FACTURA1: TcxDBTextEdit;
    txtCPOSTAL_CLIENTE_FACTURA1: TcxDBTextEdit;
    txtPOBLACION_CLIENTE_FACTURA1: TcxDBTextEdit;
    txtPROVINCIA_CLIENTE_FACTURA1: TcxDBTextEdit;
    txtPAIS_CLIENTE_FACTURA1: TcxDBTextEdit;
    txtDIRECCION2_CLIENTE_FACTURA1: TcxDBTextEdit;
    lblcxlbl6: TcxLabel;
    lblcxlbl13: TcxLabel;
    txtRAZONSOCIAL_CLIENTE_FACTURA: TcxDBTextEdit;
    txtNIF_CLIENTE_FACTURA: TcxDBTextEdit;
    lblcxlbl9: TcxLabel;
    lblcxlbl10: TcxLabel;
    txtMOVIL_CLIENTE_FACTURA: TcxDBTextEdit;
    txtEMAIL_CLIENTE_FACTURA: TcxDBTextEdit;
    lblcxlbl11: TcxLabel;
    cxdblblCODIGO_CLIENTE: TcxDBLabel;
    btnUpdateCliente: TcxButton;
    cxdbcrncydtTOTAL_LIQUIDO_FACTURA: TcxDBCurrencyEdit;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    cxdbmskdt1: TcxDBMaskEdit;
    cxdblblRAZONSOCIAL_CLIENTE_FACTURA2: TcxDBLabel;
    btnCODIGO_EMPRESA_FACTURA: TcxDBButtonEdit;
    lbl13: TcxLabel;
    btnUpdateEmpresa: TcxButton;
    cxdblblCODIGO_CLIENTE_FACTURA: TcxDBLabel;
    cxgrdbclmnGrdDBTabPrinCODIGO_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinRAZONSOCIAL_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNIF_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinMOVIL_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinEMAIL_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION1_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDIRECCION2_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPOBLACION_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPROVINCIA_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPAIS_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCPOSTAL_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinRETENCIONES_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinIVA_RECARGO_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTEXTO_LEGAL_FACTURA_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTEXTO_LEGAL_FACTURA_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCODIGO_ZONA_IVA_CLIENTE: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_IVAN_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_IVAN_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_REN_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_REN_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_BASEI_IVAN_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_IVAR_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_IVAR_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_RER_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_RER_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_BASEI_IVAR_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_IVAS_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_IVAS_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_RES_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_RES_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_BASEI_IVAS_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_IVAE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_IVAE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_REE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_REE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_BASEI_IVAE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinPORCEN_RETENCION_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinTOTAL_RETENCION_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinNRO_FACTURA_ABONO_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinSERIE_FACTURA_ABONO_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDOCUMENTO_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCOMENTARIOS_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn;
    chkESIVA_RECARGO_CLIENTE_FACTURA: TcxDBCheckBox;
    chkREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA: TcxDBCheckBox;
    chkESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA: TcxDBCheckBox;
    chkRETENCIONES_EMPRESA_FACTURA3: TcxDBCheckBox;
    chkEXTRANJERO: TcxDBCheckBox;
    cxgrdbclmntv1CODIGO_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1TIPOIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cmDESCRIPCION_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1CANTIDAD_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1PORCEN_IVA_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    cxgrdbclmntv1TOTAL_FACTURA_LINEA: TcxGridDBColumn;
    txtNRO_FACTURA: TcxDBTextEdit;
    cbbTARIFA_ARTICULOS_CLIENTES: TcxDBLookupComboBox;
    lblcxlbl12: TcxLabel;
    cxgrdbclmntv1LINEA_FACTURA_LINEA: TcxGridDBColumn;
    cxdbspndt1: TcxDBSpinEdit;
    cxdbcrncydtTOTAL_RETENCION_FACTURA: TcxDBCurrencyEdit;
    lbl9: TcxLabel;
    cxdbcrncydtTOTAL_BASES_FACTURA: TcxDBCurrencyEdit;
    lbl10: TcxLabel;
    chkRETENCION_EMPRESA_FACTURA: TcxDBCheckBox;
    cxgrdbclmntv1TIPO_CANTIDAD_ARTICULO_FACTURA_LINEA: TcxGridDBColumn;
    chkIVA_EXENTO_CLIENTE_FACTURA: TcxDBCheckBox;
    cxgrdbclmntv1IMP_INCL_TARIFA_FACTURA_LINEA: TcxGridDBColumn;
    chkESIRPF_IMP_INCL_ZONA_IVA_FACTURA: TcxDBCheckBox;
    chkESVENTA_ACTIVO_FIJO_FACTURA: TcxDBCheckBox;
    cxGrdDBTabPrinGRUPO_IVA_EMPRESA_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinTARIFA_ARTICULO_CLIENTE_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinPALABRA_REPORTS_ZONA_IVA_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinCODIGO_IVA_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinVENTA_ACTIVO_FIJO_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinTOTAL_BASES_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinTOTAL_IMPUESTOS_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinCONTADOR_LINEAS_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinESIVA_EXENTO_CLIENTE_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinESRETENCIONES_CLIENTE_FACTURA: TcxGridDBColumn;
    cxGrdDBTabPrinESINTRACOMUNITARIO_CLIENTE_FACTURA: TcxGridDBColumn;
    cxspltrcxspl1: TcxSplitter;
    cxdbmCOMENTARIOS_FACTURA: TcxDBMemo;
    pnl6: TPanel;
    pnl61: TPanel;
    cxgrdRecibos: TcxGrid;
    tvRecibos: TcxGridDBTableView;
    cxgrdlvlRecibos: TcxGridLevel;
    cxgrdbclmnRecibosNRO_FACTURA_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosSERIE_FACTURA_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosNRO_PLAZO_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosFORMA_PAGO_ORIGEN_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosFORMA_PAGO_DESCRIPCION_ORIGEN_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosEUROS_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosESTADO_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosFECHA_EXPEDICION_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosFECHA_VENCIMIENTO_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosIBAN_CLIENTE_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosFECHA_PAGO_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosLOCALIDAD_EXPEDICION_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosCODIGO_CLIENTE_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosRAZONSOCIAL_CLIENTE_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosDIRECCION1_CLIENTE_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosPOBLACION_CLIENTE_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosPROVINCIA_CLIENTE_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosCPOSTAL_CLIENTE_RECIBO: TcxGridDBColumn;
    cxgrdbclmnRecibosIMPORTE_LETRA_RECIBO: TcxGridDBColumn;
    btnReciboDevuelto: TcxButton;
    btnImprimirRecibo: TcxButton;
    btnReciboEmitido: TcxButton;
    btnReciboPagado: TcxButton;
    pnl7: TPanel;
    Panel1: TPanel;
    chkFechaEntrega: TcxDBCheckBox;
    chkDescripcion_ampliada: TcxDBCheckBox;
    chkCrearArticulos: TcxDBCheckBox;
    cbbSerieFactura: TcxDBLookupComboBox;
    cxgrdbclmnGrdDBTabPrinESRETENCIONES_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinGRUPO_ZONA_IVA_EMPRESA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA:
                                                                TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESIVA_RECARGO_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESIMP_INCL_TARIFA_CLIENTE_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESIRPF_IMP_INCL_ZONA_IVA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESAPLICA_RE_ZONA_IVA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESVENTA_ACTIVO_FIJO_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESCREARARTICULOS_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESDESCRIPCIONES_AMP_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESFECHADEENTREGA_FACTURA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDESCRIPCION_FORMAPAGO: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA:
                                                                TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinESIVAAGRICOLA_ZONA_IVA_FACTURA: TcxGridDBColumn;
    cxlbl18: TcxLabel;
    cbbFORMAPAGO: TcxDBLookupComboBox;
    btnGenerarRecibos: TcxButton;
    cxgrdIVA: TcxGrid;
    tvGrid1DBTableView1: TcxGridDBTableView;
    cxgrdtblvwcxgrd1TableView1: TcxGridTableView;
    cxgrdbndtblvwcxgrd1DBBandedTableView1: TcxGridDBBandedTableView;
    tvIVA: TcxGridDBTableView;
    dbcTOTAL_BASEI_IVAN_FACTURA: TcxGridDBColumn;
    dbcPORCEN_IVAN_FACTURA: TcxGridDBColumn;
    dbcTOTAL_IVAN_FACTURA: TcxGridDBColumn;
    dbcPORCEN_REN_FACTURA: TcxGridDBColumn;
    dbcTOTAL_REN_FACTURA: TcxGridDBColumn;
    dbcTOTAL_BASEI_IVAR_FACTURA: TcxGridDBColumn;
    dbcPORCEN_IVAR_FACTURA: TcxGridDBColumn;
    dbcTOTAL_IVAR_FACTURA: TcxGridDBColumn;
    dbcPORCEN_RER_FACTURA: TcxGridDBColumn;
    dbcTOTAL_RER_FACTURA: TcxGridDBColumn;
    dbcTOTAL_BASEI_IVAS_FACTURA: TcxGridDBColumn;
    dbcPORCEN_IVAS_FACTURA: TcxGridDBColumn;
    dbcPORCEN_RES_FACTURA: TcxGridDBColumn;
    dbcTOTAL_RES_FACTURA: TcxGridDBColumn;
    dbcTOTAL_IVAS_FACTURA: TcxGridDBColumn;
    dbcTOTAL_BASEI_IVAE_FACTURA: TcxGridDBColumn;
    dbcPORCEN_IVAE_FACTURA: TcxGridDBColumn;
    dbcTOTAL_IVAE_FACTURA: TcxGridDBColumn;
    dbcPORCEN_REE_FACTURA: TcxGridDBColumn;
    dbcTOTAL_REE_FACTURA: TcxGridDBColumn;
    lvIVA: TcxGridLevel;
    cbbCanalIVA: TcxDBLookupComboBox;
    cxlbllbl6: TcxLabel;
    dbcLineasFacturaCODIGO_FAMILIA_FACTURA_LINEA: TcxGridDBColumn;
    dbcLineasFacturaNOMBRE_FAMILIA_FACTURA_LINEA: TcxGridDBColumn;
    dbcLineasFacturaFECHA_ENTREGA_FACTURA_LINEA: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure sbGrabarClick(Sender: TObject);
    procedure btnUpdateClienteClick(Sender: TObject);
    procedure sbNuevaFacturaClick(Sender: TObject);
    procedure cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnCODIGO_CLIENTEPropertiesEditValueChanged(Sender: TObject);
    procedure tvLineasFacturaKeyDown(Sender: TObject;
                                             var Key: Word; Shift: TShiftState);
    procedure btnCODIGO_CLIENTEKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbbSerieFacturaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dteFECHA_FACTURAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCODIGO_CLIENTEPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnGenerarRecibosClick(Sender: TObject);
    procedure btnReciboPagadoClick(Sender: TObject);
    procedure btnReciboEmitidoClick(Sender: TObject);
    procedure btnReciboDevueltoClick(Sender: TObject);
    procedure btnCODIGO_EMPRESA_FACTURAPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
   procedure btnCODIGO_EMPRESA_FACTURAPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnUpdateEmpresaClick(Sender: TObject);
    procedure cxgrdbclmntv1CODIGO_ARTICULO_FACTURA_LINEAPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure
 cxgrdbclmntv1PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged(
      Sender: TObject);
    procedure
 cxgrdbclmntv1PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged(
      Sender: TObject);
    procedure
           cxgrdbclmntv1CODIGO_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged(
      Sender: TObject);
    procedure btnRectificarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure
          cxgrdbclmntv1TIPOIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged(
      Sender: TObject);
    procedure chkESIVA_RECARGO_CLIENTE_FACTURAPropertiesChange(
      Sender: TObject);
    procedure btnImprimirReciboClick(Sender: TObject);
    procedure chkESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURAPropertiesChange(
      Sender: TObject);
    procedure btnCODIGO_EMPRESA_FACTURAPropertiesChange(Sender: TObject);
    procedure dteFECHA_FACTURAPropertiesChange(Sender: TObject);
    procedure btnCODIGO_CLIENTEPropertiesChange(Sender: TObject);
    procedure cbbCanalIVAPropertiesChange(Sender: TObject);
    procedure dsTablaGStateChange(Sender: TObject);
    procedure chkFechaEntregaPropertiesChange(Sender: TObject);
    procedure chkDescripcion_ampliadaPropertiesChange(Sender: TObject);
    procedure chkCrearArticulosPropertiesChange(Sender: TObject);

  public
    procedure ActualizarComboSeries;
    procedure CambiarEstadoRecibo(sEstado:String);
    procedure CrearTablaPrincipal; override;
    procedure CambiarIVA;
  end;

  procedure ShowMtoFacturas(Owner       : TComponent); overload;
  procedure ShowMtoFacturas(Owner : TComponent;
                            NroFactura, SerieFactura: String); overload;
var
  frmMtoFacturas: TfrmMtoFacturas;
  dmmFacturas : TdmFacturas;
implementation

uses
  inLibWin,
  inMtoGenSearch,
  inMtoModalFacRec,
  inMtoModalImpFac,
  inMtoModalImpRecFac,
  inMtoPrincipal,
  inLibUser,
  inLibGlobalVar;

{$R *.dfm}

procedure ShowMtoFacturas(Owner       : TComponent); overload;
var
  frmMtoFacturas : TfrmMtoFacturas;
begin
  if not(IsOpenMDI('Facturas', Owner)) then
  begin
    frmMtoFacturas := TfrmMtoFacturas.Create(Owner);
    frmMtoFacturas.edtBusqGlobal.SetFocus;
  end;
end;

procedure ShowMtoFacturas(Owner : TComponent;
                          NroFactura, SerieFactura: String); overload;
var
  frmMtoFacturas : TfrmMtoFacturas;
  compFound : TComponent;
begin
  if not(IsOpenMDI('Facturas', Owner, compFound)) then
  begin
    frmMtoFacturas := TfrmMtoFacturas.Create(Owner);
  end
  else
    frmMtoFacturas := (compFound as TfrmMtoFacturas);
  if not (frmMtoFacturas.tdmDataModule.unqryTablaG.Locate(
                                                    'NRO_FACTURA;SERIE_FACTURA',
                                    VarArrayOF([NroFactura, SerieFactura]), []))
   then
     ShowMessage('Factura no encontrada')
   else
     frmMtoFacturas.pcPantalla.ActivePage := frmMtoFacturas.tsFicha;
end;

procedure TfrmMtoFacturas.btnCODIGO_EMPRESA_FACTURAPropertiesEditValueChanged(
  Sender: TObject);
 var
    e: TcxCustomEdit;
    sCodigo:String;
    unqrySol:TUniQuery;
begin
  inherited;
  if ((dmmFacturas <> nil)) then
    if ((dsTablaG.DataSet.State = dsInsert) or
       (dsTablaG.Dataset.State = dsEdit))
         //and not dmmFacturas.bEsNuevaEmpresa
       then
    begin
      e := Sender as TcxCustomEdit;
      sCodigo := VarToStr(e.EditingValue);
      if ((sCodigo <> '') and (sCodigo <> '0')) then
      begin
        dsTablaG.Dataset.FindField('CODIGO_EMPRESA_FACTURA').AsString :=
                                                       VarToStr(e.EditingValue);
        unqrySol := TUniQuery.Create(Self);
        unqrySol.Connection := oConn;
        unqrySol.SQL.Text := 'SELECT * ' +
                             '  FROM fza_empresas ' +
                             ' WHERE CODIGO_EMPRESA = :empresa';
        unqrySol.ParamByName('empresa').AsString := VarToStr(e.EditingValue);
        unqrySol.Open;
        if unqrySol.RecordCount = 0 then
          Sleep(0)
          //MessageDlg('Empresa: #' + VarToStr(e.EditingValue) + '# no existe')
        else
          dmmFacturas.CopiarEmpresaaFactura(unqrySol);
        unqrySol.Close;
        FreeAndNil(unqrySol);
      end;
    end;
end;

procedure TfrmMtoFacturas.FormCreate(Sender: TObject);
begin
  //dmmFacturas.sForzarTipoIVALineas := 'N';
  inherited;
end;

procedure TfrmMtoFacturas.btnUpdateClienteClick(Sender: TObject);
begin
  inherited;
  with dmmFacturas.unqryTablaG do
  begin
    if (FieldByName('CODIGO_CLIENTE_FACTURA').AsString = '0') then
      dmmFacturas.GetCodigoAutoCliente;
    dmmFacturas.CrearCliente;
    ShowMessage('Cliente: ' +
              FieldByName('CODIGO_CLIENTE_FACTURA').AsString +
              ' pasado correctamente a la tabla de clientes');
  end;
end;

procedure TfrmMtoFacturas.btnUpdateEmpresaClick(Sender: TObject);
begin
  inherited;
  with dmmFacturas.unqryTablaG do
  begin
    if (FieldByName('CODIGO_EMPRESA_FACTURA').AsString = '0') then
      dmmFacturas.GetCodigoAutoEmpresa;
    dmmFacturas.CrearEmpresa;
    ShowMessage('Empresa: ' +
              FieldByName('CODIGO_EMPRESA_FACTURA').AsString +
              ' pasado correctamente a la tabla de empresas');
  end;
 end;

procedure TfrmMtoFacturas.sbNuevaFacturaClick(Sender: TObject);
var
  sEmpresaDef:String;
begin
  inherited;
  if (dmmFacturas.unqryTablaG.State <> dsEdit) then
  begin
    if (dmmFacturas.unqryTablaG.State <> dsInsert) then
      dmmFacturas.unqryTablaG.Insert;
    txtNRO_FACTURA.Properties.ReadOnly := False;
    cbbSerieFactura.Properties.ReadOnly := False;
    cbbTARIFA_ARTICULOS_CLIENTES.Properties.ReadOnly := False;
    cbbCanalIVA.Properties.ReadOnly := False;
    pcPantalla.ActivePage := tsFicha;
    tsFicha.SetFocus;
    pcCabFac.ActivePage := tsCabecera;
    pcDetailFac.ActivePage := tsLineasFactura;
    btnCODIGO_EMPRESA_FACTURA.SetFocus;
    sEmpresaDef := dmmFacturas.GetUserEmpresaDef;
    if sEmpresaDef <> '' then
    begin
      dsTablaG.DataSet.FindField('CODIGO_EMPRESA_FACTURA').AsString :=
                                                                    sEmpresaDef;
    end;
  end;
end;

procedure TfrmMtoFacturas.btnImprimirReciboClick(Sender: TObject);
var
  form:TfrmPrintRecFac;
begin
  inherited;
  form := TfrmPrintRecFac.Create(Application);
  try
    form.edtNroFac.Text := dsTablaG.DataSet.findField('NRO_FACTURA').AsString;
    form.edtSerie.Text := dsTablaG.DataSet.findField('SERIE_FACTURA').AsString;
    form.edtPlazoRecFac.Text :=
                dmmFacturas.unqryRecibos.FindField('NRO_PLAZO_RECIBO').AsString;
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmMtoFacturas.ActualizarComboSeries;
begin
  if (dmmFacturas <> nil)  then
    if ((dsTablaG.State = dsInsert)) then
    begin
      dmmFacturas.CrearTablaSeries(
                  dsTablaG.DataSet.FindField('CODIGO_EMPRESA_FACTURA').AsString,
                  dsTablaG.DataSet.FindField('CODIGO_CLIENTE_FACTURA').AsString,
                  dsTablaG.DataSet.FindField('FECHA_FACTURA').AsDateTime);
      cbbSerieFactura.Properties.ListFieldNames := 'SERIE_CONTADOR';
      cbbSerieFactura.Properties.ListSource := dmmFacturas.dsSeriesEditCombo;
      cbbSerieFactura.Refresh;
      dsTablaG.DataSet.FindField('SERIE_FACTURA').AsString :=
          dmmFacturas.unqrySeriesEditCombo.FindField('SERIE_CONTADOR').AsString;
    end;
end;

procedure TfrmMtoFacturas.btnCODIGO_CLIENTEKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if ((Key = VK_RETURN) and (Shift = [ssCtrl])) then
//    btnBuscar_Clientes_ActivosClick(nil);
  if (Key = VK_RETURN) then
  begin
    //bKeyCODIGO_CLIENTEStroked := True;
  end;
end;

procedure TfrmMtoFacturas.btnCODIGO_CLIENTEPropertiesButtonClick(
                                                         Sender: TObject;
                                                         AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
  formulario := TfrmMtoSearch.Create(Self.Owner);
  formulario.Name := 'frmMtoCliFacSearch';
  formulario.Caption := 'Búsqueda de Clientes en Facturas';
  try
    formulario.dsTablaG.DataSet := dmmFacturas.unqryCliDataFac;
    formulario.dsTablaG.DataSet.Open;
    formulario.ProcesarPerfiles;  //debe ir despu�s de abrir el datase
    formulario.ShowModal;
  finally
      inherited;
      if formulario.sFicha = 'S' then
        dmmFacturas.CopiarClienteaFactura(dmmFacturas.unqryClidataFac);
      formulario.dsTablaG.DataSet.Close;
      FreeAndNil(formulario);
  end;
end;

procedure TfrmMtoFacturas.btnCODIGO_CLIENTEPropertiesChange(Sender: TObject);
begin
  inherited;
  //ActualizarComboSeries;
end;

procedure TfrmMtoFacturas.btnCODIGO_CLIENTEPropertiesEditValueChanged(
  Sender: TObject);
  var
    e: TcxCustomEdit;
    sCodigo:String;
begin
  inherited;
  if (dmmFacturas <> nil) then
    if (        ((dsTablaG.DataSet.State = dsInsert) or
                 (dsTablaG.Dataset.State = dsEdit))
       ) then
    begin
      e := Sender as TcxCustomEdit;
      sCodigo := VarToStr(e.EditingValue);
      if ((sCodigo <> '') and (sCodigo <> '0')) then
      begin
        dmmFacturas.BuscarCliente(VarToStr(e.EditingValue));
      end;
    end;
end;

procedure TfrmMtoFacturas.btnCODIGO_EMPRESA_FACTURAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
  formulario := TfrmMtoSearch.Create(Self.Owner);
  formulario.Name := 'frmMtoEmpFacSearch';
  formulario.Caption := 'Búsqueda de Empresas en Facturas';
  try
    formulario.dsTablaG.DataSet := dmmFacturas.unqryEmpDataFac;
    formulario.dsTablaG.DataSet.Open;
    formulario.ProcesarPerfiles;
    formulario.ShowModal;
  finally
      inherited;
      if formulario.sFicha = 'S' then
        dmmFacturas.CopiarEmpresaaFactura(dmmFacturas.unqryEmpDataFac);
      formulario.dsTablaG.DataSet.Close;
      FreeAndNil(formulario);
  end;
end;

procedure TfrmMtoFacturas.btnCODIGO_EMPRESA_FACTURAPropertiesChange(
  Sender: TObject);
begin
  inherited;
  //ActualizarComboSeries;
end;

procedure TfrmMtoFacturas.btnGenerarRecibosClick(Sender: TObject);
var
  bReemplazar:Boolean;
begin
  inherited;
  bReemplazar := True;
  with dmmFacturas.unqryTablaG do
  begin
    if ((State = dsEdit) or (State = dsInsert)) then
      Post;
    if (dmmFacturas.unqryRecibos.RecordCount > 0) then
    begin
      if ( Application.MessageBox( 'Hay recibos creados, ¿desea reemplazarlos?',
                                   'Mensaje Advertencia',
                                   MB_YESNO ) = ID_YES ) then
        bReemplazar := True
      else
        bReemplazar := False;
    end;
    if bReemplazar = True then
    begin
      dmmFacturas.unstrdprcGetRecibos.ParamByName('pNRO_FACTURA').AsString :=
                                           FieldByName('NRO_FACTURA').AsString;
      dmmFacturas.unstrdprcGetRecibos.ParamByName('pSERIE_FACTURA').AsString :=
                                          FieldByName('SERIE_FACTURA').AsString;
     dmmFacturas.unstrdprcGetRecibos.ParamByName('pINSTANTEMODIF').AsDateTime :=
                                                                            Now;
      dmmFacturas.unstrdprcGetRecibos.ParamByName('pUSUARIO').AsString := oUser;
      dmmFacturas.unstrdprcGetRecibos.ExecProc;
      dmmFacturas.unqryRecibos.Refresh;
    end;
  end;
end;

procedure TfrmMtoFacturas.btnImprimirClick(Sender: TObject);
var
  form:TfrmPrintFac;
begin
  inherited;
  form := TfrmPrintFac.Create(Application);
  try
    form.edtNroFac.Text := dsTablaG.DataSet.findField('NRO_FACTURA').AsString;
    form.edtSerie.Text := dsTablaG.DataSet.findField('SERIE_FACTURA').AsString;
    form.ShowModal;
  finally
    form.Free;
  end;
end;

procedure TfrmMtoFacturas.btnReciboDevueltoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Devuelto');
end;

procedure TfrmMtoFacturas.btnReciboEmitidoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Emitido');
end;

procedure TfrmMtoFacturas.btnReciboPagadoClick(Sender: TObject);
begin
  inherited;
  CambiarEstadoRecibo('Pagado');
end;

procedure TfrmMtoFacturas.btnRectificarClick(Sender: TObject);
var
  form:TfrmGenFacRec;
begin
  inherited;
   form := TfrmGenFacRec.Create(Application);
   try
     form.ShowModal;
   finally
     form.Free;
   end;
end;

procedure TfrmMtoFacturas.CambiarEstadoRecibo(sEstado: string);
begin
  with dmmFacturas.unqryRecibos do
  begin
    if not((State = dsEdit) or (State = dsInsert)) then
      Edit;
    FieldByName('STADO_RECIBO').AsString := sEstado;
    if sEstado = 'Pagado' then
       FieldByNAme('FECHA_PAGO').AsDateTime := Trunc(Now)
    else
      if ((sEstado = 'Emitido') or (sEstado='Devuelto')) then
        FieldByNAme('FECHA_PAGO').AsVariant := null;
    Post;
  end;
end;

procedure TfrmMtoFacturas.cbbCanalIVAPropertiesChange(Sender: TObject);
var
 Edit: TcxCustomEdit;
 NewValue: Variant;
begin
  inherited;
  if (dmmFacturas <> nil) then
  begin
    Edit := Sender as TcxCustomEdit;
    NewValue := Edit.EditingValue;
    if (NewValue <> null) then
    begin
      if ((dsTablaG.DataSet.State = dsEdit) or
          (dsTablaG.DataSet.State = dsInsert)) then
      begin
      dsTablaG.DataSet.FieldByName('GRUPO_ZONA_IVA_EMPRESA_FACTURA').AsString :=
                                                             VarToStr(NewValue);
        CambiarIVA;
      end;
    end;
  end;
end;

procedure TfrmMtoFacturas.cbbSerieFacturaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((Key = VK_DOWN) and (Shift = [ssShift])) then
    cbbSerieFactura.DroppedDown := True;
end;

procedure TfrmMtoFacturas.CrearTablaPrincipal;
begin
  dmmFacturas := TdmFacturas.Create(Self);
  cbbSerieFactura.Properties.ListSource := dmmFacturas.dsSeries;
  cbbCanalIVA.Properties.ListSource := dmmFacturas.dsIvas;
  cbbFORMAPAGO.Properties.ListSource := dmmFacturas.dsFormasPago;
  tvLineasFactura.DataController.DataSource := dmmFacturas.dsLinFac;
  cbbTARIFA_ARTICULOS_CLIENTES.Properties.ListSource := dmmFacturas.dsTarifas;
  tvRecibos.DataController.DataSource := dmmFacturas.dsRecibos;
  pcDetailFac.ActivePage := tsLineasFactura;
  pcCabFac.ActivePage := tsCabecera;
end;

procedure TfrmMtoFacturas.chkCrearArticulosPropertiesChange(Sender: TObject);
begin
  inherited;
  if (chkCrearArticulos.Checked = True) then
  begin
    dbcLineasFacturaCODIGO_FAMILIA_FACTURA_LINEA.Visible := True;
    dbcLineasFacturaNOMBRE_FAMILIA_FACTURA_LINEA.Visible := True;
  end
  else
  begin
    dbcLineasFacturaCODIGO_FAMILIA_FACTURA_LINEA.Visible := False;
    dbcLineasFacturaNOMBRE_FAMILIA_FACTURA_LINEA.Visible := False;
  end;
end;

procedure TfrmMtoFacturas.chkDescripcion_ampliadaPropertiesChange(
  Sender: TObject);
begin
  inherited;
  with cmDESCRIPCION_ARTICULO_FACTURA_LINEA do
  begin
    if (chkDescripcion_ampliada.Checked = True) then
    begin
      begin
        PropertiesClassName := 'TcxMemoProperties';
      with TcxMemoProperties(Properties) do
      begin
        VisibleLineCount := 3;
        MaxLength := 1000;
        ScrollBars := ssBoth;
      end
      end
    end
    else
    begin
      cmDESCRIPCION_ARTICULO_FACTURA_LINEA.PropertiesClassName :=
                                                        'TcxTextEditProperties';
    end;
  end;
end;

procedure TfrmMtoFacturas.chkESIVA_RECARGO_CLIENTE_FACTURAPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkESIVA_RECARGO_CLIENTE_FACTURA.Checked = True then
  begin
      dbcPORCEN_REN_FACTURA.Visible := True;
      dbcTOTAL_REN_FACTURA.Visible := True;
      dbcPORCEN_RER_FACTURA.Visible := True;
      dbcTOTAL_RER_FACTURA.Visible := True;
      dbcPORCEN_RES_FACTURA.Visible := True;
      dbcTOTAL_RES_FACTURA.Visible := True;
      dbcPORCEN_REE_FACTURA.Visible := True;
      dbcTOTAL_REE_FACTURA.Visible := True;
  end
  else
  begin
      dbcPORCEN_REN_FACTURA.Visible := False;
      dbcTOTAL_REN_FACTURA.Visible := False;
      dbcPORCEN_RER_FACTURA.Visible := False;
      dbcTOTAL_RER_FACTURA.Visible := False;
      dbcPORCEN_RES_FACTURA.Visible := False;
      dbcTOTAL_RES_FACTURA.Visible := False;
      dbcPORCEN_REE_FACTURA.Visible := False;
      dbcTOTAL_REE_FACTURA.Visible := False;
  end;

end;

procedure TfrmMtoFacturas.
                   chkESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURAPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if chkESREGIMENESPECIALAGRICOLA_EMPRESA_FACTURA.Checked = True then
  begin
    chkREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA.Visible := True;
    chkESIRPF_IMP_INCL_ZONA_IVA_FACTURA.Visible := True;
    //dsTablaG.DataSet.FieldByName(
    //                      'ESIRPF_IMP_INCL_ZONA_IVA_FACTURA').AsString := 'S';
    chkESVENTA_ACTIVO_FIJO_FACTURA.Visible := True;
  end
  else
  begin
    chkREGIMENESPECIALAGRICOLA_CLIENTE_FACTURA.Visible := False;
    chkESIRPF_IMP_INCL_ZONA_IVA_FACTURA.Visible := False;
    chkESVENTA_ACTIVO_FIJO_FACTURA.Visible := False;
  end;
end;

procedure TfrmMtoFacturas.chkFechaEntregaPropertiesChange(Sender: TObject);
begin
  inherited;
  if (chkFechaEntrega.Checked = True) then
    dbcLineasFacturaFECHA_ENTREGA_FACTURA_LINEA.Visible := True
  else
    dbcLineasFacturaFECHA_ENTREGA_FACTURA_LINEA.Visible := False;
end;

procedure TfrmMtoFacturas.dsTablaGStateChange(Sender: TObject);
begin
  inherited;
  if (dmmFacturas <> nil) then
    if (dsTablaG.DataSet.State <> dsInsert) then
    begin
      txtNRO_FACTURA.Properties.ReadOnly := True;
      cbbSerieFactura.Properties.ReadOnly := True;
      cbbTARIFA_ARTICULOS_CLIENTES.Properties.ReadOnly := True;
      cbbCanalIVA.Properties.ReadOnly := True;
      if (cbbSerieFactura.Properties.ListSource <> dmmFacturas.dsSeries) then
      begin
        cbbSerieFactura.Properties.ListSource := dmmFacturas.dsSeries;
        cbbSerieFactura.Refresh;
      end;
    end;
end;

procedure TfrmMtoFacturas.dteFECHA_FACTURAKeyUp(Sender: TObject;
                                                     var Key: Word;
                                                     Shift: TShiftState);
begin
  inherited;
  if ((Key = VK_DOWN) and (Shift = [ssShift])) then
      dteFECHA_FACTURA.DroppedDown := True;
end;

procedure TfrmMtoFacturas.dteFECHA_FACTURAPropertiesChange(Sender: TObject);
var
  e: TcxCustomEdit;
  NewValue : Variant;
begin
  inherited;
  if (dmmFacturas <> nil) then
    if ((dsTablaG.DataSet.State = dsInsert) or
      (dsTablaG.DataSet.State = dsEdit)
     ) then
    begin
      e := Sender as TcxCustomEdit;
      NewValue := e.EditingValue;
      if (NewValue <> null) then
      begin
        dmmFacturas.unqryTablaG.FindField('FECHA_FACTURA').AsDateTime :=
                                                        VarToDateTime(NewValue);
        CambiarIVA;
        dmmFacturas.CalcularRetencionesEmpresa;
        if (dsTablaG.DataSet.State = dsInsert) then
          ActualizarComboSeries;
      end;
    end;
end;

procedure TfrmMtoFacturas.
                cxgrdbclmntv1CODIGO_ARTICULO_FACTURA_LINEAPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  formulario : TfrmMtoSearch;
begin
  formulario := TfrmMtoSearch.Create(Self.Owner);
  formulario.Name := 'frmMtoArtFacSearch';
  try
    dmmFacturas.unqryArtDataLinFac.ParamByName('TARIFA').AsString :=
  dmmFacturas.unqryTablaG.FindField('TARIFA_ARTICULO_CLIENTE_FACTURA').AsString;
    formulario.dsTablaG.DataSet := dmmFacturas.unqryArtDataLinFac;
    formulario.dsTablaG.DataSet.Open;
    formulario.ProcesarPerfiles;
    formulario.Caption := 'Búsqueda de Artículos en Lineas de Facturas';
    formulario.ShowModal;
  finally
   inherited;
   if (formulario.sFicha = 'S') then
        dmmFacturas.CopiarArticuloaLinea(dmmFacturas.unqryArtDataLinFac);
      formulario.dsTablaG.DataSet.Close;
      FreeAndNil(formulario);
  end;
end;

procedure TfrmMtoFacturas.
           cxgrdbclmntv1CODIGO_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged(
  Sender: TObject);
 var
    e: TcxCustomEdit;
    sCodigo:String;
    unqrySol:TUniQuery;
begin
  inherited;
  if (dmmFacturas <> nil) then
  begin
    with dmmFacturas.unqryLinFac do
    begin
      if (((State = dsInsert) or
           (State = dsEdit))
         ) then
      begin
        e := Sender as TcxCustomEdit;
        sCodigo := VarToStr(e.EditingValue);
        if ((sCodigo <> '') ) then
        begin
          dmmFacturas.unqryLinFac.FindField(
                                    'CODIGO_ARTICULO_FACTURA_LINEA').AsString :=
                                                       VarToStr(e.EditingValue);
          unqrySol := TUniQuery.Create(Self);
          unqrySol.Connection := inLibGlobalVar.oConn;
          unqrySol.SQL.Text := 'SELECT * FROM vi_art_busquedas ' +
                               ' WHERE CODIGO_TARIFA = :tarifa' +
                               ' AND CODIGO_ARTICULO = :articulo';
          unqrySol.ParamByName('articulo').AsString := VarToStr(e.EditingValue);
          unqrySol.ParamByName('tarifa').AsString :=
            dmmFacturas.unqryTablaG.FindField(
                                    'TARIFA_ARTICULO_CLIENTE_FACTURA').AsString;
          unqrySol.Open;
          if unqrySol.RecordCount = 0 then
            Sleep(0) //si no existe artículo y tarifa, no hago nada
           else
             dmmFacturas.CopiarArticuloaLinea(unqrySol);
          unqrySol.Close;
          FreeAndNil(unqrySol);
        end;
      end;
    end;
  end;
end;

procedure TfrmMtoFacturas.
                   cxgrdbclmntv1CODIGO_ARTICULO_LINEAPropertiesEditValueChanged(
  Sender: TObject);
  var
  E : TcxCustomEdit;
begin
  inherited;
  if (dmmFacturas <> nil) then
    if ((dmmFacturas.unqryLinFac.State = dsInsert) or
        (dmmFacturas.unqryLinFac.State = dsEdit)) then
    begin
       with dmmFacturas.unstrdprcGetDataArticulo do
       begin
         e := Sender as TcxCustomEdit;
         ParamByName('pidcodarticulo').AsString :=  VarToStr(e.EditingValue);
         ExecProc;
         dmmFacturas.unqryLinFac.FindField('CODIGO_ARTICULO_LINEA').AsString :=
                                                       VarToStr(e.EditingValue);
         dmmFacturas.unqryLinFac.FindField(
                                       'DESCRIPCION_ARTICULO_LINEA').AsString :=
                                         ParamByName('pidnomarticulo').AsString;
         dmmFacturas.unqryLinFac.FindField(
                                        'PRECIOVENTA_ARTICULO_LINEA').AsFloat :=
                                          ParamByName('pidprecioventa').AsFloat;
       end;
    end;
end;

procedure TfrmMtoFacturas.
 cxgrdbclmntv1PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged(
                                                               Sender: TObject);
var
    e: TcxCustomEdit;
begin
  inherited;
  if (dmmFacturas <> nil) then
    with dmmFacturas.unqryLinFac do
    begin
    if ((State = dsInsert) or (State = dsEdit)) then
      begin
        e := Sender as TcxCustomEdit;
        FindField('PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA').AsString :=
                                                      VarToStr(e.EditingValue);
        FindField('PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA').AsFloat :=
               ( FindField('PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA').AsFloat /
                 (1 + FindField('PORCEN_IVA_FACTURA_LINEA').AsInteger/100)
               );
      end;
    end;
end;

procedure TfrmMtoFacturas.
 cxgrdbclmntv1PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged(
                                                               Sender: TObject);
var
    e: TcxCustomEdit;
begin
  inherited;
    if (dmmFacturas <> nil) then
    with dmmFacturas.unqryLinFac do
    begin
    if ((State = dsInsert) or (State = dsEdit)) then
    begin
      e := Sender as TcxCustomEdit;
      FindField('PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA').AsString :=
                                                       VarToStr(e.EditingValue);
      FindField('PRECIOVENTA_CIVA_ARTICULO_FACTURA_LINEA').AsFloat :=
                ( FindField('PRECIOVENTA_SIVA_ARTICULO_FACTURA_LINEA').AsFloat *
                  (1 +
                  FindField('PORCEN_IVA_FACTURA_LINEA').AsInteger/100));
    end;
    end;
end;

procedure TfrmMtoFacturas.
          cxgrdbclmntv1TIPOIVA_ARTICULO_FACTURA_LINEAPropertiesEditValueChanged(
                                                               Sender: TObject);
var
    e: TcxCustomEdit;
    iPorcen : Integer;
    sTipoIVA : string;
begin
  inherited;
   inherited;
    if (dmmFacturas <> nil) then
    with dmmFacturas.unqryLinFac do
    begin
      if ((State = dsInsert) or (State = dsEdit)) then
      begin
        e := Sender as TcxCustomEdit;
        FindField('TIPOIVA_ARTICULO_FACTURA_LINEA').AsString :=
                                                       VarToStr(e.EditingValue);
        sTipoIVA := FindField('TIPOIVA_ARTICULO_FACTURA_LINEA').AsString;
        case IndexStr(sTipoIVA, ['N', 'R', 'S', 'E']) of
          0: iPorcen :=
             dmmFacturas.unqryTablaG.FindField('PORCEN_IVAN_FACTURA').AsInteger;
          1: iPorcen :=
             dmmFacturas.unqryTablaG.FindField('PORCEN_IVAR_FACTURA').AsInteger;
          2: iPorcen :=
             dmmFacturas.unqryTablaG.FindField('PORCEN_IVAS_FACTURA').AsInteger;
          3: iPorcen :=
             dmmFacturas.unqryTablaG.FindField('PORCEN_IVAE_FACTURA').AsInteger;
          else
          begin
            ShowMessage('Tipo de Iva incorrecto');
            iPorcen :=
             dmmFacturas.unqryTablaG.FindField('PORCEN_IVAN_FACTURA').AsInteger;
            FindField('TIPOIVA_ARTICULO_FACTURA_LINEA').AsString := 'N';
          end;
        end;
        FindField('PORCEN_IVA_FACTURA_LINEA').AsInteger := iPorcen;
      end;
    end;
end;

procedure TfrmMtoFacturas.sbGrabarClick(Sender: TObject);
begin
  with dmmFacturas do
  begin
    if ((unqryTablaG.State = dsInsert) or
        (unqryTablaG.State = dsEdit)) then
    begin
      unqryTablaG.Post;
      unqryTablaG.Refresh;
    end;
    if ((dsLinFac.Dataset.State = dsInsert) or
        (dsLinFac.Dataset.State = dsEdit)) then
    begin
      dsLinFac.Dataset.Post;
      dsLinFac.Dataset.Refresh;
    end;
    if ((dsRecibos.Dataset.State = dsInsert) or
        (dsRecibos.Dataset.State = dsEdit)) then
    begin
      dsRecibos.Dataset.Post;
      dsRecibos.Dataset.Refresh;
    end;
  end;
end;

procedure TfrmMtoFacturas.tvLineasFacturaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift <> [ssCtrl]) then
    if ((Key = VK_RETURN) and
        (dmmFacturas.dsLinFac.DataSet.RecordCount = 0)
       ) then
      tvLineasFactura.DataController.Insert;
end;

procedure TfrmMtoFacturas.CambiarIVA;
begin
    if ((dmmFacturas <> nil) and
      (dsTablaG.DataSet <> nil) and
      ((dsTablaG.DataSet.State = dsEdit) or
       (dsTablaG.DataSet.State = dsInsert))) then
         dmmFacturas.AsignarIVA(
        dsTablaG.DataSet.FieldByName('GRUPO_ZONA_IVA_EMPRESA_FACTURA').AsString,
          dmmFacturas.unqryTablaG);
end;

end.
