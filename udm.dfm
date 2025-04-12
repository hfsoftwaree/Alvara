object DM: TDM
  OldCreateOrder = False
  Left = 209
  Top = 139
  Height = 258
  Width = 220
  object DSEmpregado: TDataSource
    DataSet = TEmpregado
    Left = 32
    Top = 74
  end
  object TEmpregado: TADOTable
    Connection = Conexao
    CursorType = ctStatic
    TableName = 'Cadastro de Empresas'
    Left = 120
    Top = 72
    object TEmpregadoCODEMPRESA: TAutoIncField
      FieldName = 'CODEMPRESA'
      ReadOnly = True
    end
    object TEmpregadoNOMEEMPRESA: TWideStringField
      FieldName = 'NOMEEMPRESA'
      Size = 100
    end
    object TEmpregadoNOMEFANTASIA: TWideStringField
      FieldName = 'NOMEFANTASIA'
      Size = 100
    end
    object TEmpregadoCOMPLEMENTO: TWideStringField
      FieldName = 'COMPLEMENTO'
    end
    object TEmpregadoENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Size = 38
    end
    object TEmpregadoNUMERO: TWideStringField
      FieldName = 'NUMERO'
      Size = 4
    end
    object TEmpregadoBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
    end
    object TEmpregadoCIDADE: TWideStringField
      FieldName = 'CIDADE'
    end
    object TEmpregadoCODUF: TWideStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object TEmpregadoDESCRICAOUF: TWideStringField
      FieldName = 'DESCRICAOUF'
      Size = 50
    end
    object TEmpregadoCEP: TWideStringField
      FieldName = 'CEP'
      Size = 50
    end
    object TEmpregadoFONE: TWideStringField
      FieldName = 'FONE'
      Size = 50
    end
    object TEmpregadoCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Size = 50
    end
    object TEmpregadoVENCIMENTOCNPJ: TWideStringField
      FieldName = 'VENCIMENTOCNPJ'
      Size = 50
    end
    object TEmpregadoJUNTACOMERCIAL: TWideStringField
      FieldName = 'JUNTACOMERCIAL'
      Size = 14
    end
    object TEmpregadoINSCESTADUAL: TWideStringField
      FieldName = 'INSCESTADUAL'
      Size = 50
    end
    object TEmpregadoVENCIMENTOFIC: TWideStringField
      FieldName = 'VENCIMENTOFIC'
      Size = 50
    end
    object TEmpregadoTIPO: TWideStringField
      FieldName = 'TIPO'
      Size = 50
    end
    object TEmpregadoDESCRICAOTIPO: TWideStringField
      FieldName = 'DESCRICAOTIPO'
      Size = 50
    end
    object TEmpregadoCNAE: TWideStringField
      FieldName = 'CNAE'
      Size = 50
    end
    object TEmpregadoDESCRICAOCNAE: TWideStringField
      FieldName = 'DESCRICAOCNAE'
      Size = 100
    end
    object TEmpregadoTIPOGIA: TWideStringField
      FieldName = 'TIPOGIA'
      Size = 1
    end
    object TEmpregadoDESCRICAOGIA: TWideStringField
      FieldName = 'DESCRICAOGIA'
      Size = 50
    end
    object TEmpregadoTITULAREMPRESA: TWideStringField
      FieldName = 'TITULAREMPRESA'
      Size = 50
    end
    object TEmpregadoCPFTITULAR: TWideStringField
      FieldName = 'CPFTITULAR'
      Size = 50
    end
    object TEmpregadoCONTADOR: TWideStringField
      FieldName = 'CONTADOR'
      Size = 50
    end
    object TEmpregadoCPFCONTADOR: TWideStringField
      FieldName = 'CPFCONTADOR'
      Size = 50
    end
    object TEmpregadoCRCCONTADOR: TWideStringField
      FieldName = 'CRCCONTADOR'
      Size = 50
    end
    object TEmpregadoCARGO: TWideStringField
      FieldName = 'CARGO'
      Size = 50
    end
    object TEmpregadoDATAREGISTRO: TWideStringField
      FieldName = 'DATAREGISTRO'
      Size = 50
    end
    object TEmpregadoCODIGOISS: TWideStringField
      FieldName = 'CODIGOISS'
      Size = 1
    end
    object TEmpregadoDESCRICAOISS: TWideStringField
      FieldName = 'DESCRICAOISS'
      Size = 50
    end
    object TEmpregadoCODIGOEXC: TWideStringField
      FieldName = 'CODIGOEXC'
      Size = 1
    end
    object TEmpregadoDESCRICAOEXC: TWideStringField
      FieldName = 'DESCRICAOEXC'
      Size = 50
    end
    object TEmpregadoCODIGOICMS: TWideStringField
      FieldName = 'CODIGOICMS'
      Size = 1
    end
    object TEmpregadoDESCRICAOICMS: TWideStringField
      FieldName = 'DESCRICAOICMS'
      Size = 50
    end
    object TEmpregadoCODIGOENQE: TWideStringField
      FieldName = 'CODIGOENQE'
      Size = 1
    end
    object TEmpregadoDESCRICAOENQE: TWideStringField
      FieldName = 'DESCRICAOENQE'
      Size = 50
    end
    object TEmpregadoESTIMATIVA: TBCDField
      FieldName = 'ESTIMATIVA'
      Precision = 19
    end
    object TEmpregadoCAPITAL: TBCDField
      FieldName = 'CAPITAL'
      Precision = 19
    end
    object TEmpregadoCODIGOENQF: TWideStringField
      FieldName = 'CODIGOENQF'
      Size = 1
    end
    object TEmpregadoDESCRICAOENQF: TWideStringField
      FieldName = 'DESCRICAOENQF'
      Size = 50
    end
    object TEmpregadoREGISTROF: TWideStringField
      FieldName = 'REGISTROF'
      Size = 50
    end
    object TEmpregadoCODIGOIPI: TWideStringField
      FieldName = 'CODIGOIPI'
      Size = 1
    end
    object TEmpregadoDESCRICAOIPI: TWideStringField
      FieldName = 'DESCRICAOIPI'
      Size = 50
    end
    object TEmpregadoCODIGOMUNICIPIOF: TWideStringField
      FieldName = 'CODIGOMUNICIPIOF'
      Size = 6
    end
    object TEmpregadoIRPJ: TWideStringField
      FieldName = 'IRPJ'
      Size = 4
    end
    object TEmpregadoCS: TWideStringField
      FieldName = 'CS'
      Size = 4
    end
    object TEmpregadoPIS: TWideStringField
      FieldName = 'PIS'
      Size = 4
    end
    object TEmpregadoCOFINS: TWideStringField
      FieldName = 'COFINS'
      Size = 4
    end
    object TEmpregadoCADASTRADOPOR: TWideStringField
      FieldName = 'CADASTRADOPOR'
      Size = 80
    end
    object TEmpregadoSETOR: TWideStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object TEmpregadoINSCMUNICIPAL: TWideStringField
      FieldName = 'INSCMUNICIPAL'
      Size = 10
    end
    object TEmpregadoPROCESSO: TWideStringField
      FieldName = 'PROCESSO'
      Size = 10
    end
    object TEmpregadoDATACADASTRAMENTO: TWideStringField
      FieldName = 'DATACADASTRAMENTO'
      Size = 50
    end
    object TEmpregadoCODIGOSITUACAO: TWideStringField
      FieldName = 'CODIGOSITUACAO'
      Size = 1
    end
    object TEmpregadoDESCRICAOSITUACAO: TWideStringField
      FieldName = 'DESCRICAOSITUACAO'
      Size = 50
    end
    object TEmpregadoCODIGODCTF: TWideStringField
      FieldName = 'CODIGODCTF'
      Size = 1
    end
    object TEmpregadoDESCRICAODCTF: TWideStringField
      FieldName = 'DESCRICAODCTF'
      Size = 50
    end
  end
  object Conexao: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 8
  end
  object QEmpresa: TADOQuery
    Connection = Conexao
    Parameters = <>
    SQL.Strings = (
      'Select * From Cadastro de Empresas Order by NOMEEMPRESA')
    Left = 120
    Top = 152
  end
  object DSQEmpresa: TDataSource
    DataSet = QEmpresa
    Left = 24
    Top = 152
  end
end
