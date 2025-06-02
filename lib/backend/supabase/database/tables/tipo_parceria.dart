import '../database.dart';

class TipoParceriaTable extends SupabaseTable<TipoParceriaRow> {
  @override
  String get tableName => 'tipo_parceria';

  @override
  TipoParceriaRow createRow(Map<String, dynamic> data) => TipoParceriaRow(data);
}

class TipoParceriaRow extends SupabaseDataRow {
  TipoParceriaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TipoParceriaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nomeTipoParceria => getField<String>('nome_tipo_parceria')!;
  set nomeTipoParceria(String value) =>
      setField<String>('nome_tipo_parceria', value);
}
