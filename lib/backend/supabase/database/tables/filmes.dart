import '../database.dart';

class FilmesTable extends SupabaseTable<FilmesRow> {
  @override
  String get tableName => 'filmes';

  @override
  FilmesRow createRow(Map<String, dynamic> data) => FilmesRow(data);
}

class FilmesRow extends SupabaseDataRow {
  FilmesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FilmesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imagemBanner => getField<String>('imagem_banner');
  set imagemBanner(String? value) => setField<String>('imagem_banner', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  String get plataforma => getField<String>('plataforma')!;
  set plataforma(String value) => setField<String>('plataforma', value);

  String get duracao => getField<String>('duracao')!;
  set duracao(String value) => setField<String>('duracao', value);

  String get classificacaoEtaria => getField<String>('classificacao_etaria')!;
  set classificacaoEtaria(String value) =>
      setField<String>('classificacao_etaria', value);

  String get genero => getField<String>('genero')!;
  set genero(String value) => setField<String>('genero', value);

  int? get idCategoria => getField<int>('id_categoria');
  set idCategoria(int? value) => setField<int>('id_categoria', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get trailer => getField<String>('trailer');
  set trailer(String? value) => setField<String>('trailer', value);
}
