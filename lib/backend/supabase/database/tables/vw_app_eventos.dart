import '../database.dart';

class VwAppEventosTable extends SupabaseTable<VwAppEventosRow> {
  @override
  String get tableName => 'vw_app_eventos';

  @override
  VwAppEventosRow createRow(Map<String, dynamic> data) => VwAppEventosRow(data);
}

class VwAppEventosRow extends SupabaseDataRow {
  VwAppEventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwAppEventosTable();

  int? get idEvento => getField<int>('id_evento');
  set idEvento(int? value) => setField<int>('id_evento', value);

  DateTime? get dataCriacao => getField<DateTime>('data_criacao');
  set dataCriacao(DateTime? value) => setField<DateTime>('data_criacao', value);

  String? get bannerEvento => getField<String>('banner_evento');
  set bannerEvento(String? value) => setField<String>('banner_evento', value);

  String? get nomeEvento => getField<String>('nome_evento');
  set nomeEvento(String? value) => setField<String>('nome_evento', value);

  String? get enderecoEvento => getField<String>('endereco_evento');
  set enderecoEvento(String? value) =>
      setField<String>('endereco_evento', value);

  String? get coordenadas => getField<String>('coordenadas');
  set coordenadas(String? value) => setField<String>('coordenadas', value);

  String? get point => getField<String>('point');
  set point(String? value) => setField<String>('point', value);

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

  List<String> get estilo => getListField<String>('estilo');
  set estilo(List<String>? value) => setListField<String>('estilo', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  List<String> get imagensEventosAnteriores =>
      getListField<String>('imagens_eventos_anteriores');
  set imagensEventosAnteriores(List<String>? value) =>
      setListField<String>('imagens_eventos_anteriores', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get nomeLocal => getField<String>('nome_local');
  set nomeLocal(String? value) => setField<String>('nome_local', value);

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);

  String? get nomeEmpresa => getField<String>('nome_empresa');
  set nomeEmpresa(String? value) => setField<String>('nome_empresa', value);

  String? get logomarca => getField<String>('logomarca');
  set logomarca(String? value) => setField<String>('logomarca', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);

  int? get totalFavoritos => getField<int>('total_favoritos');
  set totalFavoritos(int? value) => setField<int>('total_favoritos', value);
}
