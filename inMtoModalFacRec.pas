unit inMtoModalFacRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  dxSkinsCore, dxSkinBlue, frxClass, frxDBSet, StdCtrls, cxButtons, DB,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxLabel,
  frxExportPDF,
  ExtCtrls, cxRadioGroup, cxGroupBox, cxDBEdit, cxCheckBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, inMtoFrmBase;

type
  TfrmGenFacRec = class(TfrmBase)
    cxlbl1: TcxLabel;
    edtNumFacOrigen: TcxTextEdit;
    pnl1: TPanel;
    btn3: TcxButton;
    chkAbonar: TcxCheckBox;
    btnGenerar: TcxButton;
    cxgrpbx1: TcxGroupBox;
    edtNumFacAbono: TcxTextEdit;
    edtSerieOrigen: TcxTextEdit;
    edtSerieFacAbono: TcxTextEdit;
    chkDuplicar: TcxCheckBox;
    cxlbl8: TcxLabel;
    cmbSerieFactura: TcxLookupComboBox;
    cxlbl2: TcxLabel;
    dtFecha: TcxDateEdit;
//    procedure btn1Click(Sender: TObject);
//    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
//    procedure btn4Click(Sender: TObject);
   // procedure btnGenerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGenerarClick(Sender: TObject);
    procedure chkAbonarClick(Sender: TObject);
    procedure chkDuplicarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGenFacRec: TfrmGenFacRec;

implementation

uses
  inMtoFacturas, UniDataFacturas, inLibUser, inLibGlobalVar;

{$R *.dfm}

procedure TfrmGenFacRec.btn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmGenFacRec.btnGenerarClick(Sender: TObject);
var
  SavedCursor : TCursor;
begin
    if chkAbonar.Checked = True then
    begin
      SavedCursor := Screen.Cursor;
      try
        Screen.Cursor:=crHourglass;
        with dmmFacturas do
        begin
          with unstrdprcCrearFacturaAbono do
          begin
             //connection.StartTransaction;
             ParamByName('pidseriefactura').AsString :=  edtSerieOrigen.Text;
             ParamByName('pidnumfactura').AsString :=  edtNumFacOrigen.Text;
             ParamByName('pidseriefacturaabono').AsString :=
                                                           cmbSerieFactura.Text;
             ParamByName('pfechafacturaabono').AsDate :=  dtFecha.Date;
             ParamByName('pfechafacturaabono').AsDate :=  dtFecha.Date;
             ParamByName('pfechafacturaabono').AsDate :=  dtFecha.Date;
             ParamByName('pUSUARIO').AsString := oUser;
             ParamByName('pINSTANTEMODIF').AsDateTime := Now;
             ExecProc;
             //connection.Commit;
             edtSerieFacAbono.Text :=
                                   ParamByName('pidseriefacturaabono').AsString;
             edtNumFacAbono.Text := ParamByName('pidnumfacturaabono').AsString;
             unqryTablaG.Refresh;
          end;
       end;
      finally
        Screen.Cursor := SavedCursor;
      end;
    end;
    if chkDuplicar.Checked = True then
    begin
      SavedCursor := Screen.Cursor;
      try
        Screen.Cursor:=crHourglass;
        with dmmFacturas.unstrdprcDuplicarFactura do
        begin
          //connection.StartTransaction;
          ParamByName('pidseriefactura').AsString :=  edtSerieOrigen.Text;
          ParamByName('pidnumfactura').AsString :=  edtNumFacOrigen.Text;
          ParamByName('pidnumfactura').AsString :=  edtNumFacOrigen.Text;
          ParamByName('pidnumfactura').AsString :=  edtNumFacOrigen.Text;
          ParamByName('pUSUARIO').AsString := oUser;
          ParamByName('pINSTANTEMODIF').AsDateTime := Now;
          ParamByName('pidseriefacturaabono').AsString :=  cmbSerieFactura.Text;
          ParamByName('pfechafacturaabono').AsDate :=  dtFecha.Date;
          ExecProc;
          //connection.Commit;
          edtSerieFacAbono.Text := ParamByName('pidseriefacturaabono').AsString;
          edtNumFacAbono.Text := ParamByName('pidnumfacturaabono').AsString;
          dmmFacturas.unqryTablaG.Refresh;
       end;
      finally
         Screen.Cursor:=SavedCursor;
      end;
    end
end;

procedure TfrmGenFacRec.chkAbonarClick(Sender: TObject);
begin
  if chkAbonar.Checked then
    chkDuplicar.Checked := False;
end;

procedure TfrmGenFacRec.chkDuplicarClick(Sender: TObject);
begin
  if chkDuplicar.Checked then
    chkAbonar.Checked := False;
end;

procedure TfrmGenFacRec.FormCreate(Sender: TObject);
begin
  Self.Position := poScreenCenter;
  cmbSerieFactura.Properties.ListSource := dmmFacturas.dsSeries;
  edtNumFacOrigen.Text :=
                     dmmFacturas.unqryTablaG.findField('NRO_FACTURA').AsString;
  edtSerieOrigen.Text :=
                   dmmFacturas.unqryTablaG.findField('SERIE_FACTURA').AsString;
  cmbSerieFactura.Text :=
              cmbSerieFactura.Properties.ListSource.DataSet.Fields[0].AsString;
  dtFecha.Date := Trunc(Now);
end;

end.

