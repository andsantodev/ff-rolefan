import '../database.dart';

class RedesSociaisTable extends SupabaseTable<RedesSociaisRow> {
  @override
  String get tableName => 'redes_sociais';

  @override
  RedesSociaisRow createRow(Map<String, dynamic> data) => RedesSociaisRow(data);
}

class RedesSociaisRow extends SupabaseDataRow {
  RedesSociaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RedesSociaisTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);
}
