import '../database.dart';

class RestaurantesTable extends SupabaseTable<RestaurantesRow> {
  @override
  String get tableName => 'restaurantes';

  @override
  RestaurantesRow createRow(Map<String, dynamic> data) => RestaurantesRow(data);
}

class RestaurantesRow extends SupabaseDataRow {
  RestaurantesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RestaurantesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);

  int get idCategoria => getField<int>('id_categoria')!;
  set idCategoria(int value) => setField<int>('id_categoria', value);

  String get nomeRestaurante => getField<String>('nome_restaurante')!;
  set nomeRestaurante(String value) =>
      setField<String>('nome_restaurante', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  String get endereco => getField<String>('endereco')!;
  set endereco(String value) => setField<String>('endereco', value);

  String get coordenadas => getField<String>('coordenadas')!;
  set coordenadas(String value) => setField<String>('coordenadas', value);

  bool get acessibilidade => getField<bool>('acessibilidade')!;
  set acessibilidade(bool value) => setField<bool>('acessibilidade', value);

  DateTime? get dataAtualizacao => getField<DateTime>('data_atualizacao');
  set dataAtualizacao(DateTime? value) =>
      setField<DateTime>('data_atualizacao', value);

  PostgresTime get horarioAbertura =>
      getField<PostgresTime>('horario_abertura')!;
  set horarioAbertura(PostgresTime value) =>
      setField<PostgresTime>('horario_abertura', value);

  PostgresTime get horarioFechamento =>
      getField<PostgresTime>('horario_fechamento')!;
  set horarioFechamento(PostgresTime value) =>
      setField<PostgresTime>('horario_fechamento', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get logomarca => getField<String>('logomarca');
  set logomarca(String? value) => setField<String>('logomarca', value);

  String? get imagemBanner => getField<String>('imagem_banner');
  set imagemBanner(String? value) => setField<String>('imagem_banner', value);

  String? get point => getField<String>('point');
  set point(String? value) => setField<String>('point', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);

  String? get nomeParceiro => getField<String>('nome_parceiro');
  set nomeParceiro(String? value) => setField<String>('nome_parceiro', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
