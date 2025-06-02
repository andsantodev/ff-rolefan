import '../database.dart';

class LojasTable extends SupabaseTable<LojasRow> {
  @override
  String get tableName => 'lojas';

  @override
  LojasRow createRow(Map<String, dynamic> data) => LojasRow(data);
}

class LojasRow extends SupabaseDataRow {
  LojasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LojasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);

  String? get logomarca => getField<String>('logomarca');
  set logomarca(String? value) => setField<String>('logomarca', value);

  String get nomeLoja => getField<String>('nome_loja')!;
  set nomeLoja(String value) => setField<String>('nome_loja', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  PostgresTime? get horarioAbertura =>
      getField<PostgresTime>('horario_abertura');
  set horarioAbertura(PostgresTime? value) =>
      setField<PostgresTime>('horario_abertura', value);

  PostgresTime? get horarioFechamento =>
      getField<PostgresTime>('horario_fechamento');
  set horarioFechamento(PostgresTime? value) =>
      setField<PostgresTime>('horario_fechamento', value);

  DateTime? get dataAtualizacao => getField<DateTime>('data_atualizacao');
  set dataAtualizacao(DateTime? value) =>
      setField<DateTime>('data_atualizacao', value);

  int get idCategoria => getField<int>('id_categoria')!;
  set idCategoria(int value) => setField<int>('id_categoria', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get nomeParceiro => getField<String>('nome_parceiro');
  set nomeParceiro(String? value) => setField<String>('nome_parceiro', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
