import '../database.dart';

class UsuariosPerfilTable extends SupabaseTable<UsuariosPerfilRow> {
  @override
  String get tableName => 'usuarios_perfil';

  @override
  UsuariosPerfilRow createRow(Map<String, dynamic> data) =>
      UsuariosPerfilRow(data);
}

class UsuariosPerfilRow extends SupabaseDataRow {
  UsuariosPerfilRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosPerfilTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get perfil => getField<String>('perfil')!;
  set perfil(String value) => setField<String>('perfil', value);
}
