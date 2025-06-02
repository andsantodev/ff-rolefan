import '../database.dart';

class ExcluidosUsuariosAppTable extends SupabaseTable<ExcluidosUsuariosAppRow> {
  @override
  String get tableName => 'excluidos_usuarios_app';

  @override
  ExcluidosUsuariosAppRow createRow(Map<String, dynamic> data) =>
      ExcluidosUsuariosAppRow(data);
}

class ExcluidosUsuariosAppRow extends SupabaseDataRow {
  ExcluidosUsuariosAppRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExcluidosUsuariosAppTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get dataNascimento => getField<DateTime>('data_nascimento')!;
  set dataNascimento(DateTime value) =>
      setField<DateTime>('data_nascimento', value);

  String get localizacao => getField<String>('localizacao')!;
  set localizacao(String value) => setField<String>('localizacao', value);

  DateTime get dataCriacao => getField<DateTime>('data_criacao')!;
  set dataCriacao(DateTime value) => setField<DateTime>('data_criacao', value);

  DateTime get dataExclusao => getField<DateTime>('data_exclusao')!;
  set dataExclusao(DateTime value) =>
      setField<DateTime>('data_exclusao', value);

  String get idUsuarioApp => getField<String>('id_usuario_app')!;
  set idUsuarioApp(String value) => setField<String>('id_usuario_app', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
