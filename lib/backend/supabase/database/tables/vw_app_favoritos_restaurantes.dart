import '../database.dart';

class VwAppFavoritosRestaurantesTable
    extends SupabaseTable<VwAppFavoritosRestaurantesRow> {
  @override
  String get tableName => 'vw_app_favoritos_restaurantes';

  @override
  VwAppFavoritosRestaurantesRow createRow(Map<String, dynamic> data) =>
      VwAppFavoritosRestaurantesRow(data);
}

class VwAppFavoritosRestaurantesRow extends SupabaseDataRow {
  VwAppFavoritosRestaurantesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwAppFavoritosRestaurantesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataFavorito => getField<DateTime>('data_favorito');
  set dataFavorito(DateTime? value) =>
      setField<DateTime>('data_favorito', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);

  int? get idRestaurante => getField<int>('id_restaurante');
  set idRestaurante(int? value) => setField<int>('id_restaurante', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  DateTime? get dataCriacao => getField<DateTime>('data_criacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('data_criacao', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get coordenadas => getField<String>('coordenadas');
  set coordenadas(String? value) => setField<String>('coordenadas', value);

  bool? get acessibilidade => getField<bool>('acessibilidade');
  set acessibilidade(bool? value) => setField<bool>('acessibilidade', value);

  PostgresTime? get horarioAbertura =>
      getField<PostgresTime>('horario_abertura');
  set horarioAbertura(PostgresTime? value) =>
      setField<PostgresTime>('horario_abertura', value);

  PostgresTime? get horarioFechamento =>
      getField<PostgresTime>('horario_fechamento');
  set horarioFechamento(PostgresTime? value) =>
      setField<PostgresTime>('horario_fechamento', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get logomarca => getField<String>('logomarca');
  set logomarca(String? value) => setField<String>('logomarca', value);

  String? get imagemBanner => getField<String>('imagem_banner');
  set imagemBanner(String? value) => setField<String>('imagem_banner', value);

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);

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

  double? get mediaAvaliacoes => getField<double>('media_avaliacoes');
  set mediaAvaliacoes(double? value) =>
      setField<double>('media_avaliacoes', value);

  List<String> get comentarios => getListField<String>('comentarios');
  set comentarios(List<String>? value) =>
      setListField<String>('comentarios', value);
}
