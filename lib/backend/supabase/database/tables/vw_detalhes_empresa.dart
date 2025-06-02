import '../database.dart';

class VwDetalhesEmpresaTable extends SupabaseTable<VwDetalhesEmpresaRow> {
  @override
  String get tableName => 'vw_detalhes_empresa';

  @override
  VwDetalhesEmpresaRow createRow(Map<String, dynamic> data) =>
      VwDetalhesEmpresaRow(data);
}

class VwDetalhesEmpresaRow extends SupabaseDataRow {
  VwDetalhesEmpresaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwDetalhesEmpresaTable();

  String? get idEmpresa => getField<String>('id_empresa');
  set idEmpresa(String? value) => setField<String>('id_empresa', value);

  DateTime? get dataCadastro => getField<DateTime>('data_cadastro');
  set dataCadastro(DateTime? value) =>
      setField<DateTime>('data_cadastro', value);

  String? get logomarca => getField<String>('logomarca');
  set logomarca(String? value) => setField<String>('logomarca', value);

  String? get nomeFantasia => getField<String>('nome_fantasia');
  set nomeFantasia(String? value) => setField<String>('nome_fantasia', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);

  String? get nomeResponsavel => getField<String>('nome_responsavel');
  set nomeResponsavel(String? value) =>
      setField<String>('nome_responsavel', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get contato => getField<String>('contato');
  set contato(String? value) => setField<String>('contato', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get idEstado => getField<int>('id_estado');
  set idEstado(int? value) => setField<int>('id_estado', value);

  String? get nomeEstado => getField<String>('nome_estado');
  set nomeEstado(String? value) => setField<String>('nome_estado', value);

  int? get idTipoParceria => getField<int>('id_tipo_parceria');
  set idTipoParceria(int? value) => setField<int>('id_tipo_parceria', value);

  String? get nomeTipoParceria => getField<String>('nome_tipo_parceria');
  set nomeTipoParceria(String? value) =>
      setField<String>('nome_tipo_parceria', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);

  String? get facebook => getField<String>('facebook');
  set facebook(String? value) => setField<String>('facebook', value);

  String? get instagram => getField<String>('instagram');
  set instagram(String? value) => setField<String>('instagram', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);
}
