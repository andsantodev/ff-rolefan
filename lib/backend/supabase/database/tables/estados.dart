import '../database.dart';

class EstadosTable extends SupabaseTable<EstadosRow> {
  @override
  String get tableName => 'estados';

  @override
  EstadosRow createRow(Map<String, dynamic> data) => EstadosRow(data);
}

class EstadosRow extends SupabaseDataRow {
  EstadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstadosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nomeEstado => getField<String>('nome_estado')!;
  set nomeEstado(String value) => setField<String>('nome_estado', value);
}
