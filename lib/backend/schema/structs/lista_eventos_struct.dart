// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaEventosStruct extends BaseStruct {
  ListaEventosStruct({
    int? idEvento,
    String? dataCriacao,
    String? bannerEvento,
    String? nomeEvento,
    String? enderecoEvento,
    String? urlEndereco,
    String? data,
    String? horarioInicial,
    String? horarioFinal,
    bool? acessiblidade,
    List<String>? estilo,
    int? valor,
    String? descricao,
    String? imagensEventosAnteriores,
    String? status,
    String? idEmpresa,
    String? nomeEmpresa,
    String? logomarca,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? site,
  })  : _idEvento = idEvento,
        _dataCriacao = dataCriacao,
        _bannerEvento = bannerEvento,
        _nomeEvento = nomeEvento,
        _enderecoEvento = enderecoEvento,
        _urlEndereco = urlEndereco,
        _data = data,
        _horarioInicial = horarioInicial,
        _horarioFinal = horarioFinal,
        _acessiblidade = acessiblidade,
        _estilo = estilo,
        _valor = valor,
        _descricao = descricao,
        _imagensEventosAnteriores = imagensEventosAnteriores,
        _status = status,
        _idEmpresa = idEmpresa,
        _nomeEmpresa = nomeEmpresa,
        _logomarca = logomarca,
        _facebook = facebook,
        _instagram = instagram,
        _tiktok = tiktok,
        _site = site;

  // "id_evento" field.
  int? _idEvento;
  int get idEvento => _idEvento ?? 0;
  set idEvento(int? val) => _idEvento = val;

  void incrementIdEvento(int amount) => idEvento = idEvento + amount;

  bool hasIdEvento() => _idEvento != null;

  // "data_criacao" field.
  String? _dataCriacao;
  String get dataCriacao => _dataCriacao ?? '';
  set dataCriacao(String? val) => _dataCriacao = val;

  bool hasDataCriacao() => _dataCriacao != null;

  // "banner_evento" field.
  String? _bannerEvento;
  String get bannerEvento => _bannerEvento ?? '';
  set bannerEvento(String? val) => _bannerEvento = val;

  bool hasBannerEvento() => _bannerEvento != null;

  // "nome_evento" field.
  String? _nomeEvento;
  String get nomeEvento => _nomeEvento ?? '';
  set nomeEvento(String? val) => _nomeEvento = val;

  bool hasNomeEvento() => _nomeEvento != null;

  // "endereco_evento" field.
  String? _enderecoEvento;
  String get enderecoEvento => _enderecoEvento ?? '';
  set enderecoEvento(String? val) => _enderecoEvento = val;

  bool hasEnderecoEvento() => _enderecoEvento != null;

  // "url_endereco" field.
  String? _urlEndereco;
  String get urlEndereco => _urlEndereco ?? '';
  set urlEndereco(String? val) => _urlEndereco = val;

  bool hasUrlEndereco() => _urlEndereco != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  // "horario_inicial" field.
  String? _horarioInicial;
  String get horarioInicial => _horarioInicial ?? '';
  set horarioInicial(String? val) => _horarioInicial = val;

  bool hasHorarioInicial() => _horarioInicial != null;

  // "horario_final" field.
  String? _horarioFinal;
  String get horarioFinal => _horarioFinal ?? '';
  set horarioFinal(String? val) => _horarioFinal = val;

  bool hasHorarioFinal() => _horarioFinal != null;

  // "acessiblidade" field.
  bool? _acessiblidade;
  bool get acessiblidade => _acessiblidade ?? false;
  set acessiblidade(bool? val) => _acessiblidade = val;

  bool hasAcessiblidade() => _acessiblidade != null;

  // "estilo" field.
  List<String>? _estilo;
  List<String> get estilo => _estilo ?? const [];
  set estilo(List<String>? val) => _estilo = val;

  void updateEstilo(Function(List<String>) updateFn) {
    updateFn(_estilo ??= []);
  }

  bool hasEstilo() => _estilo != null;

  // "valor" field.
  int? _valor;
  int get valor => _valor ?? 0;
  set valor(int? val) => _valor = val;

  void incrementValor(int amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "imagens_eventos_anteriores" field.
  String? _imagensEventosAnteriores;
  String get imagensEventosAnteriores => _imagensEventosAnteriores ?? '';
  set imagensEventosAnteriores(String? val) => _imagensEventosAnteriores = val;

  bool hasImagensEventosAnteriores() => _imagensEventosAnteriores != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "id_empresa" field.
  String? _idEmpresa;
  String get idEmpresa => _idEmpresa ?? '';
  set idEmpresa(String? val) => _idEmpresa = val;

  bool hasIdEmpresa() => _idEmpresa != null;

  // "nome_empresa" field.
  String? _nomeEmpresa;
  String get nomeEmpresa => _nomeEmpresa ?? '';
  set nomeEmpresa(String? val) => _nomeEmpresa = val;

  bool hasNomeEmpresa() => _nomeEmpresa != null;

  // "logomarca" field.
  String? _logomarca;
  String get logomarca => _logomarca ?? '';
  set logomarca(String? val) => _logomarca = val;

  bool hasLogomarca() => _logomarca != null;

  // "facebook" field.
  String? _facebook;
  String get facebook => _facebook ?? '';
  set facebook(String? val) => _facebook = val;

  bool hasFacebook() => _facebook != null;

  // "instagram" field.
  String? _instagram;
  String get instagram => _instagram ?? '';
  set instagram(String? val) => _instagram = val;

  bool hasInstagram() => _instagram != null;

  // "tiktok" field.
  String? _tiktok;
  String get tiktok => _tiktok ?? '';
  set tiktok(String? val) => _tiktok = val;

  bool hasTiktok() => _tiktok != null;

  // "site" field.
  String? _site;
  String get site => _site ?? '';
  set site(String? val) => _site = val;

  bool hasSite() => _site != null;

  static ListaEventosStruct fromMap(Map<String, dynamic> data) =>
      ListaEventosStruct(
        idEvento: castToType<int>(data['id_evento']),
        dataCriacao: data['data_criacao'] as String?,
        bannerEvento: data['banner_evento'] as String?,
        nomeEvento: data['nome_evento'] as String?,
        enderecoEvento: data['endereco_evento'] as String?,
        urlEndereco: data['url_endereco'] as String?,
        data: data['data'] as String?,
        horarioInicial: data['horario_inicial'] as String?,
        horarioFinal: data['horario_final'] as String?,
        acessiblidade: data['acessiblidade'] as bool?,
        estilo: getDataList(data['estilo']),
        valor: castToType<int>(data['valor']),
        descricao: data['descricao'] as String?,
        imagensEventosAnteriores: data['imagens_eventos_anteriores'] as String?,
        status: data['status'] as String?,
        idEmpresa: data['id_empresa'] as String?,
        nomeEmpresa: data['nome_empresa'] as String?,
        logomarca: data['logomarca'] as String?,
        facebook: data['facebook'] as String?,
        instagram: data['instagram'] as String?,
        tiktok: data['tiktok'] as String?,
        site: data['site'] as String?,
      );

  static ListaEventosStruct? maybeFromMap(dynamic data) => data is Map
      ? ListaEventosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id_evento': _idEvento,
        'data_criacao': _dataCriacao,
        'banner_evento': _bannerEvento,
        'nome_evento': _nomeEvento,
        'endereco_evento': _enderecoEvento,
        'url_endereco': _urlEndereco,
        'data': _data,
        'horario_inicial': _horarioInicial,
        'horario_final': _horarioFinal,
        'acessiblidade': _acessiblidade,
        'estilo': _estilo,
        'valor': _valor,
        'descricao': _descricao,
        'imagens_eventos_anteriores': _imagensEventosAnteriores,
        'status': _status,
        'id_empresa': _idEmpresa,
        'nome_empresa': _nomeEmpresa,
        'logomarca': _logomarca,
        'facebook': _facebook,
        'instagram': _instagram,
        'tiktok': _tiktok,
        'site': _site,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id_evento': serializeParam(
          _idEvento,
          ParamType.int,
        ),
        'data_criacao': serializeParam(
          _dataCriacao,
          ParamType.String,
        ),
        'banner_evento': serializeParam(
          _bannerEvento,
          ParamType.String,
        ),
        'nome_evento': serializeParam(
          _nomeEvento,
          ParamType.String,
        ),
        'endereco_evento': serializeParam(
          _enderecoEvento,
          ParamType.String,
        ),
        'url_endereco': serializeParam(
          _urlEndereco,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
        'horario_inicial': serializeParam(
          _horarioInicial,
          ParamType.String,
        ),
        'horario_final': serializeParam(
          _horarioFinal,
          ParamType.String,
        ),
        'acessiblidade': serializeParam(
          _acessiblidade,
          ParamType.bool,
        ),
        'estilo': serializeParam(
          _estilo,
          ParamType.String,
          isList: true,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.int,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'imagens_eventos_anteriores': serializeParam(
          _imagensEventosAnteriores,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'id_empresa': serializeParam(
          _idEmpresa,
          ParamType.String,
        ),
        'nome_empresa': serializeParam(
          _nomeEmpresa,
          ParamType.String,
        ),
        'logomarca': serializeParam(
          _logomarca,
          ParamType.String,
        ),
        'facebook': serializeParam(
          _facebook,
          ParamType.String,
        ),
        'instagram': serializeParam(
          _instagram,
          ParamType.String,
        ),
        'tiktok': serializeParam(
          _tiktok,
          ParamType.String,
        ),
        'site': serializeParam(
          _site,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListaEventosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListaEventosStruct(
        idEvento: deserializeParam(
          data['id_evento'],
          ParamType.int,
          false,
        ),
        dataCriacao: deserializeParam(
          data['data_criacao'],
          ParamType.String,
          false,
        ),
        bannerEvento: deserializeParam(
          data['banner_evento'],
          ParamType.String,
          false,
        ),
        nomeEvento: deserializeParam(
          data['nome_evento'],
          ParamType.String,
          false,
        ),
        enderecoEvento: deserializeParam(
          data['endereco_evento'],
          ParamType.String,
          false,
        ),
        urlEndereco: deserializeParam(
          data['url_endereco'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
        horarioInicial: deserializeParam(
          data['horario_inicial'],
          ParamType.String,
          false,
        ),
        horarioFinal: deserializeParam(
          data['horario_final'],
          ParamType.String,
          false,
        ),
        acessiblidade: deserializeParam(
          data['acessiblidade'],
          ParamType.bool,
          false,
        ),
        estilo: deserializeParam<String>(
          data['estilo'],
          ParamType.String,
          true,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        imagensEventosAnteriores: deserializeParam(
          data['imagens_eventos_anteriores'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        idEmpresa: deserializeParam(
          data['id_empresa'],
          ParamType.String,
          false,
        ),
        nomeEmpresa: deserializeParam(
          data['nome_empresa'],
          ParamType.String,
          false,
        ),
        logomarca: deserializeParam(
          data['logomarca'],
          ParamType.String,
          false,
        ),
        facebook: deserializeParam(
          data['facebook'],
          ParamType.String,
          false,
        ),
        instagram: deserializeParam(
          data['instagram'],
          ParamType.String,
          false,
        ),
        tiktok: deserializeParam(
          data['tiktok'],
          ParamType.String,
          false,
        ),
        site: deserializeParam(
          data['site'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListaEventosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListaEventosStruct &&
        idEvento == other.idEvento &&
        dataCriacao == other.dataCriacao &&
        bannerEvento == other.bannerEvento &&
        nomeEvento == other.nomeEvento &&
        enderecoEvento == other.enderecoEvento &&
        urlEndereco == other.urlEndereco &&
        data == other.data &&
        horarioInicial == other.horarioInicial &&
        horarioFinal == other.horarioFinal &&
        acessiblidade == other.acessiblidade &&
        listEquality.equals(estilo, other.estilo) &&
        valor == other.valor &&
        descricao == other.descricao &&
        imagensEventosAnteriores == other.imagensEventosAnteriores &&
        status == other.status &&
        idEmpresa == other.idEmpresa &&
        nomeEmpresa == other.nomeEmpresa &&
        logomarca == other.logomarca &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        tiktok == other.tiktok &&
        site == other.site;
  }

  @override
  int get hashCode => const ListEquality().hash([
        idEvento,
        dataCriacao,
        bannerEvento,
        nomeEvento,
        enderecoEvento,
        urlEndereco,
        data,
        horarioInicial,
        horarioFinal,
        acessiblidade,
        estilo,
        valor,
        descricao,
        imagensEventosAnteriores,
        status,
        idEmpresa,
        nomeEmpresa,
        logomarca,
        facebook,
        instagram,
        tiktok,
        site
      ]);
}

ListaEventosStruct createListaEventosStruct({
  int? idEvento,
  String? dataCriacao,
  String? bannerEvento,
  String? nomeEvento,
  String? enderecoEvento,
  String? urlEndereco,
  String? data,
  String? horarioInicial,
  String? horarioFinal,
  bool? acessiblidade,
  int? valor,
  String? descricao,
  String? imagensEventosAnteriores,
  String? status,
  String? idEmpresa,
  String? nomeEmpresa,
  String? logomarca,
  String? facebook,
  String? instagram,
  String? tiktok,
  String? site,
}) =>
    ListaEventosStruct(
      idEvento: idEvento,
      dataCriacao: dataCriacao,
      bannerEvento: bannerEvento,
      nomeEvento: nomeEvento,
      enderecoEvento: enderecoEvento,
      urlEndereco: urlEndereco,
      data: data,
      horarioInicial: horarioInicial,
      horarioFinal: horarioFinal,
      acessiblidade: acessiblidade,
      valor: valor,
      descricao: descricao,
      imagensEventosAnteriores: imagensEventosAnteriores,
      status: status,
      idEmpresa: idEmpresa,
      nomeEmpresa: nomeEmpresa,
      logomarca: logomarca,
      facebook: facebook,
      instagram: instagram,
      tiktok: tiktok,
      site: site,
    );
