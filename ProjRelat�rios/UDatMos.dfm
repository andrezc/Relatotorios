object a: Ta
  OldCreateOrder = False
  Left = 264
  Top = 109
  Height = 586
  Width = 678
  object IBODatabase1: TIBODatabase
    SQLDialect = 3
    Params.Strings = (
      'PATH=C:\Arquivos de programas\Focus\FOCUS.FOC'
      'CHARACTER SET=WIN1252'
      'USER NAME=SYSDBA'
      'SQL DIALECT=3')
    Isolation = tiCommitted
    Left = 151
    Top = 468
    SavedPassword = '.JuMbLe.01.432B0639073E0E4B49'
  end
  object frxDBDatasetEmpresa: TfrxDBDataset
    UserName = 'DBDatEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NM_EMPRESA=NM_EMPRESA'
      '-DB_KEY=DB_KEY')
    DataSet = IBOQueryEmpresa
    Left = 151
    Top = 364
  end
  object IBOQueryEmpresa: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select nm_empresa'
      'from empresas')
    FieldOptions = []
    Left = 151
    Top = 316
  end
  object QueryF1: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'DE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ATE'
        ParamType = ptInput
      end>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'FORNECEDORES.CD_FORNECEDOR   as C1,'
      'FORNECEDORES.NM_FORNECEDOR   as C2,'
      'coalesce((select sum(NF.VALOR_TOTAL_NOTA) from NF'
      'where'
      'NF.CD_FORNECEDOR = FORNECEDORES.CD_FORNECEDOR and'
      'NF.DT_EMISSAO >= :DE and NF.DT_EMISSAO <= :ATE), 0) as C3,'
      'FORNECEDORES.DT_ULTIMACOMPRA as C4'
      'from FORNECEDORES'
      'where'
      '(coalesce((select sum(NF.VALOR_TOTAL_NOTA) from NF'
      ''
      'where'
      'NF.CD_FORNECEDOR = FORNECEDORES.CD_FORNECEDOR and'
      
        'NF.DT_EMISSAO >= '#39'01/01/2008'#39' and NF.DT_EMISSAO <= '#39'12/12/2008'#39')' +
        ', 0)) > 0')
    FieldOptions = []
    Left = 65
    Top = 420
  end
  object DSetF1: TfrxDBDataset
    UserName = 'DSetF01'
    CloseDataSource = False
    DataSet = QueryF1
    Left = 65
    Top = 468
  end
  object QueryE1: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select distinct'
      'NF.DT_EMISSAO as C1,'
      'NF.CD_FORNECEDOR as C2,'
      'FORNECEDORES.NM_FORNECEDOR as C3,'
      'NF.NUM_DOCUMENTO as C4,'
      'NF.VALOR_TOTAL_NOTA as C5,'
      'NF.VR_TOTAL_PROD as C6'
      ''
      'from NF'
      'left outer JOIN FORNECEDORES'
      'on NF.CD_FORNECEDOR = FORNECEDORES.CD_FORNECEDOR'
      ''
      'WHERE'
      'NF.DT_EMISSAO >= '#39'01/01/2007'#39
      'and  NF.DT_EMISSAO <= '#39'12/12/2008'#39)
    FieldOptions = []
    Left = 9
    Top = 316
  end
  object DSetE1: TfrxDBDataset
    UserName = 'DSetE01'
    CloseDataSource = False
    DataSet = QueryE1
    Left = 9
    Top = 364
  end
  object QueryE2: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select'
      'PRODUTOS.COD_BARRAS       as C1,'
      'PRODUTOS.NM_PRODUTO       as C2,'
      'PRODUTOS.UNIDADE          as C3,'
      'sum(TRANSFERENCIAS_ITEMS.QUANTIDADE) as C4'
      ''
      'from TRANSFERENCIAS_ITEMS'
      
        'left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = TRANSFERENCIA' +
        'S_ITEMS.CD_PRODUTO)'
      
        'left outer join TRANSFERENCIAS on (TRANSFERENCIAS.NUM_DOCUMENTO ' +
        '= TRANSFERENCIAS_ITEMS.NUM_DOCUMENTO)'
      ''
      
        'group by PRODUTOS.CD_PRODUTO, PRODUTOS.COD_BARRAS, PRODUTOS.NM_P' +
        'RODUTO, PRODUTOS.UNIDADE')
    FieldOptions = []
    Left = 65
    Top = 316
  end
  object DSetE2: TfrxDBDataset
    UserName = 'DSetE02'
    CloseDataSource = False
    DataSet = QueryE2
    Left = 65
    Top = 364
  end
  object QueryV1: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select'
      'VENDAS_ITEMS.DT_VENDA as C1,'
      'PRODUTOS.COD_BARRAS as C2,'
      'coalesce(VENDAS_ITEMS.DESCRICAO, PRODUTOS.NM_PRODUTO) as C3,'
      'PRODUTOS.UNIDADE as C4,'
      'VENDAS_ITEMS.QUANTIDADE as C5,'
      'VENDAS_ITEMS.PRECO as C6,'
      'VENDAS_ITEMS.DESCONTO as C7,'
      'VENDAS_ITEMS.SUBTOTAL as C8,'
      'VENDAS_ITEMS.NUM_CAIXA as C9'
      ' '
      'from VENDAS_ITEMS'
      
        'left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = VENDAS_ITEMS.' +
        'CD_PRODUTO)'
      
        'left outer join VENDAS   on (VENDAS.NUM_DOCUMENTO = VENDAS_ITEMS' +
        '.NUM_DOCUMENTO)'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      
        'and VENDAS_ITEMS.DT_VENDA >= '#39'09/01/2008'#39' and VENDAS_ITEMS.DT_VE' +
        'NDA <= '#39'10/23/2008'#39)
    FieldOptions = []
    Left = 10
    Top = 12
  end
  object DSetV1: TfrxDBDataset
    UserName = 'DSetV01'
    CloseDataSource = False
    DataSet = QueryV1
    Left = 10
    Top = 60
  end
  object QueryV2: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select'
      'PRODUTOS.COD_BARRAS as C1,'
      'PRODUTOS.NM_PRODUTO as C2,'
      'PRODUTOS.UNIDADE as C3,'
      'sum(VENDAS_ITEMS.QUANTIDADE) as C4,'
      'PRODUTOS.PRECOAVISTA as C5,'
      'sum(VENDAS_ITEMS.DESCONTO) as C6,'
      'sum(VENDAS_ITEMS.SUBTOTAL) as C7'
      ''
      'from VENDAS_ITEMS'
      
        'left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = VENDAS_ITEMS.' +
        'CD_PRODUTO)'
      
        'left outer join VENDAS   on (VENDAS.NUM_DOCUMENTO = VENDAS_ITEMS' +
        '.NUM_DOCUMENTO)'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and'
      
        'VENDAS_ITEMS.DT_VENDA >= '#39'09/01/2008'#39' and VENDAS_ITEMS.DT_VENDA ' +
        '<= '#39'10/23/2008'#39
      ''
      
        'group by PRODUTOS.CD_PRODUTO, PRODUTOS.COD_BARRAS, PRODUTOS.NM_P' +
        'RODUTO, PRODUTOS.UNIDADE, PRODUTOS.PRECOAVISTA')
    FieldOptions = []
    Left = 66
    Top = 12
  end
  object DSetV2: TfrxDBDataset
    UserName = 'DSetV02'
    CloseDataSource = False
    DataSet = QueryV2
    Left = 66
    Top = 60
  end
  object QueryV3: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select'
      'VENDAS_ITEMS.DT_VENDA as C1,'
      'PRODUTOS.COD_BARRAS as C2,'
      'coalesce(VENDAS_ITEMS.DESCRICAO, PRODUTOS.NM_PRODUTO) as C3,'
      'PRODUTOS.UNIDADE as C4,'
      'VENDAS_ITEMS.QUANTIDADE as C5,'
      'VENDAS_ITEMS.PRECO as C6,'
      'VENDAS_ITEMS.DESCONTO as C7,'
      'VENDAS_ITEMS.SUBTOTAL as C8'
      ''
      'from VENDAS_ITEMS'
      
        'left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = VENDAS_ITEMS.' +
        'CD_PRODUTO)'
      
        'left outer join VENDAS   on (VENDAS.NUM_DOCUMENTO = VENDAS_ITEMS' +
        '.NUM_DOCUMENTO)'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and'
      
        'VENDAS_ITEMS.DT_VENDA >= '#39'09/01/2008'#39' and VENDAS_ITEMS.DT_VENDA ' +
        '<= '#39'10/23/2008'#39
      'and VENDAS_ITEMS.NUM_CAIXA = 1')
    FieldOptions = []
    Left = 122
    Top = 12
  end
  object DSetV3: TfrxDBDataset
    UserName = 'DSetV03'
    CloseDataSource = False
    DataSet = QueryV3
    Left = 122
    Top = 60
  end
  object QueryV4: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select distinct'
      'VENDAS.DT_VENDA as C1,'
      'VENDAS.NUM_DOCUMENTO as C2,'
      'USUARIOS.NM_USUARIO as C3,'
      'case VENDAS.CD_CLIENTE'
      '  when -1 then null'
      '  else  VENDAS.CD_CLIENTE'
      'end as C4,'
      'coalesce(CLIENTES.NM_CLIENTE, '#39'Consumidor Final'#39') as C5,'
      'VENDAS.TOTALBRUTO as C6,'
      'VENDAS.DESCONTO as C7,'
      'VENDAS.TOTALLIQUIDO as C8'
      ''
      'From'
      'VENDAS'
      
        'left outer join CLIENTES on (VENDAS.CD_CLIENTE = CLIENTES.CD_CLI' +
        'ENTE)'
      
        'left outer join USUARIOS on (VENDAS.VENDEDOR = USUARIOS.CD_USUAR' +
        'IO)'
      
        'left outer join VENDAS_ITEMS on VENDAS_ITEMS.NUM_DOCUMENTO = VEN' +
        'DAS.NUM_DOCUMENTO'
      
        'left outer join PRODUTOS     on VENDAS_ITEMS.CD_PRODUTO = PRODUT' +
        'OS.CD_PRODUTO'
      ''
      'where'
      'PED_ORC_VENDA = '#39'V'#39
      'and'
      'VENDAS.DT_VENDA between '#39'09/01/2008'#39' and '#39'10/23/2008'#39)
    FieldOptions = []
    Left = 178
    Top = 12
  end
  object DSetV4: TfrxDBDataset
    UserName = 'DSetV04'
    CloseDataSource = False
    DataSet = QueryV4
    Left = 178
    Top = 60
  end
  object QueryV5: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select distinct'
      'VENDAS.DT_VENDA as C1,'
      'VENDAS.NUM_DOCUMENTO as C2,'
      'USUARIOS.NM_USUARIO as C3,'
      'case VENDAS.CD_CLIENTE'
      '  when -1 then null'
      '  else  VENDAS.CD_CLIENTE'
      'end as C4,'
      'coalesce(CLIENTES.NM_CLIENTE, '#39'Consumidor Final'#39') as C5,'
      'VENDAS.TOTALBRUTO as C6,'
      'VENDAS.DESCONTO as C7,'
      'VENDAS.TOTALLIQUIDO as C8'
      ''
      'From'
      'VENDAS'
      
        'left outer join CLIENTES on (VENDAS.CD_CLIENTE = CLIENTES.CD_CLI' +
        'ENTE)'
      
        'left outer join USUARIOS on (VENDAS.VENDEDOR = USUARIOS.CD_USUAR' +
        'IO)'
      
        'left outer join VENDAS_ITEMS on VENDAS_ITEMS.NUM_DOCUMENTO = VEN' +
        'DAS.NUM_DOCUMENTO'
      
        'left outer join PRODUTOS on VENDAS_ITEMS.CD_PRODUTO = PRODUTOS.C' +
        'D_PRODUTO'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and   VENDAS.DT_VENDA >= '#39'09/01/2008'#39
      'and   VENDAS.DT_VENDA <= '#39'10/23/2008'#39
      'and   VENDAS.NUM_CAIXA = 1')
    FieldOptions = []
    Left = 234
    Top = 12
  end
  object DSetV5: TfrxDBDataset
    UserName = 'DSetV05'
    CloseDataSource = False
    DataSet = QueryV5
    Left = 234
    Top = 60
  end
  object QueryV6: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select distinct'
      'VENDAS.DT_VENDA as C1,'
      'VENDAS.NUM_DOCUMENTO as C2,'
      'USUARIOS.NM_USUARIO as C3,'
      'VENDAS.CD_CLIENTE as C4,'
      'CLIENTES.NM_CLIENTE as C5,'
      'VENDAS.TOTALBRUTO as C6,'
      'VENDAS.DESCONTO as C7,'
      'VENDAS.TOTALLIQUIDO as C8,'
      'VENDAS.PAG_CREDIARIO as C9'
      ''
      'From VENDAS'
      
        'left outer join CLIENTES on (VENDAS.CD_CLIENTE = CLIENTES.CD_CLI' +
        'ENTE)'
      
        'left outer join USUARIOS on (VENDAS.VENDEDOR = USUARIOS.CD_USUAR' +
        'IO)'
      
        'left outer join VENDAS_ITEMS on VENDAS_ITEMS.NUM_DOCUMENTO = VEN' +
        'DAS.NUM_DOCUMENTO'
      
        'left outer join PRODUTOS on VENDAS_ITEMS.CD_PRODUTO = PRODUTOS.C' +
        'D_PRODUTO'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and   VENDAS.PAG_CREDIARIO > 0'
      'and   VENDAS.DT_VENDA between '#39'07/01/2008'#39' and '#39'10/23/2008'#39)
    FieldOptions = []
    Left = 290
    Top = 12
  end
  object DSetV6: TfrxDBDataset
    UserName = 'DSetV06'
    CloseDataSource = False
    DataSet = QueryV6
    Left = 290
    Top = 60
  end
  object QueryV7: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'max(VENDAS_ITEMS.DT_VENDA) as C1,'
      'P.COD_BARRAS as C2,'
      'P.NM_PRODUTO as C3,'
      'P.UNIDADE as C4,'
      'cast(Sum(VENDAS_ITEMS.QUANTIDADE) as numeric(18,3)) as C5,'
      
        'cast(Sum(coalesce(VENDAS_ITEMS.PRECOCUSTO,0) * VENDAS_ITEMS.QUAN' +
        'TIDADE * DIM.VALOR) as numeric(18,2)) as C6,'
      'cast(Sum(VENDAS_ITEMS.SUBTOTAL) as numeric(18,2)) as C7,'
      
        'cast((Sum(VENDAS_ITEMS.SUBTOTAL) - Sum(coalesce(VENDAS_ITEMS.PRE' +
        'COCUSTO,0) * VENDAS_ITEMS.QUANTIDADE * DIM.VALOR)) as numeric(18' +
        ',2)) as C8,'
      
        'DZERO(((Sum(VENDAS_ITEMS.SUBTOTAL) - Sum(coalesce(VENDAS_ITEMS.P' +
        'RECOCUSTO,0) * VENDAS_ITEMS.QUANTIDADE * DIM.VALOR))) ,  ((Sum(V' +
        'ENDAS_ITEMS.SUBTOTAL - coalesce(VENDAS_ITEMS.DESCONTO,0)))/100),' +
        ' 0) as C9'
      ''
      'from'
      'VENDAS_ITEMS'
      
        'left outer join PRODUTOS P on P.CD_PRODUTO = VENDAS_ITEMS.CD_PRO' +
        'DUTO'
      
        'left outer join VENDAS on VENDAS_ITEMS.NUM_DOCUMENTO = VENDAS.NU' +
        'M_DOCUMENTO'
      
        'left outer join SP_DIMENSOES(VENDAS_ITEMS.SEQUENCIAL, VENDAS_ITE' +
        'MS.DIM_COMPRIMENTO, VENDAS_ITEMS.DIM_LARGURA, VENDAS_ITEMS.DIM_E' +
        'SPESSURA) DIM on DIM.CHAVE_SAIDA = VENDAS_ITEMS.SEQUENCIAL'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and  VENDAS_ITEMS.DT_VENDA >= '#39'08/01/2008'#39
      'and  VENDAS_ITEMS.DT_VENDA <= '#39'10/23/2008'#39
      ''
      'Group by P.COD_BARRAS, P.NM_PRODUTO, P.UNIDADE')
    FieldOptions = []
    Left = 346
    Top = 12
  end
  object DSetV7: TfrxDBDataset
    UserName = 'DSetV07'
    CloseDataSource = False
    DataSet = QueryV7
    Left = 346
    Top = 60
  end
  object QueryV8: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select'
      'P.COD_BARRAS as C1,'
      'P.NM_PRODUTO as C2,'
      'sum(VENDAS_ITEMS.PESOSAIDA) as C3,'
      'sum(VENDAS_ITEMS.PESOCHEGADA) as C4,'
      
        '(sum(VENDAS_ITEMS.PESOSAIDA) - sum(VENDAS_ITEMS.PESOCHEGADA)) as' +
        ' C5,'
      
        '(((sum(VENDAS_ITEMS.PESOSAIDA) - sum(VENDAS_ITEMS.PESOCHEGADA))*' +
        '100)/VENDAS_ITEMS.PESOSAIDA) as C6,'
      
        '((sum(VENDAS_ITEMS.PESOSAIDA) - sum(VENDAS_ITEMS.PESOCHEGADA)) *' +
        ' P.PDV_PRECOAVISTA) as C7'
      ''
      
        'from VENDAS_ITEMS left outer join PRODUTOS P on VENDAS_ITEMS.CD_' +
        'PRODUTO = P.CD_PRODUTO'
      
        'left outer join VENDAS on (VENDAS_ITEMS.NUM_DOCUMENTO = VENDAS.N' +
        'UM_DOCUMENTO)'
      
        'left outer join USUARIOS on (VENDAS.VENDEDOR = USUARIOS.CD_USUAR' +
        'IO)'
      ''
      'WHERE'
      'VENDAS_ITEMS.PESOSAIDA <> 0'
      'and   VENDAS_ITEMS.DT_VENDA >= '#39'09/01/2008'#39
      'and   VENDAS_ITEMS.DT_VENDA <= '#39'10/23/2008'#39
      ''
      
        'group by VENDAS_ITEMS.CD_PRODUTO, P.COD_BARRAS, P.NM_PRODUTO, VE' +
        'NDAS_ITEMS.PESOSAIDA, VENDAS_ITEMS.PESOCHEGADA, P.PDV_PRECOAVIST' +
        'A')
    FieldOptions = []
    Left = 401
    Top = 12
  end
  object DSetV8: TfrxDBDataset
    UserName = 'DSetV08'
    CloseDataSource = False
    DataSet = QueryV8
    Left = 402
    Top = 60
  end
  object QueryV9: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'VENDAS.DT_VENDA as C1,'
      'VENDAS.NUM_DOCUMENTO as C2,'
      'VENDAS.TOTALLIQUIDO as C3,'
      'VENDAS.PAG_DINHEIRO as C4,'
      'VENDAS.PAG_CHEQUE as C5,'
      'VENDAS.PAG_CARTAO as C6,'
      'VENDAS.PAG_TICKET as C7,'
      'VENDAS.PAG_CREDIARIO as C8,'
      'VENDAS.PAG_CREDCLI as C9'
      ''
      'from VENDAS'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and   VENDAS.DT_VENDA >= '#39'09/01/2008'#39
      'and   VENDAS.DT_VENDA <= '#39'10/23/2008'#39)
    FieldOptions = []
    Left = 10
    Top = 108
  end
  object DSetV9: TfrxDBDataset
    UserName = 'DSetV09'
    CloseDataSource = False
    DataSet = QueryV9
    Left = 10
    Top = 156
  end
  object QueryV10: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'VENDAS.Num_Documento as C1,'
      'VENDAS.dt_venda as C2,'
      
        'case VENDAS.cd_cliente when -1 then 0 else VENDAS.cd_cliente end' +
        ' as C3,'
      'coalesce(CLIENTES.nm_cliente, '#39'Consumidor Final'#39') as C4,'
      'VENDAS.TOTALLIQUIDO as C5,'
      'VENDAS.DESPESA as C6,'
      'VENDAS.VALORCUSTO as C7,'
      
        '(VENDAS.TOTALLIQUIDO - coalesce(VENDAS.DESPESA, 0) - VENDAS.VALO' +
        'RCUSTO) as C8'
      ''
      'from VENDAS'
      
        'left outer join CLIENTES on VENDAS.CD_CLIENTE = CLIENTES.CD_CLIE' +
        'NTE'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and  VENDAS.DT_VENDA >= '#39'09/01/2008'#39
      'and  VENDAS.DT_VENDA <= '#39'10/23/2008'#39
      ''
      'group by'
      'VENDAS.NUM_DOCUMENTO,'
      'VENDAS.DT_VENDA,'
      'VENDAS.CD_CLIENTE,'
      'CLIENTES.NM_CLIENTE,'
      'VENDAS.TOTALLIQUIDO,'
      'VENDAS.DESPESA,'
      'VENDAS.VALORCUSTO')
    FieldOptions = []
    Left = 66
    Top = 108
  end
  object DSetV10: TfrxDBDataset
    UserName = 'DSetV10'
    CloseDataSource = False
    DataSet = QueryV10
    Left = 66
    Top = 156
  end
  object QueryV11: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      ''
      'GRUPOS.NM_GRUPO as C1,'
      ''
      'VENDAS_ITEMS.PRECO as C2,'
      ''
      '(VENDAS_ITEMS.PRECO)-(VENDAS_ITEMS.PRECOCUSTO) as C3,'
      ''
      'VENDAS_ITEMS.PRECOCUSTO as C4'
      ''
      'from GRUPOS, VENDAS_ITEMS')
    FieldOptions = []
    Left = 122
    Top = 108
  end
  object DSetV11: TfrxDBDataset
    UserName = 'DSetV11'
    CloseDataSource = False
    DataSet = QueryV11
    Left = 122
    Top = 156
  end
  object QueryV12: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'FORNECEDORES.CD_FORNECEDOR as C1,'
      'FORNECEDORES.NM_FORNECEDOR as C2,'
      'PRODFORNEC.COD_PROD_FORNEC as C3,'
      'max(NF.DT_ENTRADA) as C4'
      ''
      'from'
      'NF'
      'inner join NF_ITEMS on NF.CD_NOTA = NF_ITEMS.CD_NOTA'
      'inner join PRODUTOS on PRODUTOS.CD_PRODUTO = NF_ITEMS.CD_PRODUTO'
      
        'left outer join FORNECEDORES on FORNECEDORES.CD_FORNECEDOR = NF.' +
        'CD_FORNECEDOR'
      
        'left outer join PRODFORNEC on ((PRODFORNEC.CD_PRODUTO = NF_ITEMS' +
        '.CD_PRODUTO) and (PRODFORNEC.CD_FORNECEDOR = NF.CD_FORNECEDOR))'
      ''
      'where'
      'PRODUTOS.CD_PRODUTO = 1'
      ''
      
        'group by FORNECEDORES.CD_FORNECEDOR, PRODFORNEC.COD_PROD_FORNEC,' +
        ' FORNECEDORES.NM_FORNECEDOR')
    FieldOptions = []
    Left = 178
    Top = 108
  end
  object DSetV12: TfrxDBDataset
    UserName = 'DSetV12'
    CloseDataSource = False
    DataSet = QueryV12
    Left = 178
    Top = 156
  end
  object QueryV13: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'PRODUTOS.COD_BARRAS as C1,'
      'PRODUTOS.NM_PRODUTO as C2,'
      'PRODUTOS.UNIDADE as C3,'
      'E.ESTOQUEATUAL as C4,'
      'M.QUANTVENDA as C5,'
      'M.MEDIADIARIA as C6,'
      'TEMPO.RESULTADO as C7'
      ''
      'from PRODUTOS'
      
        'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, 0, 0) E on 1' +
        '=1'
      
        'left outer join CALC_MEDIAVENDA(PRODUTOS.CD_PRODUTO, 100, curren' +
        't_date, PRODUTOS.CD_PRODUTO) M'
      'on PRODUTOS.CD_PRODUTO = M.CHAVE_SAIDA'
      
        'left outer join DIV_ZERO(E.ESTOQUEATUAL, M.MEDIADIARIA, PRODUTOS' +
        '.CD_PRODUTO) TEMPO'
      'on PRODUTOS.CD_PRODUTO = TEMPO.CHAVE_SAIDA'
      ''
      'WHERE'
      'PRODUTOS.INATIVO = '#39'F'#39)
    FieldOptions = []
    Left = 234
    Top = 108
  end
  object DSetV13: TfrxDBDataset
    UserName = 'DSetV13'
    CloseDataSource = False
    DataSet = QueryV13
    Left = 234
    Top = 156
  end
  object QueryV14: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'cast(VENDAS.DT_VENDA as DATE) as C1,'
      'sum(VENDAS.TOTALLIQUIDO)  as C2,'
      'sum(VENDAS.PAG_DINHEIRO)  as C3,'
      'sum(VENDAS.PAG_CHEQUEATO) as C4,'
      'sum(VENDAS.PAG_CHEQUEPRE) as C5,'
      'sum(VENDAS.PAG_CARTAO)    as C6,'
      'sum(VENDAS.PAG_TICKET)    as C7,'
      'sum(VENDAS.PAG_CREDIARIO) as C8,'
      'sum(VENDAS.PAG_CREDCLI)   as C9'
      ''
      'from VENDAS'
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and   VENDAS.DT_VENDA >= '#39'07/01/2008'#39
      'and   VENDAS.DT_VENDA <= '#39'10/01/2008'#39
      ''
      'group by 1')
    FieldOptions = []
    Left = 290
    Top = 108
  end
  object DSetV14: TfrxDBDataset
    UserName = 'DSetV14'
    CloseDataSource = False
    DataSet = QueryV14
    Left = 290
    Top = 156
  end
  object QueryV15: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select distinct'
      'VENDAS.DT_VENDA as C1,'
      'cast (VENDAS.NUM_DOCUMENTO as VARCHAR(15)) as C2,'
      'USUARIOS.NM_USUARIO as C3,'
      'case VENDAS.CD_CLIENTE'
      '  when -1 then null'
      '  else  VENDAS.CD_CLIENTE'
      'end as C4,'
      'coalesce(VENDAS.NM_CLIENTE, '#39'Consumidor Final'#39') as C5,'
      #39'VV'#39' as C6,'
      'coalesce(VENDAS.TOTALLIQUIDO - VENDAS.PAG_CREDIARIO, 0) as C7,'
      
        'coalesce((VENDAS.TOTALLIQUIDO * USUARIOS.COMISSAO) / 100, 0.00) ' +
        'as C8'
      ''
      'From VENDAS'
      
        'left outer join CLIENTES on (VENDAS.CD_CLIENTE = CLIENTES.CD_CLI' +
        'ENTE)'
      
        'left outer join USUARIOS on (VENDAS.VENDEDOR = USUARIOS.CD_USUAR' +
        'IO)'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and VENDAS.DT_VENDA between '#39'09/01/2008'#39' and '#39'10/01/2008'#39
      'and'
      
        '(VENDAS.PAG_DINHEIROCOMTROCO + VENDAS.PAG_CARTAO + VENDAS.PAG_CH' +
        'EQUE + VENDAS.PAG_TICKET > 0)')
    FieldOptions = []
    Left = 346
    Top = 108
  end
  object DSetV15: TfrxDBDataset
    UserName = 'DSetV15'
    CloseDataSource = False
    DataSet = QueryV15
    Left = 346
    Top = 156
  end
  object QueryV16: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select'
      'PRODUTOS.COD_BARRAS as C1,'
      'PRODUTOS.NM_PRODUTO as C2,'
      'sum(coalesce(VENDAS_ITEMS.QUANTIDADE, 0)) as C3,'
      'sum(coalesce(VENDAS_ITEMS.PESOSAIDA, 0))  as C4,'
      'sum(coalesce(VENDAS_ITEMS.PESOCHEGADA, 0)) as C5,'
      'sum(coalesce(VENDAS_ITEMS.SUBTOTAL, 0)) as C6,'
      'case sum(coalesce(VENDAS_ITEMS.PESOSAIDA, 0))'
      '  when 0 then 0'
      
        '         else sum(((coalesce(VENDAS_ITEMS.PESOSAIDA, 0) * coales' +
        'ce(VENDAS_ITEMS.PRECO, 0)) - coalesce(VENDAS_ITEMS.DESCONTO, 0))' +
        ') / (sum(coalesce(VENDAS_ITEMS.PESOSAIDA, 0)))'
      'end  as C7'
      ''
      'from VENDAS_ITEMS '
      
        'left outer join PRODUTOS on (PRODUTOS.CD_PRODUTO = VENDAS_ITEMS.' +
        'CD_PRODUTO)'
      
        'left outer join VENDAS on (VENDAS.NUM_DOCUMENTO = VENDAS_ITEMS.N' +
        'UM_DOCUMENTO)'
      ''
      'WHERE'
      
        'VENDAS_ITEMS.DT_VENDA >= '#39'09/01/2008'#39' and VENDAS_ITEMS.DT_VENDA ' +
        '<= '#39'10/01/2008'#39
      ''
      
        'group by PRODUTOS.CD_PRODUTO, PRODUTOS.COD_BARRAS, PRODUTOS.NM_P' +
        'RODUTO, PRODUTOS.UNIDADE, PRODUTOS.PRECOAVISTA')
    FieldOptions = []
    Left = 402
    Top = 108
  end
  object DSetV16: TfrxDBDataset
    UserName = 'DSetV16'
    CloseDataSource = False
    DataSet = QueryV16
    Left = 402
    Top = 156
  end
  object QueryV17: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'cast(V.dt_venda as DATE) as C1,'
      'sum(V.totalliquido)/Count(*) as C2'
      ''
      'from VENDAS V'
      'WHERE'
      'V.PED_ORC_VENDA = '#39'V'#39
      'and   V.dt_venda >= '#39'07/01/2008'#39
      'and   V.dt_venda <= '#39'10/01/2008'#39
      ''
      'group by'
      'cast(V.dt_venda as DATE)')
    FieldOptions = []
    Left = 10
    Top = 204
  end
  object DSetV17: TfrxDBDataset
    UserName = 'DSetV17'
    CloseDataSource = False
    DataSet = QueryV17
    Left = 10
    Top = 252
  end
  object QueryV18: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'max(VENDAS_ITEMS.DT_VENDA) as C1,'
      'P.COD_BARRAS as C2,'
      'P.NM_PRODUTO as C3,'
      'P.UNIDADE as C4,'
      'cast(Sum(VENDAS_ITEMS.QUANTIDADE) as numeric(18,3)) as C5,'
      
        'cast(Sum(coalesce(VENDAS_ITEMS.PRECOCUSTO,0) * VENDAS_ITEMS.QUAN' +
        'TIDADE * DIM.VALOR) as numeric(18,2)) as C6,'
      'cast(Sum(VENDAS_ITEMS.SUBTOTAL) as numeric(18,2)) as C7,'
      
        'cast((Sum(VENDAS_ITEMS.SUBTOTAL) - Sum(coalesce(VENDAS_ITEMS.PRE' +
        'COCUSTO,0) * VENDAS_ITEMS.QUANTIDADE * DIM.VALOR)) as numeric(18' +
        ',2)) as C8,'
      
        'DZERO(((Sum(VENDAS_ITEMS.SUBTOTAL) - Sum(coalesce(VENDAS_ITEMS.P' +
        'RECOCUSTO,0) * VENDAS_ITEMS.QUANTIDADE * DIM.VALOR))) ,  ((Sum(V' +
        'ENDAS_ITEMS.SUBTOTAL - coalesce(VENDAS_ITEMS.DESCONTO,0)))/100),' +
        ' 0) as C9'
      ''
      'from'
      'VENDAS_ITEMS'
      
        'left outer join PRODUTOS P on P.CD_PRODUTO = VENDAS_ITEMS.CD_PRO' +
        'DUTO'
      
        'left outer join VENDAS on VENDAS_ITEMS.NUM_DOCUMENTO = VENDAS.NU' +
        'M_DOCUMENTO'
      
        'left outer join SP_DIMENSOES(VENDAS_ITEMS.SEQUENCIAL, VENDAS_ITE' +
        'MS.DIM_COMPRIMENTO, VENDAS_ITEMS.DIM_LARGURA, VENDAS_ITEMS.DIM_E' +
        'SPESSURA) DIM on DIM.CHAVE_SAIDA = VENDAS_ITEMS.SEQUENCIAL'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and  VENDAS_ITEMS.DT_VENDA >= '#39'07/01/2008'#39
      'and  VENDAS_ITEMS.DT_VENDA <= '#39'10/01/2008'#39
      'and  VENDAS.CATEGORIA between 1 and 15'
      ''
      'Group by P.COD_BARRAS, P.NM_PRODUTO, P.UNIDADE')
    FieldOptions = []
    Left = 66
    Top = 204
  end
  object DSetV18: TfrxDBDataset
    UserName = 'DSetV18'
    CloseDataSource = False
    DataSet = QueryV18
    Left = 66
    Top = 252
  end
  object QueryV19: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'VENDAS.Num_Documento as C1,'
      'VENDAS.dt_venda as C2,'
      
        'case VENDAS.cd_cliente when -1 then 0 else VENDAS.cd_cliente end' +
        ' as C3,'
      'coalesce(CLIENTES.nm_cliente, '#39'Consumidor Final'#39') as C4,'
      'VENDAS.TOTALLIQUIDO as C5,'
      'VENDAS.DESPESA as C6,'
      'VENDAS.VALORCUSTO as C7,'
      
        '(VENDAS.TOTALLIQUIDO - coalesce(VENDAS.DESPESA, 0) - VENDAS.VALO' +
        'RCUSTO) as C8'
      ''
      'from VENDAS'
      
        'left outer join CLIENTES on VENDAS.CD_CLIENTE = CLIENTES.CD_CLIE' +
        'NTE'
      ''
      'WHERE'
      'PED_ORC_VENDA = '#39'V'#39
      'and  VENDAS.DT_VENDA >= '#39'06/01/2008'#39
      'and  VENDAS.DT_VENDA <= '#39'10/01/2008'#39
      'and  VENDAS.CATEGORIA = 1'
      ''
      'group by'
      'VENDAS.NUM_DOCUMENTO,'
      'VENDAS.DT_VENDA,'
      'VENDAS.CD_CLIENTE,'
      'CLIENTES.NM_CLIENTE,'
      'VENDAS.TOTALLIQUIDO,'
      'VENDAS.DESPESA,'
      'VENDAS.VALORCUSTO')
    FieldOptions = []
    Left = 122
    Top = 204
  end
  object DSetV19: TfrxDBDataset
    UserName = 'DSetV19'
    CloseDataSource = False
    DataSet = QueryV19
    Left = 117
    Top = 252
  end
  object QueryV20: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      'VENDAS.NUM_DOCUMENTO   as C1, '
      'VENDAS.DT_VENDA        as C2,  '
      'VENDAS.TOTALBRUTO      as C3, '
      'VENDAS.DESCONTO        as C4, '
      'VENDAS.TOTALLIQUIDO    as C5 '
      'from VENDAS'
      
        'left outer join CLIENTES on CLIENTES.cd_cliente = VENDAS.CD_CLIE' +
        'NTE'
      ''
      'WHERE'
      'CLIENTES.CD_PRACA between 1 and 50'
      'and VENDAS.DT_VENDA >= '#39'01/01/2008'#39
      'and VENDAS.DT_VENDA <= '#39'10/27/2008'#39)
    FieldOptions = []
    Left = 178
    Top = 204
  end
  object DSetV20: TfrxDBDataset
    UserName = 'DSetV20'
    CloseDataSource = False
    DataSet = QueryV20
    Left = 178
    Top = 252
  end
  object QueryV21: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'Select distinct'
      'VENDAS.DT_VENDA as C1,'
      'VENDAS.DT_CANCELAMENTO as C2,'
      'VENDAS.NUM_DOCUMENTO as C3,'
      'USUARIOS.NM_USUARIO as C4,'
      'case VENDAS.CD_CLIENTE'
      '  when -1 then null'
      '  else  VENDAS.CD_CLIENTE'
      'end as C5,'
      'coalesce(CLIENTES.NM_CLIENTE, '#39'Consumidor Final'#39') as C6,'
      'VENDAS.TOTALLIQUIDO as C7'
      ''
      'From'
      'VENDAS'
      
        'left outer join CLIENTES on (VENDAS.CD_CLIENTE = CLIENTES.CD_CLI' +
        'ENTE)'
      
        'left outer join USUARIOS on (VENDAS.VENDEDOR = USUARIOS.CD_USUAR' +
        'IO)'
      
        'left outer join VENDAS_ITEMS on VENDAS_ITEMS.NUM_DOCUMENTO = VEN' +
        'DAS.NUM_DOCUMENTO'
      
        'left outer join PRODUTOS     on VENDAS_ITEMS.CD_PRODUTO = PRODUT' +
        'OS.CD_PRODUTO'
      ''
      'where'
      'CANCELADO = '#39'V'#39
      'and'
      'VENDAS.DT_VENDA between '#39'01/08/2008'#39' and '#39'10/27/2008'#39)
    FieldOptions = []
    Left = 234
    Top = 204
  end
  object DSetV21: TfrxDBDataset
    UserName = 'DSetV21'
    CloseDataSource = False
    DataSet = QueryV21
    Left = 234
    Top = 252
  end
  object QueryV22: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'VENDAS.DT_VENDA        as C1,'
      'VENDAS_ITEMS.NUM_DOCUMENTO as C2,'
      'PRODUTOS.COD_BARRAS        as C3,'
      'PRODUTOS.NM_PRODUTO        as C4,'
      'VENDAS_ITEMS.PRECO         as C5,'
      'P.PRECOREAL                as C6,'
      'VENDAS_ITEMS.QUANTIDADE    as C7,'
      '(P.PRECOREAL * VENDAS_ITEMS.QUANTIDADE) as C8'
      ''
      'from VENDAS_ITEMS'
      
        'left outer join produtos on PRODUTOS.CD_PRODUTO = VENDAS_ITEMS.C' +
        'D_PRODUTO'
      
        'left outer join VENDAS on VENDAS.NUM_DOCUMENTO = VENDAS_ITEMS.NU' +
        'M_DOCUMENTO'
      
        'left outer join CLIENTES on CLIENTES.CD_CLIENTE = VENDAS.CD_CLIE' +
        'NTE'
      
        'left outer join SP_PRECOREALDOITEM(VENDAS_ITEMS.SEQUENCIAL, VEND' +
        'AS_ITEMS.PRECO, VENDAS.DESCONTO, VENDAS.ACRESCIMO, VENDAS.TOTALB' +
        'RUTO) P on P.CHAVE_SAIDA = VENDAS_ITEMS.SEQUENCIAL'
      ''
      'WHERE'
      'VENDAS.DT_VENDA >= '#39'01/08/2008'#39
      'and   VENDAS.DT_VENDA <= '#39'10/27/2008'#39
      'and CD_PRACA between 1 and 10')
    FieldOptions = []
    Left = 290
    Top = 204
  end
  object DSetV22: TfrxDBDataset
    UserName = 'DSetV22'
    CloseDataSource = False
    DataSet = QueryV22
    Left = 290
    Top = 252
  end
  object QueryCP1: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select DISTINCT'
      'VENCIMENTO    as C1,'
      'VALOR         as C2,'
      'NM_FORNECEDOR as C3,'
      ''
      'case TIPOPAGAMENTO'
      '  when '#39'C'#39' then '#39'CHEQUE'#39
      '  when '#39'T'#39' then '#39'T'#205'TULO'#39
      '  when '#39'D'#39' then '#39'DEP'#211'SITO'#39
      'end as C4,'
      'HISTORICO as C5'
      ''
      'from CONTASAPAGAR'
      
        'left outer join FORNECEDORES on FORNECEDORES.CD_FORNECEDOR = CON' +
        'TASAPAGAR.CD_FORNECEDOR'
      ''
      'WHERE'
      'CONTASAPAGAR.VENCIMENTO >= '#39'01/08/2008'#39
      'and   CONTASAPAGAR.VENCIMENTO <= '#39'10/27/2008'#39)
    FieldOptions = []
    Left = 259
    Top = 316
  end
  object DSetCP1: TfrxDBDataset
    UserName = 'DSetCP01'
    CloseDataSource = False
    DataSet = QueryCP1
    Left = 260
    Top = 364
  end
  object QueryCP2: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'DT_PAGAMENTO  as C1,'
      'VENCIMENTO    as C2,'
      'VALOR         as C3,'
      'VALORPAGO     as C4,'
      'NM_FORNECEDOR as C5,'
      ''
      'case TIPOPAGAMENTO'
      '  when '#39'C'#39' then '#39'CHEQUE'#39
      '  when '#39'T'#39' then '#39'T'#205'TULO'#39
      '  when '#39'D'#39' then '#39'DEP'#211'SITO'#39
      'end as C6,'
      'HISTORICO as C7'
      ''
      'from CONTASPAGAS'
      'left outer join FORNECEDORES'
      'on FORNECEDORES.CD_FORNECEDOR = CONTASPAGAS.CD_FORNECEDOR'
      ''
      'WHERE'
      'CONTASPAGAS.DT_PAGAMENTO >= '#39'01/08/2008'#39
      'and   CONTASPAGAS.DT_PAGAMENTO <= '#39'10/27/2008'#39)
    FieldOptions = []
    Left = 323
    Top = 316
  end
  object DSetCP2: TfrxDBDataset
    UserName = 'DSet CP02'
    CloseDataSource = False
    DataSet = QueryCP2
    Left = 323
    Top = 364
  end
  object QueryCR1: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      ''
      'select'
      'CLIENTES.CD_CLIENTE as C1,'
      'CLIENTES.NM_CLIENTE as C2,'
      'ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '#39#39') as C3,'
      'BANCOS.NM_BANCO as C4,'
      'ARECEBER.AGENCIA as C5,'
      'ARECEBER.NUM_CHEQUE as C6,'
      'ARECEBER.VENCIMENTOORIGINAL as C7,'
      'ARECEBER.VALORORIGINAL as C8'
      ''
      'from ARECEBER'
      
        'left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CL' +
        'IENTE'
      'left outer join BANCOS on ARECEBER.NUM_BANCO = BANCOS.NM_BANCO'
      ''
      'WHERE'
      'coalesce(BAIXADO, '#39'F'#39') = '#39'V'#39
      'and  ARECEBER.TIPO_PAGAMENTO = 0'
      
        'and  ARECEBER.BX_DATA >= '#39'01/08/2005'#39' and ARECEBER.BX_DATA <= '#39'1' +
        '0/27/2008'#39)
    FieldOptions = []
    Left = 394
    Top = 220
  end
  object DSetCR1: TfrxDBDataset
    UserName = 'DSetCR01'
    CloseDataSource = False
    DataSet = QueryCR1
    Left = 394
    Top = 268
  end
  object QueryCR2: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      ''
      'CLIENTES.CD_CLIENTE as C1,'
      'CLIENTES.NM_CLIENTE as C2,'
      'ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '#39#39') as C3,'
      'BANCOS.NM_BANCO as C4,'
      'ARECEBER.AGENCIA as C5,'
      'ARECEBER.NUM_CHEQUE as C6,'
      'ARECEBER.VENCIMENTOATUAL as C7,'
      'ARECEBER.VALORATUAL as C8,'
      'ARECEBER.OBS as C9'
      ''
      'from'
      'ARECEBER'
      
        'left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CL' +
        'IENTE'
      'left outer join BANCOS on ARECEBER.NUM_BANCO = BANCOS.NM_BANCO'
      ''
      'WHERE'
      'ARECEBER.TIPO_PAGAMENTO = 0'
      'and   ARECEBER.VENCIMENTOATUAL >= '#39'06/01/2008'#39
      'and   ARECEBER.VENCIMENTOATUAL <= '#39'10/27/2008'#39
      'and coalesce(BAIXADO, '#39'F'#39') <> '#39'V'#39)
    FieldOptions = []
    Left = 450
    Top = 220
  end
  object DSetCR2: TfrxDBDataset
    UserName = 'DSetCR02'
    CloseDataSource = False
    DataSet = QueryCR2
    Left = 450
    Top = 268
  end
  object QueryCR3: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'ARECEBER.BX_DATA as C1,'
      'ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '#39#39') as C2,'
      'CLIENTES.CD_CLIENTE as C3,'
      'CLIENTES.NM_CLIENTE as C4,'
      'ARECEBER.VENCIMENTOORIGINAL as C5,'
      'ARECEBER.BX_ATRASO as C6,'
      'ARECEBER.BX_JUROS as C7,'
      'ARECEBER.VALORORIGINAL as C8'
      ''
      'from ARECEBER, CLIENTES'
      ''
      'where'
      'coalesce(BAIXADO, '#39'F'#39') = '#39'V'#39
      
        'and ARECEBER.BX_DATA >= '#39'07/01/2008'#39' and ARECEBER.BX_DATA <= '#39'10' +
        '/20/2008'#39
      'and (ARECEBER.TIPO_PAGAMENTO = 3)')
    FieldOptions = []
    Left = 506
    Top = 220
  end
  object DSetCR3: TfrxDBDataset
    UserName = 'DSetCR03'
    CloseDataSource = False
    DataSet = QueryCR3
    Left = 506
    Top = 268
  end
  object QueryCR4: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'ARECEBER.DT_EMISSAO as C1,'
      'ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '#39#39') as C2,'
      'CLIENTES.CD_CLIENTE as C3,'
      'CLIENTES.NM_CLIENTE as C4,'
      'ARECEBER.VENCIMENTOATUAL as C5,'
      'ARECEBER.VALORATUAL as C6'
      ''
      'from ARECEBER, CLIENTES'
      ''
      ''
      'WHERE'
      'ARECEBER.VENCIMENTOATUAL >= '#39'07/01/2008'#39
      'and   ARECEBER.VENCIMENTOATUAL <= '#39'10/27/2008'#39
      'and (ARECEBER.TIPO_PAGAMENTO = 3)'
      'and coalesce(ARECEBER.BAIXADO, '#39'F'#39') <> '#39'V'#39)
    FieldOptions = []
    Left = 562
    Top = 220
  end
  object DSetCR4: TfrxDBDataset
    UserName = 'DSetCR04'
    CloseDataSource = False
    DataSet = QueryCR4
    Left = 562
    Top = 268
  end
  object QueryCR5: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'CLIENTES.CD_CLIENTE as C1,'
      'CLIENTES.NM_CLIENTE as C2,'
      'ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '#39#39') as C3,'
      'BANCOS.NM_BANCO as C4,'
      'ARECEBER.NUM_BOLETO as C5,'
      'ARECEBER.BX_DATA as C6,'
      'ARECEBER.VALORORIGINAL as C7'
      ''
      'from'
      'ARECEBER'
      
        'left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CL' +
        'IENTE'
      'left outer join BANCOS on ARECEBER.NUM_BANCO = BANCOS.NM_BANCO'
      ''
      'where'
      'coalesce(BAIXADO, '#39'F'#39') = '#39'V'#39
      'and ARECEBER.TIPO_PAGAMENTO = 2'
      
        'and ARECEBER.BX_DATA >= '#39'07/01/2007'#39' and ARECEBER.BX_DATA <= '#39'10' +
        '/27/2008'#39)
    FieldOptions = []
    Left = 618
    Top = 220
  end
  object DSetCR5: TfrxDBDataset
    UserName = 'DSetCR05'
    CloseDataSource = False
    DataSet = QueryCR5
    Left = 618
    Top = 268
  end
  object QueryCR6: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'ARECEBER.DT_EMISSAO      as C1,'
      'ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '#39#39') as C2,'
      'ARECEBER.NUM_BOLETO      as C3,'
      'CLIENTES.CD_CLIENTE      as C4,'
      'CLIENTES.NM_CLIENTE      as C5,'
      'BANCOS.NM_BANCO          as C6,'
      'ARECEBER.AGENCIA         as C7,'
      'ARECEBER.NUM_CONTA       as C8,'
      'ARECEBER.VENCIMENTOATUAL as C9,'
      'ARECEBER.VALORATUAL      as C10'
      ''
      'from ARECEBER'
      
        'left outer join CLIENTES on ARECEBER.CD_CLIENTE = CLIENTES.CD_CL' +
        'IENTE'
      'left outer join BANCOS on ARECEBER.NUM_BANCO = BANCOS.NUM_BANCO'
      ''
      'WHERE'
      'ARECEBER.TIPO_PAGAMENTO = 2'
      'and   ARECEBER.DT_EMISSAO >= '#39'05/01/2007'#39
      'and   ARECEBER.DT_EMISSAO <= '#39'10/27/2008'#39
      'and coalesce(BAIXADO, '#39'F'#39') <> '#39'V'#39)
    FieldOptions = []
    Left = 394
    Top = 316
  end
  object DSetCR6: TfrxDBDataset
    UserName = 'DSetCR06'
    CloseDataSource = False
    DataSet = QueryCR6
    Left = 394
    Top = 364
  end
  object QueryCR7: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'PGTOSDOCLIENTE.DATA as C1,'
      'CLIENTES.CD_CLIENTE as C2,'
      'CLIENTES.NM_CLIENTE as C3,'
      'PGTOSDOCLIENTE.VALOR as C4,'
      'PGTOSDOCLIENTE.JUROSPAGOS as C5,'
      'PGTOSDOCLIENTE.REFCONTAS as C6,'
      'PGTOSDOCLIENTE.PAG_CREDIARIO as C7,'
      'PGTOSDOCLIENTE.PAG_TICKET as C8,'
      'PGTOSDOCLIENTE.PAG_CARTAO as C9'
      ''
      'from PGTOSDOCLIENTE'
      
        'left outer join CLIENTES on PGTOSDOCLIENTE.CD_CLIENTE = CLIENTES' +
        '.CD_CLIENTE'
      ''
      'where'
      'PGTOSDOCLIENTE.DATA >= '#39'07/01/2008'#39
      'and PGTOSDOCLIENTE.DATA <= '#39'10/27/2008'#39)
    FieldOptions = []
    Left = 450
    Top = 316
  end
  object DSetCR7: TfrxDBDataset
    UserName = 'DSetCR07'
    CloseDataSource = False
    DataSet = QueryCR7
    Left = 450
    Top = 364
  end
  object QueryCR8: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'ARECEBER.NUM_DOC_CONTA || coalesce(ARECEBER.PARCELA, '#39#39') as C1,'
      'CLIENTES.apelido as C2,'
      'ARECEBER.DT_EMISSAO as C3,'
      'ARECEBER.VENCIMENTOATUAL as C4,'
      'ARECEBER.VALORATUAL as C5,'
      'PRODUTOS.cd_produto as C6,'
      'PRODUTOS.margem2 as C7,'
      'Coalesce(ARECEBER.ABATIDO, 0) as C8,'
      
        '(ARECEBER.VALORATUAL + PRODUTOS.margem2 - Coalesce(ARECEBER.ABAT' +
        'IDO, 0)) as C9'
      ''
      'from ARECEBER, PRODUTOS, CLIENTES'
      ''
      
        'where produtos.cd_produto < 50 and areceber.sequencial < 50 and ' +
        'clientes.cd_cliente < 50')
    FieldOptions = []
    Left = 506
    Top = 316
  end
  object DSetCR8: TfrxDBDataset
    UserName = 'DSetCR08'
    CloseDataSource = False
    DataSet = QueryCR8
    Left = 506
    Top = 364
  end
  object QueryCR9: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'ARECEBER.DT_EMISSAO       as C1,'
      'ARECEBER.NUM_DOC_CONTA as C2,'
      'CLIENTES.apelido          as C3,'
      'CLIENTES.CD_CLIENTE       as C4,'
      'CLIENTES.NM_CLIENTE       as C5,'
      'ARECEBER.VENCIMENTOATUAL  as C6,'
      'ARECEBER.VALORATUAL       as C7,'
      'PRODUTOS.cd_produto       as C8,'
      'PRODUTOS.margem2          as C9,'
      'ARECEBER.ABATIDO          as C10,'
      
        '(coalesce(ARECEBER.VALORATUAL, 0) - coalesce(ARECEBER.ABATIDO, 0' +
        ')) as C11'
      ''
      'from ARECEBER, CLIENTES, PRODUTOS'
      ''
      'where'
      'ARECEBER.DT_EMISSAO >= '#39'01/01/2008'#39
      'and'
      'ARECEBER.DT_EMISSAO <= current_date'
      'and coalesce(BAIXADO, '#39'F'#39') <> '#39'V'#39)
    FieldOptions = []
    Left = 562
    Top = 316
  end
  object DSetCR9: TfrxDBDataset
    UserName = 'DSetCR09'
    CloseDataSource = False
    DataSet = QueryCR9
    Left = 562
    Top = 364
  end
  object QueryCR10: TIBOQuery
    Params = <
      item
        DataType = ftUnknown
        Name = 'de'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ate'
        ParamType = ptInput
      end>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'ARECEBER.DT_EMISSAO as C1,'
      '('#39'BOLETO     '#39') as C2,'
      'ARECEBER.CD_CLIENTE as C3,'
      'CLIENTES.NM_CLIENTE as C4,'
      'cast (ARECEBER.NUM_BOLETO as VARCHAR(10)) as C5,'
      'ARECEBER.VENCIMENTOATUAL as C6,'
      'ARECEBER.VALORATUAL as C7'
      'from ARECEBER'
      
        'left outer join CLIENTES on ARECEBER.cd_cliente = CLIENTES.cd_cl' +
        'iente'
      'WHERE'
      'ARECEBER.TIPO_PAGAMENTO = 2 /* Boleto */'
      'and   ARECEBER.VENCIMENTOATUAL >= :de'
      'and   ARECEBER.VENCIMENTOATUAL <= :ate'
      'and coalesce(ARECEBER.BAIXADO, '#39'F'#39') <> '#39'V'#39
      ''
      'union'
      ''
      'select'
      'ARECEBER.DT_EMISSAO as C1,'
      '('#39'CREDI'#193'RIO  '#39') as C2,'
      'ARECEBER.CD_CLIENTE as C3,'
      'CLIENTES.NM_CLIENTE as C4,'
      'cast (ARECEBER.NUM_DOC_CONTA as VARCHAR(10)) as C5,'
      'ARECEBER.VENCIMENTOATUAL as C6,'
      'ARECEBER.VALORATUAL as C7'
      'from ARECEBER'
      
        'left outer join CLIENTES on ARECEBER.cd_cliente = CLIENTES.cd_cl' +
        'iente'
      'WHERE'
      'ARECEBER.TIPO_PAGAMENTO = 3 /* Crediario */'
      'and   ARECEBER.VENCIMENTOATUAL >= :de'
      'and   ARECEBER.VENCIMENTOATUAL <= :ate'
      'and coalesce(ARECEBER.BAIXADO, '#39'F'#39') <> '#39'V'#39
      ''
      'union'
      ''
      'select'
      'ARECEBER.DT_EMISSAO as C1,'
      '('#39'CHQ.DEVOLV.'#39') as C2,'
      'ARECEBER.CD_CLIENTE as C3,'
      'CLIENTES.NM_CLIENTE as C4,'
      'cast (ARECEBER.NUM_CHEQUE as VARCHAR(10)) as C5,'
      'ARECEBER.VENCIMENTOATUAL as C6,'
      'ARECEBER.VALORATUAL as C7'
      'from ARECEBER'
      
        'left outer join CLIENTES on ARECEBER.cd_cliente = CLIENTES.cd_cl' +
        'iente'
      'WHERE'
      'ARECEBER.TIPO_PAGAMENTO = 0  /* Cheque */'
      'and   ARECEBER.CH_STATUS = 4  /* Devolvido */'
      'and   ARECEBER.VENCIMENTOATUAL >= :de'
      'and   ARECEBER.VENCIMENTOATUAL <= :ate'
      'and coalesce(ARECEBER.BAIXADO, '#39'F'#39') <> '#39'V'#39)
    FieldOptions = []
    Left = 618
    Top = 316
  end
  object DSetCR10: TfrxDBDataset
    UserName = 'DSetV05'
    CloseDataSource = False
    DataSet = QueryCR10
    Left = 618
    Top = 364
  end
  object DSetFechaCaixa: TfrxDBDataset
    UserName = 'DSetFechaCaixa'
    CloseDataSource = False
    DataSet = QueryFechamento
    Left = 512
    Top = 64
  end
  object QueryFechamento: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    IB_Connection = IBODatabase1
    RecordCountAccurate = True
    SQL.Strings = (
      
        'Select login, fundotroco, dinheiro, cheques, tickets, credcli, c' +
        'rediarios,'
      
        '       cartoes, totalvendas, sangria, suprimento, descontos, dev' +
        'olucoes, '
      
        '       chequepre, contasreceb, qtde_items_cancelados, qtde_venda' +
        's_abertas_canceladas,'
      
        '       qtde_vendas_fechadas_canceladas, dt_abertura, dt_fechamen' +
        'to, qtde_items'
      ''
      'from CAIXAfechamentos'
      ''
      'where dt_fechamento = '#39'6/8/2007 20:43:12'#39)
    FieldOptions = []
    Left = 512
    Top = 16
  end
end
