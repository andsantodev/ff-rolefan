import '../database.dart';

class VwAppFavoritosEventosTable
    extends SupabaseTable<VwAppFavoritosEventosRow> {
  @override
  String get tableName => 'vw_app_favoritos_eventos';

  @override
  VwAppFavoritosEventosRow createRow(Map<String, dynamic> data) =>
      VwAppFavoritosEventosRow(data);
}

class VwAppFavoritosEventosRow extends SupabaseDataRow {
  VwAppFavoritosEventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwAppFavoritosEventosTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataFavorito => getField<DateTime>('data_favorito');
  set dataFavorito(DateTime? value) =>
      setField<DateTime>('data_favorito', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);

  int? get idEvento => getField<int>('id_evento');
  set idEvento(int? value) => setField<int>('id_evento', value);

  DateTime? get dataCriacao => getField<DateTime>('data_criacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('data_criacao', value);

  String? get bannerEvento => getField<String>('banner_evento');
  set bannerEvento(String? value) => setField<String>('banner_evento', value);

  String? get nomeEvento => getField<String>('nome_evento');
  set nomeEvento(String? value) => setField<String>('nome_evento', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get enderecoEvento => getField<String>('endereco_evento');
  set enderecoEvento(String? value) =>
      setField<String>('endereco_evento', value);

  String? get coordenadas => getField<String>('coordenadas');
  set coordenadas(String? value) => setField<String>('coordenadas', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  PostgresTime? get horarioInicial => getField<PostgresTime>('horario_inicial');
  set horarioInicial(PostgresTime? value) =>
      setField<PostgresTime>('horario_inicial', value);

  PostgresTime? get horarioFinal => getField<PostgresTime>('horario_final');
  set horarioFinal(PostgresTime? value) =>
      setField<PostgresTime>('horario_final', value);

  bool? get acessiblidade => getField<bool>('acessiblidade');
  set acessiblidade(bool? value) => setField<bool>('acessiblidade', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  List<String> get imagensEventosAnteriores =>
      getListField<String>('imagens_eventos_anteriores');
  set imagensEventosAnteriores(List<String>? value) =>
      setListField<String>('imagens_eventos_anteriores', value);

  List<String> get estilo => getListField<String>('estilo');
  set estilo(List<String>? value) => setListField<String>('estilo', value);

  String? get nomeLocal => getField<String>('nome_local');
  set nomeLocal(String? value) => setField<String>('nome_local', value);

  String? get linkIngresso => getField<String>('link_ingresso');
  set linkIngresso(String? value) => setField<String>('link_ingresso', value);

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

  DateTime? get dataFinal => getField<DateTime>('data_final');
  set dataFinal(DateTime? value) => setField<DateTime>('data_final', value);

  int? get totalFavoritos => getField<int>('total_favoritos');
  set totalFavoritos(int? value) => setField<int>('total_favoritos', value);
}
