unit uPersistencia;

interface

uses uAtributos, FireDAC.Comp.Client, DBCLient, System.Rtti, DB;

type

  TPersistencia = class
  public
    class function Inserir(pObjeto: TObject; out sErro: string): Boolean;
    class function Atualizar(pObjeto: TObject; out sErro: string): Boolean;
    class function Excluir(pObjeto: TObject; out sErro: string): Boolean;
    class function Consultar(pObjeto: TObject; pCampo: string; pFiltro: String; out sErro: string): TClientDataSet;
    class function ConsultarWhere(pObjeto: TObject; pWhere: String; out sErro: string): TClientDataSet;
    class function CarregaLookupChaveEstrangeira(pObjeto: TObject; pCampo: string): TClientDataSet;
    class procedure CriaFieldDataSet(cds: TClientDataSet; propriedade: TRttiProperty; atributo: TCustomAttribute);
    class procedure PopulaDataSet(cds: TClientDataSet; pSqlQuery: TFDQuery);
    class function PegarConexao: TFDConnection;
  end;

implementation

uses
   System.SysUtils, SQLExpr, datamodulecadastros;

{ TPersistencia }

class function TPersistencia.Atualizar(pObjeto: TObject; out sErro: string): Boolean;
var
  sqlQuery: TFDQuery;
	contexto: TRttiContext;
	tipo: TRttiType;
	propriedade: TRttiProperty;
	atributo: TCustomAttribute;
	sql, camposSql, filtroSql: String;
begin
	try
		contexto := TRttiContext.Create;
		tipo := contexto.GetType(pObjeto.ClassType);

		for atributo in tipo.GetAttributes do
		begin
			if atributo is TTabela then
				sql := 'UPDATE ' + (atributo as TTabela).Nome + ' SET ';
		end;

		for propriedade in tipo.Getproperties do
		begin
			for atributo in propriedade.GetAttributes do
			begin
				if atributo is TCampo then
				begin
					case propriedade.PropertyType.typeKind of
            tkString, tkUString:
					  begin
              if propriedade.GetValue(pObjeto).ToString <> EmptyStr then
  							camposSql := camposSql + (atributo as TCampo).Nome + ' = ' + QuotedStr(propriedade.GetValue(pObjeto).ToString) + ',';            
            end;
            tkFloat, tkInteger:
            begin
						  if propriedade.GetValue(pObjeto).ToString <> EmptyStr then
  							camposSql := camposSql + (atributo as TCampo).Nome + ' = ' + propriedade.GetValue(pObjeto).ToString + ',';
            end;
					end;

          if (atributo as TCampo).ChavePrimaria then
            filtroSql := ' WHERE ' + (atributo as TCampo).Nome + ' = ' + propriedade.GetValue(pObjeto).ToString;
				end;

			end;
		end;

		Delete(camposSql, Length(camposSql), 1);

		sql := sql + camposSql + filtroSql;

		sqlQuery := TFDQuery.Create(nil);
    sqlQuery.Connection := PegarConexao;
    sqlQuery.SQL.Clear;
    sqlQuery.SQL.Add(sql);
    
    try
      sqlQuery.ExecSQL;
      Result := True  
    except on E: Exception do
    begin
      sErro := 'Não foi possível atualizar o registro no banco de dados.' + #13 + e.message;
      Result := False;  
    end;    
    end;
	finally
		//FreeAndNil(contexto);
	end;
end;

class function TPersistencia.CarregaLookupChaveEstrangeira(pObjeto: TObject;
  pCampo: string): TClientDataSet;
var
  sqlQuery: TFDQuery;
  cds: TClientDataSet;
	contexto: TRttiContext;
	tipo: TRttiType;
	propriedade: TRttiProperty;
	atributo: TCustomAttribute;
	sqlSelect, sqlTabela, filtroSql: String;
  index: Integer;
begin
	try
		contexto := TRttiContext.Create;
		tipo := contexto.GetType(pObjeto.ClassType);

    sqlSelect := 'SELECT ' + pCampo + ', ';

		for atributo in tipo.GetAttributes do
		begin
			if atributo is TTabela then
				sqlTabela := ' FROM ' + (atributo as TTabela).Nome;
		end;

    cds := TClientDataSet.Create(nil);
    cds.Close;
    cds.FieldDefs.Clear;

    for propriedade in tipo.GetProperties do
		begin
			for atributo in propriedade.GetAttributes do
			begin
				if atributo is TCampo then
        begin
          if (atributo as TCampo).nome = pCampo then
            CriaFieldDataSet(cds, propriedade, atributo);

          if (atributo as TCampo).ChavePrimaria then
          begin  
            sqlSelect := sqlSelect + (atributo as TCampo).nome;
            CriaFieldDataSet(cds, propriedade, atributo);
          end;
        end;
			end;
		end;
    cds.CreateDataSet;

    sqlQuery := TFDQuery.Create(nil);
    sqlQuery.Connection := PegarConexao;
    sqlQuery.SQL.Clear;
    sqlQuery.SQL.Add(sqlSelect + sqlTabela);
    sqlQuery.Open;

    PopulaDataSet(cds, sqlQuery);

    Result := cds;
	finally
		//FreeAndNil(contexto);
	end;

