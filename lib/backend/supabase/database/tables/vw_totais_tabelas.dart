import '../database.dart';

class VwTotaisTabelasTable extends SupabaseTable<VwTotaisTabelasRow> {
  @override
  String get tableName => 'vw_totais_tabelas';

  @override
  VwTotaisTabelasRow createRow(Map<String, dynamic> data) =>
      VwTotaisTabelasRow(data);
}

class VwTotaisTabelasRow extends SupabaseDataRow {
  VwTotaisTabelasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwTotaisTabelasTable();

  String? get nomeTabela => getField<String>('nome_tabela');
  set nomeTabela(String? value) => setField<String>('nome_tabela', value);

  int? get total => getField<int>('total');
  set total(int? value) => setField<int>('total', value);
}
