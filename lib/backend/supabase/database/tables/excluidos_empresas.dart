import '../database.dart';

class ExcluidosEmpresasTable extends SupabaseTable<ExcluidosEmpresasRow> {
  @override
  String get tableName => 'excluidos_empresas';

  @override
  ExcluidosEmpresasRow createRow(Map<String, dynamic> data) =>
      ExcluidosEmpresasRow(data);
}

class ExcluidosEmpresasRow extends SupabaseDataRow {
  ExcluidosEmpresasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExcluidosEmpresasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get dataCriacao => getField<DateTime>('data_criacao')!;
  set dataCriacao(DateTime value) => setField<DateTime>('data_criacao', value);

  DateTime get dataExclusao => getField<DateTime>('data_exclusao')!;
  set dataExclusao(DateTime value) =>
      setField<DateTime>('data_exclusao', value);

  String get idEmpresa => getField<String>('id_empresa')!;
  set idEmpresa(String value) => setField<String>('id_empresa', value);

  int get tipoParceria => getField<int>('tipo_parceria')!;
  set tipoParceria(int value) => setField<int>('tipo_parceria', value);

  int get estado => getField<int>('estado')!;
  set estado(int value) => setField<int>('estado', value);
}
