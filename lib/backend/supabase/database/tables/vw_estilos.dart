import '../database.dart';

class VwEstilosTable extends SupabaseTable<VwEstilosRow> {
  @override
  String get tableName => 'vw_estilos';

  @override
  VwEstilosRow createRow(Map<String, dynamic> data) => VwEstilosRow(data);
}

class VwEstilosRow extends SupabaseDataRow {
  VwEstilosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwEstilosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nomeEstilo => getField<String>('nome_estilo');
  set nomeEstilo(String? value) => setField<String>('nome_estilo', value);
}
