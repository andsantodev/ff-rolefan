import '../database.dart';

class VwUsuariosPlataformaTable extends SupabaseTable<VwUsuariosPlataformaRow> {
  @override
  String get tableName => 'vw_usuarios_plataforma';

  @override
  VwUsuariosPlataformaRow createRow(Map<String, dynamic> data) =>
      VwUsuariosPlataformaRow(data);
}

class VwUsuariosPlataformaRow extends SupabaseDataRow {
  VwUsuariosPlataformaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwUsuariosPlataformaTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get idPerfil => getField<int>('id_perfil');
  set idPerfil(int? value) => setField<int>('id_perfil', value);

  String? get nomePerfil => getField<String>('nome_perfil');
  set nomePerfil(String? value) => setField<String>('nome_perfil', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);
}
