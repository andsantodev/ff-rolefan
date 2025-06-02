import '../database.dart';

class VwEmpresasTable extends SupabaseTable<VwEmpresasRow> {
  @override
  String get tableName => 'vw_empresas';

  @override
  VwEmpresasRow createRow(Map<String, dynamic> data) => VwEmpresasRow(data);
}

class VwEmpresasRow extends SupabaseDataRow {
  VwEmpresasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwEmpresasTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
