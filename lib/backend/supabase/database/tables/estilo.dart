import '../database.dart';

class EstiloTable extends SupabaseTable<EstiloRow> {
  @override
  String get tableName => 'estilo';

  @override
  EstiloRow createRow(Map<String, dynamic> data) => EstiloRow(data);
}

class EstiloRow extends SupabaseDataRow {
  EstiloRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstiloTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nomeEstilo => getField<String>('nome_estilo')!;
  set nomeEstilo(String value) => setField<String>('nome_estilo', value);
}
