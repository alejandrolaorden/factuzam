unit inMtoIvas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inMtoGen, dxSkinsCore,
  dxSkinsDefaultPainters, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, dxSkinsForm, cxClasses, cxLocalization, Vcl.StdCtrls,
  cxButtons, cxDBNavigator, Vcl.Buttons, dxBevel, cxLabel, cxTextEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, Vcl.ExtCtrls, UniDataIvas, cxSpinEdit,
  cxCalendar, cxDBExtLookupComboBox, cxDBLookupComboBox, dxScrollbarAnnotations,
  cxBlobEdit, dxCore, cxRadioGroup, cxCheckBox;

type
  TfrmMtoIvas = class(TfrmMtoGen)
    cxgrdbclmnGrdDBTabPrinCODIGO_IVA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFECHA_DESDE_IVA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinFECHA_HASTA_IVA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDESCRIPCION_ZONA_IVA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinGRUPO_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPORCENEXENTO_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPORCENEXENTO_RE_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPORCENNORMAL_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPORCENNORMAL_RE_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPORCENREDUCIDO_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPORCENREDUCIDO_RE_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPORCENSUPERREDUCIDO_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPORCENSUPERREDUCIDO_RE_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinESAPLICA_RE_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinESIVAAGRICOLA_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinESDEFAULT_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinESIRPF_IMP_INCL_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPALABRA_REPORTS_ZONA_IVA: TcxGridDBColumn;
    procedure cxgrdbclmnGrdDBTabPrinGRUPO_ZONA_IVAPropertiesChange(
      Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  public
    procedure CrearTablaPrincipal; override;
end;

  procedure ShowMtoIvas(Owner       : TComponent); overload;
  procedure ShowMtoIvas(Owner       : TComponent; sOdon: String); overload;

const
  pkFieldName = 'CODIGO_IVA';

var
  frmMtoIvas: TfrmMtoIvas;
  dmmIvas : TdmIvas;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoIvas(Owner       : TComponent); overload;
var
  frmMtoIvas : TfrmMtoIvas;
begin
  if not(IsOpenMDI('frmMtoIvas', Owner)) then
  begin
    frmMtoIvas := TfrmMtoIvas.Create(Owner);
    frmMtoIvas.edtBusqGlobal.SetFocus;
  end;
end;

procedure ShowMtoIvas(Owner       : TComponent; sOdon: String); overload;
var
  frmMtoIvas : TfrmMtoIvas;
begin
  if not(IsOpenMDI('frmMtoIvas', Owner)) then
  begin
    frmMtoIvas := TfrmMtoIvas.Create(Owner);
    frmMtoIvas.Show;
    //dmmClientes.unqryClientes.Locate(pkFieldName, sOdon, []);
    frmMtoIvas.edtBusqGlobal.SetFocus;
  end;
end;

procedure TfrmMtoIvas.CrearTablaPrincipal;
begin
  inherited;
  dmmIvas := TdmIvas.Create(Self);
  dsTablaG.DataSet := dmmIvas.unqryTablaG;
  (cxgrdbclmnGrdDBTabPrinGRUPO_ZONA_IVA.Properties as
                     TcxLookupComboBoxProperties).ListSource := dmmIvas.dsZonas;
end;

procedure TfrmMtoIvas.cxgrdbclmnGrdDBTabPrinGRUPO_ZONA_IVAPropertiesChange(
  Sender: TObject);
begin
  inherited;
  //copio la descripcion de Zona a la sig columna
  //dsTablaG.DataSet.FieldByName('DESCRIPCION_ZONA_IVA').AsString :=
  //           dmmIVAS.unqryZonasIVA.FieldByName('DESCRIPCION_ZONA_IVA').AsString;
end;

//procedure TfrmMtoIvas.tsFichaEnter(Sender: TObject);
//begin
//  inherited;
//  //cxdbtxtdtRAZON_SOCIAL.SetFocus;
//  //pcPestanas.ActivePage := tsDomicilioFiscal;
//end;

end.
