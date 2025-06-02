import '../database.dart';

class ExcluidosEventosTable extends SupabaseTable<ExcluidosEventosRow> {
  @override
  String get tableName => 'excluidos_eventos';

  @override
  ExcluidosEventosRow createRow(Map<String, dynamic> data) =>
      ExcluidosEventosRow(data);
}

class ExcluidosEventosRow extends SupabaseDataRow {
  ExcluidosEventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExcluidosEventosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get idEventos => getField<int>('id_eventos')!;
  set idEventos(int value) => setField<int>('id_eventos', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get endereco => getField<String>('endereco')!;
  set endereco(String value) => setField<String>('endereco', value);

  PostgresTime get horarioInicial => getField<PostgresTime>('horario_inicial')!;
  set horarioInicial(PostgresTime value) =>
      setField<PostgresTime>('horario_inicial', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  DateTime get dataCriacao => getField<DateTime>('data_criacao')!;
  set dataCriacao(DateTime value) => setField<DateTime>('data_criacao', value);

  DateTime get dataExclusao => getField<DateTime>('data_exclusao')!;
  set dataExclusao(DateTime value) =>
      setField<DateTime>('data_exclusao', value);

  List<String> get estilo => getListField<String>('estilo');
  set estilo(List<String>? value) => setListField<String>('estilo', value);
}
