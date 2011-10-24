object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 65532
  Top = 65532
  Height = 746
  Width = 1032
  object QueryP1: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'PRODUTOS.COD_BARRAS as C1,'
      'NOMEPROD.DESCRICAO as C2,'
      'PRODUTOS.UNIDADE as C3,'
      'E.ESTOQUEATUAL as C4,'
      'E.ESTOQUEATUAL * PRODUTOS.PRECOCUSTO as C5,'
      'E.ESTOQUEATUAL * PRODUTOS.PDV_PRECOAVISTA as C6'
      ''
      'From PRODUTOS'
      
        'left outer join GRADES on PRODUTOS.CD_PRODUTO = GRADES.CD_PRODUT' +
        'O'
      
        'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, GRADES.CD_GR' +
        'ADE, 0) E on 1=1'
      
        'left outer join SP_NOME_PRODUTO(PRODUTOS.CD_PRODUTO, GRADES.CD_G' +
        'RADE, PRODUTOS.NM_PRODUTO, '#39#39', PRODUTOS.DESCRICAO_ABREV, '#39'F'#39') NO' +
        'MEPROD on 1=1'
      ''
      'Where'
      'PRODUTOS.INATIVO = '#39'F'#39
      'and PRODUTOS.CD_PRODUTO > 0')
    FieldOptions = []
    Left = 25
    Top = 12
  end
  object DSetP1: TfrxDBDataset
    UserName = 'DSetP01'
    CloseDataSource = False
    DataSet = QueryP1
    Left = 25
    Top = 60
  end
  object QueryP2: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'PRODUTOS.COD_BARRAS as C1,'
      'NOMEPROD.DESCRICAO as C2,'
      'PRODUTOS.UNIDADE as C3,'
      'PRODUTOS.ESTOQUEMINIMO as C4,'
      'E.ESTOQUEATUAL as C5'
      ''
      'From PRODUTOS'
      
        'left outer join GRADES on PRODUTOS.CD_PRODUTO = GRADES.CD_PRODUT' +
        'O'
      
        'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, GRADES.CD_GR' +
        'ADE, 0) E on 1=1'
      
        'left outer join SP_NOME_PRODUTO(PRODUTOS.CD_PRODUTO, GRADES.CD_G' +
        'RADE, PRODUTOS.NM_PRODUTO, '#39#39', PRODUTOS.DESCRICAO_ABREV, '#39'F'#39') NO' +
        'MEPROD on 1=1'
      ''
      'Where'
      'E.ESTOQUEATUAL <= PRODUTOS.ESTOQUEMINIMO'
      'and PRODUTOS.INATIVO = '#39'F'#39
      'and PRODUTOS.CD_PRODUTO > 0')
    FieldOptions = []
    Left = 81
    Top = 12
  end
  object DSetP2: TfrxDBDataset
    UserName = 'DSetP02'
    CloseDataSource = False
    DataSet = QueryP2
    Left = 81
    Top = 60
  end
  object QueryP3: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'PRODUTOS.COD_BARRAS as C1,'
      'NOMEPROD.DESCRICAO as C2,'
      'PRODUTOS.UNIDADE as C3,'
      'E.ESTOQUEATUAL as C4'
      ''
      'From PRODUTOS'
      
        'left outer join GRADES on PRODUTOS.CD_PRODUTO = GRADES.CD_PRODUT' +
        'O'
      
        'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, GRADES.CD_GR' +
        'ADE, 0) E on 1=1'
      
        'left outer join SP_NOME_PRODUTO(PRODUTOS.CD_PRODUTO, GRADES.CD_G' +
        'RADE, PRODUTOS.NM_PRODUTO, '#39#39', PRODUTOS.DESCRICAO_ABREV, '#39'F'#39') NO' +
        'MEPROD on 1=1'
      ''
      'Where'
      'E.ESTOQUEATUAL < 0'
      'and PRODUTOS.INATIVO = '#39'F'#39
      'and PRODUTOS.CD_PRODUTO > 0')
    FieldOptions = []
    Left = 137
    Top = 12
  end
  object DSetP3: TfrxDBDataset
    UserName = 'DSetP03'
    CloseDataSource = False
    DataSet = QueryP3
    Left = 137
    Top = 60
  end
  object QueryP4: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'PRODUTOS.COD_BARRAS as C1,'
      'NOMEPROD.DESCRICAO as C2,'
      'PRODUTOS.UNIDADE as C3,'
      'E.ESTOQUEATUAL as C4'
      ''
      'From PRODUTOS'
      
        'left outer join GRADES on PRODUTOS.CD_PRODUTO = GRADES.CD_PRODUT' +
        'O'
      
        'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, GRADES.CD_GR' +
        'ADE, 0) E on 1=1'
      
        'left outer join SP_NOME_PRODUTO(PRODUTOS.CD_PRODUTO, GRADES.CD_G' +
        'RADE, PRODUTOS.NM_PRODUTO, '#39#39', PRODUTOS.DESCRICAO_ABREV, '#39'F'#39') NO' +
        'MEPROD on 1=1'
      ''
      'Where'
      'E.ESTOQUEATUAL = 0'
      'and PRODUTOS.INATIVO = '#39'F'#39
      'and PRODUTOS.CD_PRODUTO > 0')
    FieldOptions = []
    Left = 193
    Top = 12
  end
  object DSetP4: TfrxDBDataset
    UserName = 'DSetP04'
    CloseDataSource = False
    DataSet = QueryP4
    Left = 193
    Top = 60
  end
  object QueryP5: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select CD_PRODUTO as C1,'
      '       NM_PRODUTO as C2,'
      '       UNIDADE as C3,'
      '       PRECOAVISTA as C4'
      'from PRODUTOS')
    FieldOptions = []
    Left = 249
    Top = 12
  end
  object DSetP5: TfrxDBDataset
    UserName = 'DSetP05'
    CloseDataSource = False
    DataSet = QueryP5
    Left = 249
    Top = 60
  end
  object QueryP6: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select CD_PRODUTO as C1,'
      '       NM_PRODUTO as C2,'
      '       UNIDADE as C3,'
      '       PRECOCUSTO as C4,'
      '       PRECOAVISTA as C5'
      'from   PRODUTOS')
    FieldOptions = []
    Left = 305
    Top = 12
  end
  object DSetP6: TfrxDBDataset
    UserName = 'DSetP06'
    CloseDataSource = False
    DataSet = QueryP6
    Left = 305
    Top = 60
  end
  object QueryP7: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select '
      'INVENTARIOS_ITEMS.DATA as C1,'
      'PRODUTOS.cod_barras as C2,'
      'PRODUTOS.nm_produto as C3,'
      'INVENTARIOS_ITEMS.estoqueatual as C4,'
      'INVENTARIOS_ITEMS.estoqueNovo as C5,'
      
        'INVENTARIOS_ITEMS.estoqueatual - INVENTARIOS_ITEMS.estoquenovo a' +
        's C6,'
      'PRODUTOS.precoavista as C7,'
      
        '((INVENTARIOS_ITEMS.estoqueatual - INVENTARIOS_ITEMS.estoquenovo' +
        ') * PRODUTOS.precoavista) as C8'
      ''
      'from PRODUTOS inner join INVENTARIOS_ITEMS'
      'on PRODUTOS.CD_PRODUTO = INVENTARIOS_ITEMS.cd_produto'
      ''
      'where'
      
        'INVENTARIOS_ITEMS.DATA >= '#39'01/01/2007'#39' and INVENTARIOS_ITEMS.DAT' +
        'A <= '#39'12/12/2008'#39
      'and PRODUTOS.INATIVO = '#39'F'#39)
    FieldOptions = []
    Left = 361
    Top = 12
  end
  object DSetP7: TfrxDBDataset
    UserName = 'DSetP07'
    CloseDataSource = False
    DataSet = QueryP7
    Left = 361
    Top = 60
  end
  object QueryP8: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'PRODUTOS.COD_BARRAS as C1, '
      'PRODUTOS.NM_PRODUTO as C2, '
      'PRODUTOS.UNIDADE as C3, '
      'PRODUTOS.QUANTTROCA as C4, '
      '(PRODUTOS.PRECOCUSTO * PRODUTOS.QUANTTROCA) as C5'
      ''
      'From PRODUTOS')
    FieldOptions = []
    Left = 417
    Top = 12
  end
  object DSetP8: TfrxDBDataset
    UserName = 'DSetP08'
    CloseDataSource = False
    DataSet = QueryP8
    Left = 417
    Top = 60
  end
  object QueryP9: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select CD_PRODUTO as C1,'
      '       NM_PRODUTO as C2,'
      '       UNIDADE as C3,'
      '       PRECOCUSTO as C4,'
      '       PRECOAVISTA as C5'
      'from   PRODUTOS')
    FieldOptions = []
    Left = 25
    Top = 108
  end
  object DSet9: TfrxDBDataset
    UserName = 'DSetP09'
    CloseDataSource = False
    DataSet = QueryP9
    Left = 25
    Top = 156
  end
  object QueryP10: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select CD_PRODUTO as C1,'
      '       NM_PRODUTO as C2,'
      '       UNIDADE as C3,'
      '       DT_ULTIMOREAJUSTE as C4,'
      '       PRECOAVISTA as C5'
      'from   PRODUTOS')
    FieldOptions = []
    Left = 81
    Top = 108
  end
  object DSetP10: TfrxDBDataset
    UserName = 'DSetP10'
    CloseDataSource = False
    DataSet = QueryP10
    Left = 81
    Top = 156
  end
  object QueryP11: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'PRODUTOS.COD_BARRAS as C1,'
      'PRODFORNEC.COD_PROD_FORNEC as C2,'
      'PRODUTOS.NM_PRODUTO as C3,'
      'min(NF.DT_ENTRADA) as C4,'
      'max(NF.DT_ENTRADA) as C5,'
      'REFPRODUTOS.DT_ULTIMAVENDA as C6,'
      'E.ESTOQUEATUAL as C7,'
      'MV.MEDIADIARIA as C8,'
      'PRODUTOS.QUANTTROCA as C9'
      ''
      'from'
      'NF_ITEMS'
      'inner join NF on NF.CD_NOTA = NF_ITEMS.CD_NOTA'
      
        'left outer join PRODUTOS on PRODUTOS.CD_PRODUTO = NF_ITEMS.CD_PR' +
        'ODUTO'
      
        'left outer join REFPRODUTOS on REFPRODUTOS.CD_PRODUTO = NF_ITEMS' +
        '.CD_PRODUTO'
      
        'left outer join PRODFORNEC on ((PRODFORNEC.CD_PRODUTO = NF_ITEMS' +
        '.CD_PRODUTO) and (PRODFORNEC.CD_FORNECEDOR = NF.CD_FORNECEDOR))'
      
        'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, 0, 0) E on 1' +
        '=1'
      
        'left outer join CALC_MEDIAVENDA(NF_ITEMS.CD_PRODUTO, 100, curren' +
        't_timestamp, NF_ITEMS.CD_ITEM) MV on MV.CHAVE_SAIDA = NF_ITEMS.C' +
        'D_ITEM'
      ''
      'where'
      'NF.CD_FORNECEDOR = 176'
      'and PRODUTOS.INATIVO = '#39'F'#39
      ''
      
        'group by NF_ITEMS.CD_PRODUTO, PRODFORNEC.COD_PROD_FORNEC, PRODUT' +
        'OS.COD_BARRAS, PRODUTOS.NM_PRODUTO, REFPRODUTOS.DT_ULTIMAVENDA, ' +
        'E.ESTOQUEATUAL, MV.MEDIADIARIA, PRODUTOS.QUANTTROCA')
    FieldOptions = []
    Left = 137
    Top = 108
  end
  object DSetP11: TfrxDBDataset
    UserName = 'DSetP11'
    CloseDataSource = False
    DataSet = QueryP11
    Left = 137
    Top = 156
  end
  object QueryP12: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
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
    Left = 193
    Top = 108
  end
  object DSetP12: TfrxDBDataset
    UserName = 'DSetP12'
    CloseDataSource = False
    DataSet = QueryP12
    Left = 193
    Top = 156
  end
  object QueryP13: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
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
    Left = 249
    Top = 108
  end
  object DSetP13: TfrxDBDataset
    UserName = 'DSetP13'
    CloseDataSource = False
    DataSet = QueryP13
    Left = 249
    Top = 156
  end
  object QueryP15: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select CD_PRODUTO as C1,'
      '       NM_PRODUTO as C2,'
      '       UNIDADE as C3,'
      '       PRECOCUSTO as C4,'
      '       PRECOAVISTA as C5'
      'from   PRODUTOS')
    FieldOptions = []
    Left = 361
    Top = 108
  end
  object DSetP15: TfrxDBDataset
    UserName = 'DSetP15'
    CloseDataSource = False
    DataSet = QueryP15
    Left = 361
    Top = 156
  end
  object QueryP16: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select CD_PRODUTO as C1,'
      '       NM_PRODUTO as C2,'
      '       UNIDADE as C3,'
      '       PRECOCUSTO as C4,'
      '       PRECOAVISTA as C5'
      'from   PRODUTOS')
    FieldOptions = []
    Left = 417
    Top = 108
  end
  object DSetP16: TfrxDBDataset
    UserName = 'DSetP16'
    CloseDataSource = False
    DataSet = QueryP16
    Left = 417
    Top = 156
  end
  object QueryP17: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'PRODUTOS.COD_BARRAS as C1, '
      'PRODUTOS.NM_PRODUTO as C2, '
      'PRODUTOS.UNIDADE as C3, '
      'null as C4'
      ''
      'From PRODUTOS'
      ''
      'Where'
      'PRODUTOS.INATIVO = '#39'F'#39)
    FieldOptions = []
    Left = 25
    Top = 204
  end
  object QueryP18: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select * from produtos')
    FieldOptions = []
    Left = 81
    Top = 204
  end
  object QueryP19: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select PRODUTOS.CD_PRODUTO as C1,'
      '       PRODUTOS.NM_PRODUTO as C2,'
      '       PRODUTOS.UNIDADE as C3,'
      '       PRODUTOS.PRECOCUSTO as C4,'
      '       PRODUTOS.PRECOAVISTA as C5,'
      '       ESTOQUE.estoqueatual as C6'
      ''
      'from   PRODUTOS, estoque'
      ''
      'where PRODUTOS.cd_produto = ESTOQUE.CD_PRODUTO')
    FieldOptions = []
    Left = 137
    Top = 204
  end
  object QueryP21: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'PRODUTOS.COD_BARRAS as C1,'
      'PRODUTOS.NM_PRODUTO as C2,'
      'PRODUTOS.UNIDADE as C3,'
      'PRODUTOS.PRECOCUSTO as C4,'
      'E.ESTOQUEATUAL as C5,'
      'REFPRODUTOS.DT_ULTIMACOMPRA  as C6,'
      'REFPRODUTOS.DT_ULTIMAVENDA   as C7'
      ''
      'from PRODFORNEC'
      
        'left outer join PRODUTOS on PRODUTOS.CD_PRODUTO = PRODFORNEC.CD_' +
        'PRODUTO'
      
        'left outer join REFPRODUTOS on REFPRODUTOS.CD_PRODUTO = PRODFORN' +
        'EC.CD_PRODUTO'
      
        'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, 0, 0) E on 1' +
        '=1'
      ''
      'Where'
      'PRODFORNEC.CD_FORNECEDOR between 0 and 100'
      'and PRODUTOS.INATIVO = '#39'F'#39
      'and PRODUTOS.CD_PRODUTO > 0')
    FieldOptions = []
    Left = 249
    Top = 204
  end
  object QueryP20: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'PRODUTOS.COD_BARRAS as C1,'
      'PRODUTOS.NM_PRODUTO as C2,'
      'PRODUTOS.UNIDADE as C3,'
      'E.ESTOQUEATUAL as C4,'
      'PRODUTOS.PRECOCUSTO as C5'
      ''
      'From PRODUTOS'
      
        'left outer join SP_PEGAESTOQUE(PRODUTOS.CD_PRODUTO, 0, 0) E on 1' +
        '=1'
      ''
      'Where'
      'PRODUTOS.INATIVO = '#39'F'#39
      'and PRODUTOS.CD_PRODUTO > 0')
    FieldOptions = []
    Left = 193
    Top = 204
  end
  object DSetP20: TfrxDBDataset
    UserName = 'DSetP20'
    CloseDataSource = False
    DataSet = QueryP20
    Left = 193
    Top = 252
  end
  object DSetP19: TfrxDBDataset
    UserName = 'DSetP19'
    CloseDataSource = False
    DataSet = QueryP19
    Left = 137
    Top = 252
  end
  object DSetP18: TfrxDBDataset
    UserName = 'DSetP18'
    CloseDataSource = False
    DataSet = QueryP18
    Left = 81
    Top = 252
  end
  object DSetP17: TfrxDBDataset
    UserName = 'DSetP17'
    CloseDataSource = False
    DataSet = QueryP17
    Left = 25
    Top = 252
  end
  object DSetP21: TfrxDBDataset
    UserName = 'DSetP21'
    CloseDataSource = False
    DataSet = QueryP21
    Left = 249
    Top = 252
  end
  object QueryC5: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'CLIENTES.CD_CLIENTE as C1, '
      'CLIENTES.NM_CLIENTE as C2, '
      'CLIENTES.APELIDO as C3, '
      'CLIENTES.TELEFONE as C4, '
      'CLIENTES.ENDERECO as C5'
      'From'
      'CLIENTES, '
      'REFCLIENTES'
      'Where'
      'CLIENTES.CD_CLIENTE = REFCLIENTES.CD_CLIENTE and '
      'REFCLIENTES.BLOQUEADO = '#39'F'#39)
    FieldOptions = []
    Left = 729
    Top = 10
  end
  object QueryC6: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select  CD_CLIENTE as C1,'
      '        NM_CLIENTE as C2,'
      '        APELIDO as C3,'
      '        TELEFONE as C4,'
      '        ENDERECO as C5'
      'from CLIENTES')
    FieldOptions = []
    Left = 785
    Top = 10
  end
  object QueryC8: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'SELECT'
      'PRODUTOS.COD_BARRAS AS C1,'
      'PRODUTOS.NM_PRODUTO AS C2,'
      'SUM(VENDAS_ITEMS.quantidade) AS C3,'
      'MAX(VENDAS_ITEMS.dt_venda) AS C4'
      ''
      'FROM VENDAS_ITEMS'
      
        'LEFT OUTER JOIN PRODUTOS ON (VENDAS_ITEMS.CD_PRODUTO = PRODUTOS.' +
        'CD_PRODUTO)'
      ''
      'WHERE'
      'PRODUTOS.CD_PRODUTO IS NOT NULL AND'
      'VENDAS_ITEMS.CD_CLIENTE between 1 and 50 AND'
      'VENDAS_ITEMS.DT_VENDA >= '#39'01/01/2007'#39' AND'
      'VENDAS_ITEMS.DT_VENDA <= '#39'12/12/2008'#39
      ''
      
        'GROUP BY VENDAS_ITEMS.Cd_Produto, PRODUTOS.COD_BARRAS, PRODUTOS.' +
        'nm_Produto')
    FieldOptions = []
    Left = 897
    Top = 10
  end
  object DSetC8: TfrxDBDataset
    UserName = 'DSetC08'
    CloseDataSource = False
    DataSet = QueryC8
    Left = 897
    Top = 58
  end
  object DSetC7: TfrxDBDataset
    UserName = 'DSetC07'
    CloseDataSource = False
    DataSet = QueryC7
    Left = 841
    Top = 58
  end
  object QueryC7: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'CLIENTES.CD_CLIENTE as C1,'
      'CLIENTES.NM_CLIENTE as C2,'
      'CLIENTES.APELIDO as C3,'
      'A.ATRASO as C4,'
      'S.SALDO as C5'
      
        'From CLIENTES Left Outer join SP_SaldoDaDivida(CLIENTES.cd_clien' +
        'te,'#39'01/01/2007'#39', current_date, CLIENTES.TAXAATRASO) S'
      'on (CLIENTES.cd_cliente = S.CHAVE_SAIDA),'
      
        'SP_MaiorAtraso(CLIENTES.cd_cliente, '#39'01/01/2007'#39', current_date) ' +
        'A'
      ''
      'WHERE'
      'S.Saldo > 50')
    FieldOptions = []
    Left = 841
    Top = 10
  end
  object DSetC6: TfrxDBDataset
    UserName = 'DSetC06'
    CloseDataSource = False
    DataSet = QueryC6
    Left = 785
    Top = 58
  end
  object DSetC5: TfrxDBDataset
    UserName = 'DSetC05'
    CloseDataSource = False
    DataSet = QueryC5
    Left = 729
    Top = 58
  end
  object QueryC9: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'coalesce(CLIENTES.CD_CLIENTE, 0) as C1,'
      'coalesce(CLIENTES.NM_CLIENTE, '#39'CONSUMIDOR FINAL'#39') as C2,'
      'sum(VENDAS_ITEMS.QUANTIDADE) as C3,'
      'Max(VENDAS_ITEMS.DT_VENDA) as C4'
      ''
      'from VENDAS_ITEMS'
      
        'left outer JOIN PRODUTOS on (PRODUTOS.cd_produto = VENDAS_ITEMS.' +
        'cd_produto)'
      
        'left outer JOIN CLIENTES on (VENDAS_ITEMS.CD_CLIENTE = CLIENTES.' +
        'CD_CLIENTE)'
      ''
      'where'
      'PRODUTOS.CD_PRODUTO between 1 and 50 and'
      'VENDAS_ITEMS.DT_VENDA >= '#39'01/01/2007'#39' and'
      'VENDAS_ITEMS.DT_VENDA <= '#39'12/12/2008'#39
      ''
      
        'Group by VENDAS_ITEMS.CD_CLIENTE, CLIENTES.CD_CLIENTE, CLIENTES.' +
        'NM_CLIENTE')
    FieldOptions = []
    Left = 505
    Top = 106
  end
  object QueryC11: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select CD_CLIENTE as C1,'
      '       NM_CLIENTE as C2,'
      '       APELIDO as C3,'
      '       TELEFONE as C4'
      'from CLIENTES')
    FieldOptions = []
    Left = 617
    Top = 106
  end
  object QueryC12: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'CLIENTES.CD_CLIENTE  as C1,'
      'CLIENTES.NM_CLIENTE  as C2,'
      'coalesce((select sum(VENDAS.TOTALLIQUIDO) from VENDAS'
      'where'
      'CLIENTES.CD_CLIENTE = VENDAS.CD_CLIENTE and'
      
        'VENDAS.DT_VENDA >= '#39'12/02/2007'#39' and VENDAS.DT_VENDA <= '#39'10/21/20' +
        '08'#39'), 0) as C3,'
      'REFCLIENTES.DT_ULTIMACOMPRA as C4'
      ''
      'from CLIENTES'
      'left outer join REFCLIENTES'
      'on REFCLIENTES.CD_CLIENTE = CLIENTES.CD_CLIENTE')
    FieldOptions = []
    Left = 673
    Top = 106
  end
  object DSetC12: TfrxDBDataset
    UserName = 'DSetC12'
    CloseDataSource = False
    DataSet = QueryC12
    Left = 673
    Top = 154
  end
  object DSetC11: TfrxDBDataset
    UserName = 'DSetC11'
    CloseDataSource = False
    DataSet = QueryC11
    Left = 617
    Top = 154
  end
  object DSetC10: TfrxDBDataset
    UserName = 'DSetC10'
    CloseDataSource = False
    DataSet = QueryC10
    Left = 561
    Top = 154
  end
  object DSetC9: TfrxDBDataset
    UserName = 'DSetC09'
    CloseDataSource = False
    DataSet = QueryC9
    Left = 505
    Top = 154
  end
  object QueryC10: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'CD_CLIENTE as C1,'
      'NM_CLIENTE as C2,'
      
        'cast(extract(month from DT_NASCIMENTO)|| '#39'/'#39' || extract(day from' +
        ' DT_NASCIMENTO) as date) as C3,'
      
        'extract(year from cast('#39'now'#39' as date)) - extract(year from DT_NA' +
        'SCIMENTO) as C4,'
      'BAIRRO as C5,'
      'TELEFONE as C6'
      ''
      'from CLIENTES'
      'WHERE'
      
        'cast(extract(month from DT_NASCIMENTO)|| '#39'/'#39' || extract(day from' +
        ' DT_NASCIMENTO) as date) >= '#39'01/01/2007'#39
      
        '  and cast(extract(month from DT_NASCIMENTO)|| '#39'/'#39' || extract(da' +
        'y from DT_NASCIMENTO) as date) <= '#39'12/01/2008'#39)
    FieldOptions = []
    Left = 561
    Top = 106
  end
  object QueryP14: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      '/* VENDAS */'
      'select'
      'VENDAS_ITEMS.DT_VENDA    as C1,'
      '(0.000+0.000)            as C2,'
      'VENDAS_ITEMS.QUANTIDADE  as C3,'
      #39'VENDAS          '#39'       as C4,'
      
        'cast(coalesce(USUARIOS.NM_USUARIO, VENDAS_ITEMS.LOGIN) as VARCHA' +
        'R(40)) as C5,'
      
        '(((VENDAS_ITEMS.PRECO - VENDAS_ITEMS.PRECOCUSTO)*100) / VENDAS_I' +
        'TEMS.PRECOCUSTO) as C6'
      'from VENDAS_ITEMS'
      
        'left outer join USUARIOS on VENDAS_ITEMS.VENDEDOR = USUARIOS.CD_' +
        'USUARIO'
      'WHERE'
      'CD_PRODUTO = 1'
      'and VENDAS_ITEMS.DT_VENDA >= '#39'10/27/2007'#39
      'and VENDAS_ITEMS.DT_VENDA <= '#39'10/27/2008'#39
      ''
      'union'
      ''
      '/* TRANSFSAIDAS */'
      'select'
      'TRANSFERENCIAS.DATA             as C1,'
      '(0.000+0.000)                   as C2,'
      'TRANSFERENCIAS_ITEMS.QUANTIDADE as C3,'
      #39'TRANSFER'#202'NCIA   '#39'              as C4,'
      'cast(coalesce(TRANSFERENCIAS.LOGIN, '#39#39') as VARCHAR(40)) as C5,'
      '(0.000+0.000)                   as C6'
      
        'from TRANSFERENCIAS_ITEMS join TRANSFERENCIAS on TRANSFERENCIAS_' +
        'ITEMS.NUM_DOCUMENTO = TRANSFERENCIAS.NUM_DOCUMENTO'
      'WHERE'
      'CD_PRODUTO = 1'
      'and TRANSFERENCIAS.DATA >= '#39'10/27/2007'#39
      'and TRANSFERENCIAS.DATA <= '#39'10/27/2008'#39
      ''
      'union'
      ''
      '/* ENTRADA DE NOTAS */'
      'select'
      'cast(NF.DT_ENTRADA || + '#39' 00:00:00'#39' as TimeStamp) as C1,'
      '(NF_ITEMS.QUANTIDADE * NF_ITEMS.UNDCONVERSAO)     as C2,'
      '(0.000+0.000)                                     as C3,'
      #39'ENTRADA DE NOTAS'#39'                                as C4,'
      'cast(coalesce(NF_ITEMS.LOGIN, '#39#39') as VARCHAR(40)) as C5,'
      'NF_ITEMS.MARGEMLUCRO                              as C6'
      
        'from NF_ITEMS left outer join NF on NF.CD_NOTA = NF_ITEMS.CD_NOT' +
        'A'
      'WHERE'
      'CD_PRODUTO = 1'
      
        'and cast(NF.DT_ENTRADA || + '#39' 00:00:00'#39' as TimeStamp) >= '#39'10/27/' +
        '2007'#39
      
        'and cast(NF.DT_ENTRADA || + '#39' 00:00:00'#39' as TimeStamp) <= '#39'10/27/' +
        '2008'#39
      ''
      'union'
      ''
      '/* TRANSFENTRADAS */'
      'select'
      'TRANSFERENCIAS.DATA                as C1,'
      'TRANSFERENCIAS_ITEMS.QUANTIDADE    as C2,'
      '(0.000+0.000)                      as C3,'
      #39'TRANSFER'#202'NCIA   '#39'                 as C4,'
      'cast(coalesce(TRANSFERENCIAS.LOGIN, '#39#39') as VARCHAR(40)) as C5,'
      '(0.000+0.000)                      as C6'
      
        'from TRANSFERENCIAS_ITEMS join TRANSFERENCIAS on TRANSFERENCIAS_' +
        'ITEMS.NUM_DOCUMENTO = TRANSFERENCIAS.NUM_DOCUMENTO'
      'WHERE'
      'CD_PRODUTO = 1'
      'and TRANSFERENCIAS.DATA >= '#39'10/27/2007'#39
      'and TRANSFERENCIAS.DATA <= '#39'10/27/2008'#39)
    FieldOptions = []
    Left = 305
    Top = 108
  end
  object DSetP14: TfrxDBDataset
    UserName = 'DSetP14'
    CloseDataSource = False
    DataSet = QueryP14
    Left = 305
    Top = 156
  end
  object QueryC1: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'CLIENTES.Cd_Cliente as C1,'
      'CLIENTES.Nm_Cliente as C2,'
      'CLIENTES.endereco as C3,'
      'Clientes.cd_cliente as C4,'
      'produtos.precocusto as C5,'
      'produtos.precoavista as C6,'
      'produtos.precocusto as C7'
      ''
      'from CLIENTES, produtos'
      ''
      'where clientes.cd_cliente < 50 and produtos.cd_produto < 50')
    FieldOptions = []
    Left = 505
    Top = 10
  end
  object QueryC2: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'select'
      'ARECEBER.DT_EMISSAO   as C1,'
      
        'cast(ARECEBER.NUM_DOC_CONTA||coalesce(ARECEBER.PARCELA, '#39#39') as V' +
        'ARCHAR(15))as C2,'
      'ARECEBER.VALORATUAL   as C3,'
      'areceber.bx_juros     as C4,'
      'ARECEBER.VALORATUAL   as C5,'
      '(0+0)                 as C6,'
      #39'A'#39'               as C7,'
      'ARECEBER.LOGIN        as C8'
      ''
      'from ARECEBER')
    FieldOptions = []
    Left = 561
    Top = 10
  end
  object DSetC1: TfrxDBDataset
    UserName = 'DSetC01'
    CloseDataSource = False
    DataSet = QueryC1
    Left = 505
    Top = 58
  end
  object DSetC2: TfrxDBDataset
    UserName = 'DSetC02'
    CloseDataSource = False
    DataSet = QueryC2
    Left = 561
    Top = 58
  end
  object DSetC3: TfrxDBDataset
    UserName = 'DSetC03'
    CloseDataSource = False
    DataSet = QueryC3
    Left = 617
    Top = 58
  end
  object QueryC3: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'CLIENTES.Cd_Cliente as C1,'
      'CLIENTES.Nm_Cliente as C2,'
      'CLIENTES.endereco as C3,'
      'A.Atraso as C4,'
      'S1.Saldo as C5,'
      'S2.Saldo as C6,'
      'S3.Saldo as C7'
      ''
      'from CLIENTES'
      
        'left outer join sp_saldodadivida(CLIENTES.Cd_Cliente,'#39'01/01/2007' +
        #39', current_date, CLIENTES.TAXAATRASO) S1'
      'on (CLIENTES.Cd_Cliente = S1.CHAVE_SAIDA)'
      ''
      
        'left outer join sp_saldodadivida(CLIENTES.Cd_Cliente,'#39'01/01/2007' +
        #39', current_date, CLIENTES.TAXAATRASO) S2'
      'on (CLIENTES.Cd_Cliente = S2.CHAVE_SAIDA)'
      ''
      
        'left outer join sp_saldodadivida(CLIENTES.Cd_Cliente,'#39'01/01/2007' +
        #39', current_date, CLIENTES.TAXAATRASO) S3'
      'on (CLIENTES.Cd_Cliente = S3.CHAVE_SAIDA)'
      ''
      
        'left outer join SP_MaiorAtraso(CLIENTES.Cd_Cliente, '#39'01/01/2007'#39 +
        ', current_date) A'
      'on (CLIENTES.Cd_Cliente = A.CHAVE_SAIDA)'
      ''
      'where'
      'A.Atraso > 0')
    FieldOptions = []
    Left = 617
    Top = 10
  end
  object QueryC4: TIBOQuery
    Params = <>
    DatabaseName = 'C:\Arquivos de programas\Focus\FOCUS.FOC'
    RecordCountAccurate = True
    SQL.Strings = (
      'Select '
      'CLIENTES.CD_CLIENTE as C1,'
      'CLIENTES.NM_CLIENTE as C2,'
      'CLIENTES.APELIDO as C3,'
      'CLIENTES.TELEFONE as C4,'
      'CLIENTES.limitecredito as C5,'
      'S.Saldo as C6'
      'From'
      
        'CLIENTES left outer join SP_SaldoDaDivida(CLIENTES.cd_cliente, '#39 +
        '01/01/2008'#39', current_date, CLIENTES.TAXAATRASO) S'
      'on (CLIENTES.cd_cliente = S.Chave_Saida)'
      'where'
      'S.Saldo > CLIENTES.limitecredito')
    FieldOptions = []
    Left = 673
    Top = 10
  end
  object DSetC4: TfrxDBDataset
    UserName = 'DSetC04'
    CloseDataSource = False
    DataSet = QueryC4
    Left = 673
    Top = 58
  end
end
