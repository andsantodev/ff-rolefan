import '../database.dart';

class VwTodosUsuariosTable extends SupabaseTable<VwTodosUsuariosRow> {
  @override
  String get tableName => 'vw_todos_usuarios';

  @override
  VwTodosUsuariosRow createRow(Map<String, dynamic> data) =>
      VwTodosUsuariosRow(data);
}

class VwTodosUsuariosRow extends SupabaseDataRow {
  VwTodosUsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwTodosUsuariosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get idUsuario => getField<String>('id_usuario');
  set idUsuario(String? value) => setField<String>('id_usuario', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  String? get logomarca => getField<String>('logomarca');
  set logomarca(String? value) => setField<String>('logomarca', value);

  int? get idPerfil => getField<int>('id_perfil');
  set idPerfil(int? value) => setField<int>('id_perfil', value);
}
