unit Alvara2005;

interface

uses

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CJVScrollLabel, ExtCtrls, jpeg, Mask, DBCtrls, Buttons,
  RXShell, EKeyNav, EFocCol, EOneInst, EHintBal, Menus, Registry, ShlObj, ComObj, ActiveX
  ;

type
  TForm1 = class(TForm)
    CJVScrollLabel1: TCJVScrollLabel;
    CJVScrollLabel2: TCJVScrollLabel;
    Panel1: TPanel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    EvHintBalloon1: TEvHintBalloon;
    EvOneInstance1: TEvOneInstance;
    EvFocusColor1: TEvFocusColor;
    EvKeyNavigator1: TEvKeyNavigator;
    RxTrayIcon1: TRxTrayIcon;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Bevel3: TBevel;
    Panel7: TPanel;
    btnSair: TBitBtn;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Setup: TPrinterSetupDialog;
    BitBtn3: TBitBtn;
    MainMenu1: TMainMenu;
    Configurar1: TMenuItem;
    CaminhoBancodeDados1: TMenuItem;
    Sair1: TMenuItem;
    IMPRIMIR1: TMenuItem;
    CONFIGURAR2: TMenuItem;
    Vias: TComboBox;
    procedure BitBtn4Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CaminhoBancodeDados1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure IMPRIMIR1Click(Sender: TObject);
    procedure CONFIGURAR2Click(Sender: TObject);

  private
    procedure  CapturarPatch(FCaption, FolderName: string);
    procedure ValidarBasedeDados;
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation

uses udm, USelecionar;
var VelhoWord, NovoWord: variant;


{$R *.dfm}

function AdiquiraOuCrieObjeto(const ClasseNome: String):IDispatch;
var Classifique_Id: TGUID;
    Desconhecido: IUnknown;
begin
  Classifique_ID:=ProgIdToClassId(ClasseNome);
  if Succeeded(GetActiveObject(Classifique_ID, nil, Desconhecido)) then
    OleCheck(desconhecido.QueryInterface(Idispatch, Result))
  else
    Result:=CreateOleObject(ClasseNome);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
var Patch: string;
begin
  try
      DM.TEmpregado.Open;
//    DMPARAMETROS.TableParametrosEmpresa.AsString;
      Application.CreateForm(TfrmSelecionar, frmSelecionar);
      frmSelecionar.ShowModal;
  except
    DM.TEmpregado.Close;
    Application.MessageBox('Base de Dados não encontrada, possivel causa para este erro é estar tentando acessar o sistema em uma maquina Cliente, para tanto configure o caminho da Base de Dados com o assitente que será exibido a seguir!','Erro',mb_ok+mb_iconerror);
    CapturarPatch('Para configurar o caminho da base de dados, basta localizar e selecionar a pasta "Dados" que esta localizada no diretório de instalção do sistema e clicar em Ok.',Patch);
  end;
end;



procedure TForm1.btnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
Setup.Execute;
end;



procedure TForm1.Sair1Click(Sender: TObject);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
     Application.Terminate;
     end
     else
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  ValidarBasedeDados;
  DM.TEmpregado.Open;
  DM.TEmpregado.Close;
  bitbtn4.SetFocus; 
end;

procedure TForm1.CaminhoBancodeDados1Click(Sender: TObject);
var Patch: String;
begin
   CapturarPatch('Utilize esta opção para configurar o caminho do Banco de Dados do Sistema, ' +
   'caso tenha problemas com o mesmo.',Patch);
end;

procedure TForm1.CapturarPatch(FCaption, FolderName: string);
var
  BrowseInfo: TBrowseInfo;
  ItemIDList: PItemIDList;
  ItemSelected : PItemIDList;
  NameBuffer: array[0..MAX_PATH] of Char;
  WindowList: Pointer;
  IniFile: TRegIniFile;
  Result: boolean;
