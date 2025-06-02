import '../database.dart';

class UsuariosAdminTable extends SupabaseTable<UsuariosAdminRow> {
  @override
  String get tableName => 'usuarios_admin';

  @override
  UsuariosAdminRow createRow(Map<String, dynamic> data) =>
      UsuariosAdminRow(data);
}

class UsuariosAdminRow extends SupabaseDataRow {
  UsuariosAdminRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosAdminTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  DateTime? get dataAtualizacao => getField<DateTime>('data_atualizacao');
  set dataAtualizacao(DateTime? value) =>
      setField<DateTime>('data_atualizacao', value);

  int get idPerfil => getField<int>('id_perfil')!;
  set idPerfil(int value) => setField<int>('id_perfil', value);
}
