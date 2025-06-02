import '../database.dart';

class EventosTable extends SupabaseTable<EventosRow> {
  @override
  String get tableName => 'eventos';

  @override
  EventosRow createRow(Map<String, dynamic> data) => EventosRow(data);
}

class EventosRow extends SupabaseDataRow {
  EventosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EventosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);

  String? get imagemBanner => getField<String>('imagem_banner');
  set imagemBanner(String? value) => setField<String>('imagem_banner', value);

  String get nomeEvento => getField<String>('nome_evento')!;
  set nomeEvento(String value) => setField<String>('nome_evento', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  String get endereco => getField<String>('endereco')!;
  set endereco(String value) => setField<String>('endereco', value);

  String get coordenadas => getField<String>('coordenadas')!;
  set coordenadas(String value) => setField<String>('coordenadas', value);

  DateTime get dataField => getField<DateTime>('data')!;
  set dataField(DateTime value) => setField<DateTime>('data', value);

  PostgresTime get horarioInicial => getField<PostgresTime>('horario_inicial')!;
  set horarioInicial(PostgresTime value) =>
      setField<PostgresTime>('horario_inicial', value);

  PostgresTime? get horarioFinal => getField<PostgresTime>('horario_final');
  set horarioFinal(PostgresTime? value) =>
      setField<PostgresTime>('horario_final', value);

  double get valor => getField<double>('valor')!;
  set valor(double value) => setField<double>('valor', value);

  bool get acessiblidade => getField<bool>('acessiblidade')!;
  set acessiblidade(bool value) => setField<bool>('acessiblidade', value);

  DateTime? get dataAtualizacao => getField<DateTime>('data_atualizacao');
  set dataAtualizacao(DateTime? value) =>
      setField<DateTime>('data_atualizacao', value);

  int? get idCategorias => getField<int>('id_categorias');
  set idCategorias(int? value) => setField<int>('id_categorias', value);

  int? get idEstilo => getField<int>('id_estilo');
  set idEstilo(int? value) => setField<int>('id_estilo', value);

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

  String? get point => getField<String>('point');
  set point(String? value) => setField<String>('point', value);

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
}
