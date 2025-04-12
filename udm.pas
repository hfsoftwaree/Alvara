unit udm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    DSEmpregado: TDataSource;
    TEmpregado: TADOTable;
    Conexao: TADOConnection;
    TEmpregadoCODEMPRESA: TAutoIncField;
    TEmpregadoNOMEEMPRESA: TWideStringField;
    TEmpregadoNOMEFANTASIA: TWideStringField;
    TEmpregadoCOMPLEMENTO: TWideStringField;
    TEmpregadoENDERECO: TWideStringField;
    TEmpregadoNUMERO: TWideStringField;
    TEmpregadoBAIRRO: TWideStringField;
    TEmpregadoCIDADE: TWideStringField;
    TEmpregadoCODUF: TWideStringField;
    TEmpregadoDESCRICAOUF: TWideStringField;
    TEmpregadoCEP: TWideStringField;
    TEmpregadoFONE: TWideStringField;
    TEmpregadoCNPJ: TWideStringField;
    TEmpregadoVENCIMENTOCNPJ: TWideStringField;
    TEmpregadoJUNTACOMERCIAL: TWideStringField;
    TEmpregadoINSCESTADUAL: TWideStringField;
    TEmpregadoVENCIMENTOFIC: TWideStringField;
    TEmpregadoTIPO: TWideStringField;
    TEmpregadoDESCRICAOTIPO: TWideStringField;
    TEmpregadoCNAE: TWideStringField;
    TEmpregadoDESCRICAOCNAE: TWideStringField;
    TEmpregadoTIPOGIA: TWideStringField;
    TEmpregadoDESCRICAOGIA: TWideStringField;
    TEmpregadoTITULAREMPRESA: TWideStringField;
    TEmpregadoCPFTITULAR: TWideStringField;
    TEmpregadoCONTADOR: TWideStringField;
    TEmpregadoCPFCONTADOR: TWideStringField;
    TEmpregadoCRCCONTADOR: TWideStringField;
    TEmpregadoCARGO: TWideStringField;
    TEmpregadoDATAREGISTRO: TWideStringField;
    TEmpregadoCODIGOISS: TWideStringField;
    TEmpregadoDESCRICAOISS: TWideStringField;
    TEmpregadoCODIGOEXC: TWideStringField;
    TEmpregadoDESCRICAOEXC: TWideStringField;
    TEmpregadoCODIGOICMS: TWideStringField;
    TEmpregadoDESCRICAOICMS: TWideStringField;
    TEmpregadoCODIGOENQE: TWideStringField;
    TEmpregadoDESCRICAOENQE: TWideStringField;
    TEmpregadoESTIMATIVA: TBCDField;
    TEmpregadoCAPITAL: TBCDField;
    TEmpregadoCODIGOENQF: TWideStringField;
    TEmpregadoDESCRICAOENQF: TWideStringField;
    TEmpregadoREGISTROF: TWideStringField;
    TEmpregadoCODIGOIPI: TWideStringField;
    TEmpregadoDESCRICAOIPI: TWideStringField;
    TEmpregadoCODIGOMUNICIPIOF: TWideStringField;
    TEmpregadoIRPJ: TWideStringField;
    TEmpregadoCS: TWideStringField;
    TEmpregadoPIS: TWideStringField;
    TEmpregadoCOFINS: TWideStringField;
    TEmpregadoCADASTRADOPOR: TWideStringField;
    TEmpregadoSETOR: TWideStringField;
    TEmpregadoINSCMUNICIPAL: TWideStringField;
    TEmpregadoPROCESSO: TWideStringField;
    TEmpregadoDATACADASTRAMENTO: TWideStringField;
    TEmpregadoCODIGOSITUACAO: TWideStringField;
    TEmpregadoDESCRICAOSITUACAO: TWideStringField;
    TEmpregadoCODIGODCTF: TWideStringField;
    TEmpregadoDESCRICAODCTF: TWideStringField;
    QEmpresa: TADOQuery;
    DSQEmpresa: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
