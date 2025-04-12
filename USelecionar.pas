unit USelecionar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ADODB;

type
  TfrmSelecionar = class(TForm)
    Bevel2: TBevel;
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    DBGrid1: TDBGrid;
    Bevel4: TBevel;
    btnEdit: TBitBtn;
    btnSair: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    EditPesquisa: TEdit;
    ComboBox1: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPesquisaChange(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure EditPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionar: TfrmSelecionar;

implementation

uses Alvara2005, udm;



{$R *.dfm}

procedure TfrmSelecionar.FormShow(Sender: TObject);
begin
DM.TEmpregado.Close;
DM.TEmpregado.Open;
Form1.EvKeyNavigator1.Active := False;
Form1.Enabled := False;
EditPesquisa.SetFocus;
end;

procedure TfrmSelecionar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.TEmpregado.Close;
Form1.EvKeyNavigator1.Active := True;
Form1.Enabled := True;
Action := CaFree;
end;

procedure TfrmSelecionar.EditPesquisaChange(Sender: TObject);
begin
DM.TEmpregado.Locate('NOMEEMPRESA',EditPesquisa.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmSelecionar.btnEditClick(Sender: TObject);
begin
   if DM.TEmpregado.RecordCount <> 0 then
   begin
      DM.TEmpregado.Open;
      Form1.Edit1.Text := DM.TEmpregado['CODEMPRESA'];
      Form1.Edit7.Text := DM.TEmpregado['NOMEEMPRESA'];
      Form1.Edit2.Text := DM.TEmpregado['ENDERECO'];
      Form1.Edit3.Text := DM.TEmpregado['NUMERO'];
      Form1.Edit4.Text := DM.TEmpregado['BAIRRO'];
      Form1.MaskEdit1.Text := DM.TEmpregado['CNPJ'];
      Form1.MaskEdit2.Text := DM.TEmpregado['INSCESTADUAL'];
      DM.TEmpregado.Close;
      Close;
      end;

end;



procedure TfrmSelecionar.EditPesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
   btnEdit.Click;
end;

procedure TfrmSelecionar.btnSairClick(Sender: TObject);
begin
Close;
end;

end.
