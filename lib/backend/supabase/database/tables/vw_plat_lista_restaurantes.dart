import '../database.dart';

class VwPlatListaRestaurantesTable
    extends SupabaseTable<VwPlatListaRestaurantesRow> {
  @override
  String get tableName => 'vw_plat_lista_restaurantes';

  @override
  VwPlatListaRestaurantesRow createRow(Map<String, dynamic> data) =>
      VwPlatListaRestaurantesRow(data);
}

class VwPlatListaRestaurantesRow extends SupabaseDataRow {
  VwPlatListaRestaurantesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwPlatListaRestaurantesTable();

  int? get idRestaurante => getField<int>('id_restaurante');
  set idRestaurante(int? value) => setField<int>('id_restaurante', value);

  DateTime? get dataCriacao => getField<DateTime>('data_criacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('data_criacao', value);

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);

  int? get idCategoria => getField<int>('id_categoria');
  set idCategoria(int? value) => setField<int>('id_categoria', value);

  String? get nomeRestaurante => getField<String>('nome_restaurante');
  set nomeRestaurante(String? value) =>
      setField<String>('nome_restaurante', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get coordenadas => getField<String>('coordenadas');
  set coordenadas(String? value) => setField<String>('coordenadas', value);

  bool? get acessibilidade => getField<bool>('acessibilidade');
  set acessibilidade(bool? value) => setField<bool>('acessibilidade', value);

  DateTime? get dataAtualizacao => getField<DateTime>('data_atualizacao');
  set dataAtualizacao(DateTime? value) =>
      setField<DateTime>('data_atualizacao', value);

  PostgresTime? get horarioAbertura =>
      getField<PostgresTime>('horario_abertura');
  set horarioAbertura(PostgresTime? value) =>
      setField<PostgresTime>('horario_abertura', value);

  PostgresTime? get horarioFechamento =>
      getField<PostgresTime>('horario_fechamento');
  set horarioFechamento(PostgresTime? value) =>
      setField<PostgresTime>('horario_fechamento', value);

  String? get telefoneRestaurante => getField<String>('telefone_restaurante');
  set telefoneRestaurante(String? value) =>
      setField<String>('telefone_restaurante', value);

  String? get logomarcaRestaurante => getField<String>('logomarca_restaurante');
  set logomarcaRestaurante(String? value) =>
      setField<String>('logomarca_restaurante', value);

  String? get imagemBanner => getField<String>('imagem_banner');
  set imagemBanner(String? value) => setField<String>('imagem_banner', value);

  String? get point => getField<String>('point');
  set point(String? value) => setField<String>('point', value);

  String? get siteRestaurante => getField<String>('site_restaurante');
  set siteRestaurante(String? value) =>
      setField<String>('site_restaurante', value);

  String? get facebookRestaurante => getField<String>('facebook_restaurante');
  set facebookRestaurante(String? value) =>
      setField<String>('facebook_restaurante', value);

  String? get instagramRestaurante => getField<String>('instagram_restaurante');
  set instagramRestaurante(String? value) =>
      setField<String>('instagram_restaurante', value);

  String? get tiktokRestaurante => getField<String>('tiktok_restaurante');
  set tiktokRestaurante(String? value) =>
      setField<String>('tiktok_restaurante', value);

  String? get nomeParceiro => getField<String>('nome_parceiro');
  set nomeParceiro(String? value) => setField<String>('nome_parceiro', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  double? get mediaAvaliacoes => getField<double>('media_avaliacoes');
  set mediaAvaliacoes(double? value) =>
      setField<double>('media_avaliacoes', value);

  int? get totalAvaliacoes => getField<int>('total_avaliacoes');
  set totalAvaliacoes(int? value) => setField<int>('total_avaliacoes', value);

  List<String> get comentarios => getListField<String>('comentarios');
  set comentarios(List<String>? value) =>
      setListField<String>('comentarios', value);
}
