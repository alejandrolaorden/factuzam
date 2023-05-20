unit inMtoIvasGrupos;

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
  cxGridDBTableView, cxGrid, cxPC, Vcl.ExtCtrls, UniDataIvasGrupos, cxSpinEdit,
  cxCalendar, cxCheckBox, cxBlobEdit, dxScrollbarAnnotations, dxCore,
  cxRadioGroup;

type
  TfrmMtoIvasGrupos = class(TfrmMtoGen)
    cxgrdbclmnGrdDBTabPrinGRUPO_ZONA_IVA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDESCRIPCION_ZONA_IVA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinAPLICA_RE_ZONA_IVA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDEFAULT_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinIRPF_IMP_INCL_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinESIVAAGRICOLA_ZONA_IVA: TcxGridDBColumn;
    cxGrdDBTabPrinPALABRA_REPORTS_ZONA_IVA: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  public
    procedure CrearTablaPrincipal; override;
end;

  procedure ShowMtoIvasGrupos(Owner       : TComponent); overload;
  procedure ShowMtoIvasGrupos(Owner       : TComponent; sOdon: String); overload;

const
  pkFieldName = 'GRUPO_ZONA_IVA';

var
  frmMtoIvasGrupos: TfrmMtoIvasGrupos;
  dmmIvasGrupos : TdmIvasGrupos;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoIvasGrupos(Owner       : TComponent); overload;
var
  frmMtoIvasGrupos : TfrmMtoIvasGrupos;
begin
  if not(IsOpenMDI('frmMtoIvasGrupos', Owner)) then
  begin
    frmMtoIvasGrupos := TfrmMtoIvasGrupos.Create(Owner);
    frmMtoIvasGrupos.edtBusqGlobal.SetFocus;
  end;
end;

procedure ShowMtoIvasGrupos(Owner       : TComponent; sOdon: String); overload;
var
  frmMtoIvasGrupos : TfrmMtoIvasGrupos;
begin
  if not(IsOpenMDI('frmMtoIvasGrupos', Owner)) then
  begin
    frmMtoIvasGrupos := TfrmMtoIvasGrupos.Create(Owner);
    frmMtoIvasGrupos.Show;
    //dmmClientes.unqryClientes.Locate(pkFieldName, sOdon, []);
    frmMtoIvasGrupos.edtBusqGlobal.SetFocus;
  end;
end;

procedure TfrmMtoIvasGrupos.CrearTablaPrincipal;
begin
  inherited;
  dmmIvasGrupos := TdmIvasGrupos.Create(Self);
end;

end.
