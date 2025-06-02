import '../database.dart';

class UsuariosEmpresasTable extends SupabaseTable<UsuariosEmpresasRow> {
  @override
  String get tableName => 'usuarios_empresas';

  @override
  UsuariosEmpresasRow createRow(Map<String, dynamic> data) =>
      UsuariosEmpresasRow(data);
}

class UsuariosEmpresasRow extends SupabaseDataRow {
  UsuariosEmpresasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsuariosEmpresasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get logomarca => getField<String>('logomarca');
  set logomarca(String? value) => setField<String>('logomarca', value);

  String? get nomeFantasia => getField<String>('nome_fantasia');
  set nomeFantasia(String? value) => setField<String>('nome_fantasia', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  DateTime get dataAtualizacao => getField<DateTime>('data_atualizacao')!;
  set dataAtualizacao(DateTime value) =>
      setField<DateTime>('data_atualizacao', value);

  int get idTipoParceria => getField<int>('id_tipo_parceria')!;
  set idTipoParceria(int value) => setField<int>('id_tipo_parceria', value);

  int get idEstado => getField<int>('id_estado')!;
  set idEstado(int value) => setField<int>('id_estado', value);

  int get idPerfil => getField<int>('id_perfil')!;
  set idPerfil(int value) => setField<int>('id_perfil', value);
}
