import '../database.dart';

class VwAppRestaurantesTable extends SupabaseTable<VwAppRestaurantesRow> {
  @override
  String get tableName => 'vw_app_restaurantes';

  @override
  VwAppRestaurantesRow createRow(Map<String, dynamic> data) =>
      VwAppRestaurantesRow(data);
}

class VwAppRestaurantesRow extends SupabaseDataRow {
  VwAppRestaurantesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwAppRestaurantesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

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

  String? get point => getField<String>('point');
  set point(String? value) => setField<String>('point', value);

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

  String? get siteEmpresa => getField<String>('site_empresa');
  set siteEmpresa(String? value) => setField<String>('site_empresa', value);

  String? get facebookEmpresa => getField<String>('facebook_empresa');
  set facebookEmpresa(String? value) =>
      setField<String>('facebook_empresa', value);

  String? get instagramEmpresa => getField<String>('instagram_empresa');
  set instagramEmpresa(String? value) =>
      setField<String>('instagram_empresa', value);

  String? get tiktokEmpresa => getField<String>('tiktok_empresa');
  set tiktokEmpresa(String? value) => setField<String>('tiktok_empresa', value);

  double? get mediaAvaliacoes => getField<double>('media_avaliacoes');
  set mediaAvaliacoes(double? value) =>
      setField<double>('media_avaliacoes', value);

  List<String> get comentarios => getListField<String>('comentarios');
  set comentarios(List<String>? value) =>
      setListField<String>('comentarios', value);
}
