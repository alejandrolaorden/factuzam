unit inMtoContadores;

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
  cxGridDBTableView, cxGrid, cxPC, Vcl.ExtCtrls, UniDataContadores, cxCheckBox,
  cxSpinEdit, cxBlobEdit;

type
  TfrmMtoContadores = class(TfrmMtoGen)
    cxgrdbclmnGrdDBTabPrinTIPODOC_CONTADOR: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinSERIE_CONTADOR: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinCONTADOR_CONTADOR: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinDEFAULT_CONTADOR: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEMODIF: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinINSTANTEALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOALTA: TcxGridDBColumn;
    cxgrdbclmnGrdDBTabPrinUSUARIOMODIF: TcxGridDBColumn;
    cxGrdDBTabPrinNUMDIGIT_CONTADOR: TcxGridDBColumn;
    cxGrdDBTabPrinACTIVO_CONTADOR: TcxGridDBColumn;
  private
    { Private declarations }
  public
    procedure CrearTablaPrincipal; override;
  end;
  procedure ShowMtoContadores(Owner       : TComponent); overload;
  procedure ShowMtoContadores(Owner       : TComponent; sOdon: String); overload;
//const
//  pkFieldName = 'TIPODOC_CONTADOR;EJERCICIO_CONTADOR;SERIE_CONTADOR';

var
  frmMtoContadores: TfrmMtoContadores;
  dmmContadores:TdmContadores;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoContadores(Owner       : TComponent); overload;
var
  frmMtoContadores : TfrmMtoContadores;
begin
  if not(IsOpenMDI('frmMtoContadores', Owner)) then
  begin
    frmMtoContadores := TfrmMtoContadores.Create(Owner);
    frmMtoContadores.edtBusqGlobal.SetFocus;
  end;
end;

procedure ShowMtoContadores(Owner       : TComponent; sOdon: String); overload;
var
  frmMtoContadores : TfrmMtoContadores;
begin
  if not(IsOpenMDI('frmMtoEmpresas', Owner)) then
  begin
    frmMtoContadores := TfrmMtoContadores.Create(Owner);
    frmMtoContadores.Show;
    //dmmClientes.unqryClientes.Locate(pkFieldName, sOdon, []);
    frmMtoContadores.edtBusqGlobal.SetFocus;
  end;
end;

{ TfrmMtoContadores }

procedure TfrmMtoContadores.CrearTablaPrincipal;
begin
  inherited;
  dmmContadores := TdmContadores.Create(Self);
end;

end.