end;

class function TPersistencia.PegarConexao: TFDConnection;
begin
  if datamodulecadastros.DataModule2.FDConnection1.Connected then
    Result := datamodulecadastros.DataModule2.FDConnection1
  else
    Result := nil;
end;

class function TPersistencia.Consultar(pObjeto: TObject; pCampo: string;
  pFiltro: String; out sErro: string): TClientDataSet;
var
  sqlQuery: TFDQuery;
  cds: TClientDataSet;
	contexto: TRttiContext;
	tipo: TRttiType;
	propriedade: TRttiProperty;
	atributo: TCustomAttribute;
	sql, filtroSql: String;
  index: Integer;
begin
	try
		contexto := TRttiContext.Create;
		tipo := contexto.GetType(pObjeto.ClassType);

		for atributo in tipo.GetAttributes do
		begin
			if atributo is TTabela then
				sql := 'SELECT * FROM ' + (atributo as TTabela).Nome;
		end;

		filtroSql := ' WHERE ' + pCampo;
    if pCampo = 'NOME' then
      filtroSql := filtroSql + ' LIKE ' + QuotedStr('%' + pFiltro + '%')
    else if pCampo = 'ID' then
      filtroSql := filtroSql + ' = ' + pFiltro;  

		sql := sql + filtroSql;

    cds := TClientDataSet.Create(nil);
    cds.Close;
    cds.FieldDefs.Clear;

    for propriedade in tipo.GetProperties do
		begin
			for atributo in propriedade.GetAttributes do
			begin
				if atributo is TCampo then
          CriaFieldDataSet(cds, propriedade, atributo);
			end;
		end;
    cds.CreateDataSet;

    sqlQuery := TFDQuery.Create(nil);
    sqlQuery.Connection := PegarConexao;
    sqlQuery.SQL.Clear;
    sqlQuery.SQL.Add(sql);
    
    try
      sqlQuery.Open;
      PopulaDataSet(cds, sqlQuery);
      Result := cds;  
    except on E: Exception do
    begin
      sErro := 'Não foi possível consultar o registro no banco de dados.' + #13 + e.message;
      Result := nil;  
    end;    
    end;
	finally
		//FreeAndNil(contexto);
	end;

end;

class function TPersistencia.ConsultarWhere(pObjeto: TObject; pWhere: String;
  out sErro: string): TClientDataSet;
var
  sqlQuery: TFDQuery;
  cds: TClientDataSet;
	contexto: TRttiContext;
	tipo: TRttiType;
	propriedade: TRttiProperty;
	atributo: TCustomAttribute;
	sql, filtroSql: String;
  index: Integer;
begin
	try
		contexto := TRttiContext.Create;
		tipo := contexto.GetType(pObjeto.ClassType);

		for atributo in tipo.GetAttributes do
		begin
			if atributo is TTabela then
				sql := 'SELECT * FROM ' + (atributo as TTabela).Nome;
		end;

    filtroSql := '';
    if pWhere <> EmptyStr then
      filtroSql := ' WHERE ' + pWhere; 

		sql := sql + filtroSql;

    cds := TClientDataSet.Create(nil);
    cds.Close;
    cds.FieldDefs.Clear;

    for propriedade in tipo.GetProperties do
		begin
			for atributo in propriedade.GetAttributes do
			begin
				if atributo is TCampo then
          CriaFieldDataSet(cds, propriedade, atributo);
			end;
		end;
    cds.CreateDataSet;

    sqlQuery := TFDQuery.Create(nil);
    sqlQuery.Connection := PegarConexao;
    sqlQuery.SQL.Clear;
    sqlQuery.SQL.Add(sql);
    
    try
      sqlQuery.Open;
      PopulaDataSet(cds, sqlQuery);
      Result := cds;  
    except on E: Exception do
    begin
      sErro := 'Não foi possível consultar o registro no banco de dados.' + #13 + e.message;
      Result := nil;  
    end;    
    end;
	finally
		//FreeAndNil(contexto);
	end;
end;

class procedure TPersistencia.CriaFieldDataSet(cds: TClientDataSet;
  propriedade: TRttiProperty; atributo: TCustomAttribute);
