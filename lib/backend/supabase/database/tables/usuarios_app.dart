import '../database.dart';

class UsuariosAppTable extends SupabaseTable<UsuariosAppRow> {
  @override
  String get tableName => 'usuarios_app';

  @override
  UsuariosAppRow createRow(Map<String, dynamic> data) => UsuariosAppRow(data);
}

class UsuariosAppRow extends SupabaseDataRow {
  UsuariosAppRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosAppTable();

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

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  DateTime get dataAtualizacao => getField<DateTime>('data_atualizacao')!;
  set dataAtualizacao(DateTime value) =>
      setField<DateTime>('data_atualizacao', value);

  String? get fotoPerfil => getField<String>('foto_perfil');
  set fotoPerfil(String? value) => setField<String>('foto_perfil', value);

  int get idPerfil => getField<int>('id_perfil')!;
  set idPerfil(int value) => setField<int>('id_perfil', value);

  bool get modoEscuro => getField<bool>('modo_escuro')!;
  set modoEscuro(bool value) => setField<bool>('modo_escuro', value);

  String? get rua => getField<String>('rua');
  set rua(String? value) => setField<String>('rua', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get coordenadas => getField<String>('coordenadas');
  set coordenadas(String? value) => setField<String>('coordenadas', value);
}
