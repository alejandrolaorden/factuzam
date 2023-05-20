unit inMtoModalGenImpSave;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  inMtoFrmBase, dxSkinsForm, cxClasses, cxContainer, cxEdit, cxLookAndFeels,
  cxLocalization, cxGraphics, cxControls, cxLookAndFeelPainters, cxLabel,
  cxTextEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, dxCore, cxMaskEdit,
  cxDropDownEdit;

type
  TfrmModalGenImpSave = class(TfrmBase)
    edtNombreOrigen: TcxTextEdit;
    lbl1: TcxLabel;
    edtDescripcion: TcxTextEdit;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    cbbPermisos: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGuardarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sFicha:string;
  end;

var
  frmModalGenImpSave: TfrmModalGenImpSave;

implementation

{$R *.dfm}

procedure TfrmModalGenImpSave.btnCancelarClick(Sender: TObject);
begin
  inherited;
  PostMessage(Handle, WM_CLOSE, 0, 0);
end;

procedure TfrmModalGenImpSave.btnGuardarClick(Sender: TObject);
begin
  inherited;
  sFicha := 'S';
  PostMessage(Handle, WM_CLOSE, 0, 0);
end;

procedure TfrmModalGenImpSave.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

end.