begin
  case propriedade.PropertyType.typeKind of
    tkString, tkUString:
      cds.FieldDefs.Add((atributo as TCampo).Nome, ftString, (atributo as TCampo).tamanho);
    tkInteger:
      cds.FieldDefs.Add((atributo as TCampo).Nome, ftInteger);
    tkFloat:
      cds.FieldDefs.Add((atributo as TCampo).Nome, ftFloat);
  end;
end;

class function TPersistencia.Excluir(pObjeto: TObject; out sErro: string): Boolean;
var
  sqlQuery: TFDQuery;
	contexto: TRttiContext;
	tipo: TRttiType;
	propriedade: TRttiProperty;
	atributo: TCustomAttribute;
	sql, filtroSql: String;
begin
	try
		contexto := TRttiContext.Create;
		tipo := contexto.GetType(pObjeto.ClassType);

		for atributo in tipo.GetAttributes do
		begin
			if atributo is TTabela then
				sql := 'DELETE FROM ' + (atributo as TTabela).Nome;
		end;

		for propriedade in tipo.Getproperties do
		begin
			for atributo in propriedade.GetAttributes do
			begin
				if atributo is TCampo then
				begin
          if (atributo as TCampo).ChavePrimaria then
          	filtroSql := ' WHERE ' + (atributo as TCampo).Nome + ' = ' + QuotedStr(propriedade.GetValue(pObjeto).ToString);
				end;
			end;
		end;

		sql := sql + filtroSql;

		sqlQuery := TFDQuery.Create(nil);
    sqlQuery.Connection := PegarConexao;
    sqlQuery.SQL.Clear;
    sqlQuery.SQL.Add(sql);
    
    try
      sqlQuery.ExecSQL;
      Result := True  
    except on E: Exception do
    begin
      sErro := 'Não foi possível excluir o registro no banco de dados.' + #13 + e.message;
      Result := False;  
    end;    
    end;
	finally
		//FreeAndNil(contexto);
	end;

end;

class function TPersistencia.Inserir(pObjeto: TObject; out sErro: string): Boolean;
var
  sqlQuery: TFDQuery;
	contexto: TRttiContext;
	tipo: TRttiType;
	propriedade: TRttiProperty;
	atributo: TCustomAttribute;
	sql, camposSql, valoresSql: String;
begin
	try
		contexto := TRttiContext.Create;
		tipo := contexto.GetType(pObjeto.ClassType);

		for atributo in tipo.GetAttributes do
		begin
			if atributo is TTabela then
				sql := 'INSERT INTO ' + (atributo as TTabela).Nome;
		end;

		for propriedade in tipo.Getproperties do
		begin
			for atributo in propriedade.GetAttributes do
			begin
				if atributo is TCampo then
				begin
          if not (atributo as TCampo).ChavePrimaria then
          begin
            camposSql := camposSql + (atributo as TCampo).Nome + ',';
            case propriedade.PropertyType.typeKind of
            tkString, tkUString:                
              valoresSql := valoresSql + QuotedStr(propriedade.GetValue(pObjeto).toString) + ',';
            tkFloat, tkInteger:
              valoresSql := valoresSql + StringReplace(propriedade.GetValue(pObjeto).toString, ',', '.', [rfReplaceAll]) + ',';
            end;          
          end;
				end;
			end;
		end;

		Delete(camposSql, Length(camposSql), 1);
		Delete(valoresSql, Length(valoresSql), 1);

		sql := sql + '(' + camposSql + ') VALUES (' + valoresSql + ')';

		sqlQuery := TFDQuery.Create(nil);
    sqlQuery.Connection := PegarConexao;
    sqlQuery.SQL.Clear;
    sqlQuery.SQL.Add(sql);

    try
      sqlQuery.ExecSQL;
      Result := True  
    except on E: Exception do
    begin
      sErro := 'Não foi possível inserir o registro no banco de dados.' + #13 + e.message;
      Result := False;  
    end;    
    end;
   
	finally
		//FreeAndNil(contexto);
	end;

end;

class procedure TPersistencia.PopulaDataSet(cds: TClientDataSet;
  pSqlQuery: TFDQuery);
var
  index: Integer;
begin
  pSqlQuery.First;
  while not pSqlQuery.Eof do
  begin
    cds.Append;
    for index := 0 to cds.FieldCount - 1 do
    begin
      case cds.Fields[index].DataType of
        ftString:
          cds.Fields[index].AsString := pSqlQuery.FieldByName(cds.Fields[index].FieldName).AsString;
        ftInteger:
          cds.Fields[index].AsInteger := pSqlQuery.FieldByName(cds.Fields[index].FieldName).AsInteger;
        ftFloat:
          cds.Fields[index].AsFloat := pSqlQuery.FieldByName(cds.Fields[index].FieldName).AsFloat;
      end;
    end;
    cds.Post;
    pSqlQuery.Next;
  end;
end;

end.
