import '../database.dart';

class LojasFotosTable extends SupabaseTable<LojasFotosRow> {
  @override
  String get tableName => 'lojas_fotos';

  @override
  LojasFotosRow createRow(Map<String, dynamic> data) => LojasFotosRow(data);
}

class LojasFotosRow extends SupabaseDataRow {
  LojasFotosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LojasFotosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idLoja => getField<int>('id_loja')!;
  set idLoja(int value) => setField<int>('id_loja', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);
}
