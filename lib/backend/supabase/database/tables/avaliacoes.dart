import '../database.dart';

class AvaliacoesTable extends SupabaseTable<AvaliacoesRow> {
  @override
  String get tableName => 'avaliacoes';

  @override
  AvaliacoesRow createRow(Map<String, dynamic> data) => AvaliacoesRow(data);
}

class AvaliacoesRow extends SupabaseDataRow {
  AvaliacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AvaliacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get idCliente => getField<String>('id_cliente')!;
  set idCliente(String value) => setField<String>('id_cliente', value);

  int get idRestaurante => getField<int>('id_restaurante')!;
  set idRestaurante(int value) => setField<int>('id_restaurante', value);

  double? get avaliacao => getField<double>('avaliacao');
  set avaliacao(double? value) => setField<double>('avaliacao', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);
}
