import '../database.dart';

class FaturaEmpresasTable extends SupabaseTable<FaturaEmpresasRow> {
  @override
  String get tableName => 'fatura_empresas';

  @override
  FaturaEmpresasRow createRow(Map<String, dynamic> data) =>
      FaturaEmpresasRow(data);
}

class FaturaEmpresasRow extends SupabaseDataRow {
  FaturaEmpresasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FaturaEmpresasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get idEmpresa => getField<String>('id_empresa')!;
  set idEmpresa(String value) => setField<String>('id_empresa', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  double get valor => getField<double>('valor')!;
  set valor(double value) => setField<double>('valor', value);

  DateTime get dataMensalidade => getField<DateTime>('data_mensalidade')!;
  set dataMensalidade(DateTime value) =>
      setField<DateTime>('data_mensalidade', value);

  int get numeroFatura => getField<int>('numero_fatura')!;
  set numeroFatura(int value) => setField<int>('numero_fatura', value);
}