begin
  // Função lógica que recebe dois parâmetros um para o rótulo da caixa de seleção de
  // diretório presente na unit ShlObj declarada acima e o outro por referência retorna
  // uma String com o diretório novo e a escreve na chave correspondente no Registro,
  // mas apenas se selecionar OK na caixa de seleção de diretório.
  itemIDList := nil;
  FillChar(BrowseInfo, SizeOf(BrowseInfo), 0);
  BrowseInfo.hwndOwner := Handle;
  BrowseInfo.pidlRoot := ItemIDList;
  BrowseInfo.pszDisplayName := NameBuffer;
  BrowseInfo.lpszTitle := PChar(FCaption);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  WindowList := DisableTaskWindows(0);
  try
    ItemSelected := SHBrowseForFolder(BrowseInfo);
    Result := ItemSelected <> nil;
  finally
    EnableTaskWindows(WindowList);
  end;

  if Result then
   begin
    SHGetPathFromIDList(ItemSelected,NameBuffer);
    FolderName := NameBuffer;
    try
      IniFile:=TRegIniFile.Create('Software\HF Softwares');
      IniFile.WriteString('Alvara','CaminhoDados',FolderName);
      ValidarBaseDeDados;
    finally
      IniFile.Free;
    end;
   end;
end;

procedure TForm1.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
  // Aqui Atribui-se o caminho da chave onde encontra-se o diretório padrão para a
  // variável chave atrvés do objeto IniFile da classe Registry declarada acima.
  // Depois a propriedade da conexão ADO recebe verdadeiro e por fim recebe os parâmetros
  // corretos com a senha  e o caminho da Base de Dados
  try
   try
    DM.Conexao.Connected:=False;
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Alvara','CaminhoDados',chave);
    DM.Conexao.ConnectionString:= 'Provider=Microsoft.Jet.OLEDB.4.0; ' +
    'Data Source='+chave+'\Gerenciador de Escritorio.mde;'+
    'Jet OLEDB:Database Password="";' +
    'Persist Security Info=False';
    DM.Conexao.LoginPrompt:=False;
   except
    Application.MessageBox('Erro ao conectar-se com a fonte de dados, o Sistema ira corrigir o problema '+
    'automaticamente, caso persista o erro, vá até o menu "Utilitário", e clique em Reparar Fonte de Dados, '+
    'se mesmo assim persistir o erro, entre em contato com o Suporte.','Aviso!',mb_iconerror+mb_ok);

   end;
  finally
   IniFile.Free;
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
   WinWord, Docs, Doc: Variant;
begin
  if Edit7.Text = '' then
  begin
  Application.MessageBox('Selecione uma Empresa!', 'Informação', mb_Ok + mb_IconInformation);
  Bitbtn4.Click;
  end
  else
  begin
  if Edit7.Text <> '' then
  begin
  if Application.MessageBox('Confirma Impressão?', 'Impressão',
  mb_YesNo + mb_ICONQUESTION) = idYes then
  begin
  VelhoWord:=AdiquiraOuCrieObjeto('Word.Basic');
  NovoWord :=AdiquiraOuCrieObjeto('Word.Application');

  // Tornar o word invisivel
  NovoWord.Visible := false;

  // Abrir arquivo para edição
  Doc:= NovoWord.Documents.Open(ExtractFilePath(Application.ExeName)+'RA.doc');

  // Substituir itens do arquivo por texto escolhido
  Doc.Content.Find.Execute(FindText := '0001', ReplaceWith := Edit7.Text);
  Doc.Content.Find.Execute(FindText := '0002', ReplaceWith := Edit2.Text);
  Doc.Content.Find.Execute(FindText := '0003', ReplaceWith := Edit3.Text);
  Doc.Content.Find.Execute(FindText := '0004', ReplaceWith := Edit4.Text);
  Doc.Content.Find.Execute(FindText := '0005', ReplaceWith := MaskEdit1.Text);
  Doc.Content.Find.Execute(FindText := '0006', ReplaceWith := MaskEdit2.Text);
  Doc.Content.Find.Execute(FindText := '0007', ReplaceWith := Edit7.Text);

  //Imprime Documento em 02 vias
  NovoWord.ActiveDocument.PrintOut(Copies := Vias.Text);

  Application.MessageBox('Aguarde, processando documento...', 'Impressão', mb_Ok + mb_IconInformation);

  // sai sem salvar o documento
  NovoWord.ActiveDocument.Close(SaveChanges := 0);

  // Fechar
  NovoWord.Quit;
  Application.MessageBox('Processamento realizado com sucesso...', 'Impressão', mb_Ok + mb_IconInformation);
end;
end;
end;
end;

procedure TForm1.IMPRIMIR1Click(Sender: TObject);
begin
Bitbtn1.Click; 
end;

procedure TForm1.CONFIGURAR2Click(Sender: TObject);
begin
Bitbtn3.Click; 
end;

end.



