unit inMtoGrupos;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inMtoGen, dxSkinsCore,
  dxSkinsDefaultPainters, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, dxSkinsForm, cxClasses, cxLocalization, Vcl.StdCtrls,
  cxButtons, cxDBNavigator, Vcl.Buttons, dxBevel, cxLabel, cxTextEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, Vcl.ExtCtrls, UniDataGrupos, cxCheckBox,
  cxSpinEdit, cxDBEdit, cxCalendar, dxScrollbarAnnotations, cxBlobEdit, dxCore,
  cxRadioGroup;

type
  TfrmMtoGrupos = class(TfrmMtoGen)
    cxGrdDBTabPrinGRUPO_USUARIO: TcxGridDBColumn;
    cxGrdDBTabPrinESGRUPOADMINISTRADOR: TcxGridDBColumn;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxgrdUsuarios: TcxGrid;
    tvUsuarios: TcxGridDBTableView;
    cxgrdlvlUsuarios: TcxGridLevel;
    tvUsuariosUSUARIO_USUARIO: TcxGridDBColumn;
    tvUsuariosGRUPO_USUARIO: TcxGridDBColumn;
    tvUsuariosEMPRESADEF_USUARIO: TcxGridDBColumn;
    tvUsuariosULTIMOLOGIN_USUARIO: TcxGridDBColumn;
  private
    { Private declarations }
  public
    procedure CrearTablaPrincipal; override;
  end;
  procedure ShowMtoGrupos(Owner       : TComponent); overload;
  procedure ShowMtoGrupos(Owner       : TComponent; sOdon: String); overload;
//const
//  pkFieldName = 'TIPODOC_CONTADOR;EJERCICIO_CONTADOR;SERIE_CONTADOR';

var
  frmMtoGrupos: TfrmMtoGrupos;
  dmmGrupos:TdmGrupos;

implementation

uses
  inLibWin;

{$R *.dfm}

procedure ShowMtoGrupos(Owner       : TComponent); overload;
var
  frmMtoGrupos : TfrmMtoGrupos;
begin
  if not(IsOpenMDI('frmMtoGrupos', Owner)) then
  begin
    frmMtoGrupos := TfrmMtoGrupos.Create(Owner);
    frmMtoGrupos.edtBusqGlobal.SetFocus;
  end;
end;

procedure ShowMtoGrupos(Owner       : TComponent; sOdon: String); overload;
var
  frmMtoGrupos : TfrmMtoGrupos;
begin
  if not(IsOpenMDI('frmMtoEmpresas', Owner)) then
  begin
    frmMtoGrupos := TfrmMtoGrupos.Create(Owner);
    frmMtoGrupos.Show;
    //dmmClientes.unqryClientes.Locate(pkFieldName, sOdon, []);
    frmMtoGrupos.edtBusqGlobal.SetFocus;
  end;
end;

{ TfrmMtoGrupos }


procedure TfrmMtoGrupos.CrearTablaPrincipal;
begin
  inherited;
  dmmGrupos := TdmGrupos.Create(Self);
  dsTablaG.DataSet := dmmGrupos.unqryTablaG;
  tvUsuarios.DataController.DataSource := dmmGrupos.dsUsuariosGrupo;
end;

end.
