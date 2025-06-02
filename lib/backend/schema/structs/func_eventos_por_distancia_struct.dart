// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuncEventosPorDistanciaStruct extends BaseStruct {
  FuncEventosPorDistanciaStruct({
    int? id,
    String? createdAt,
    String? idEmpresa,
    String? imagemBanner,
    String? nomeEvento,
    String? descricao,
    String? endereco,
    String? coordenadas,
    double? latitude,
    double? longitude,
    double? distMeters,
    String? data,
    String? horarioInicial,
    String? horarioFinal,
    double? valor,
    bool? acessiblidade,
    String? dataAtualizacao,
    int? idCategorias,
    String? status,
    String? imagensEventosAnteriores,
    List<String>? estilo,
    String? nomeLocal,
    String? linkIngresso,
    String? site,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? nomeParceiro,
    int? idEstilo,
    String? dataFinal,
  })  : _id = id,
        _createdAt = createdAt,
        _idEmpresa = idEmpresa,
        _imagemBanner = imagemBanner,
        _nomeEvento = nomeEvento,
        _descricao = descricao,
        _endereco = endereco,
        _coordenadas = coordenadas,
        _latitude = latitude,
        _longitude = longitude,
        _distMeters = distMeters,
        _data = data,
        _horarioInicial = horarioInicial,
        _horarioFinal = horarioFinal,
        _valor = valor,
        _acessiblidade = acessiblidade,
        _dataAtualizacao = dataAtualizacao,
        _idCategorias = idCategorias,
        _status = status,
        _imagensEventosAnteriores = imagensEventosAnteriores,
        _estilo = estilo,
        _nomeLocal = nomeLocal,
        _linkIngresso = linkIngresso,
        _site = site,
        _facebook = facebook,
        _instagram = instagram,
        _tiktok = tiktok,
        _nomeParceiro = nomeParceiro,
        _idEstilo = idEstilo,
        _dataFinal = dataFinal;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "id_empresa" field.
  String? _idEmpresa;
  String get idEmpresa => _idEmpresa ?? '';
  set idEmpresa(String? val) => _idEmpresa = val;

  bool hasIdEmpresa() => _idEmpresa != null;

  // "imagem_banner" field.
  String? _imagemBanner;
  String get imagemBanner => _imagemBanner ?? '';
  set imagemBanner(String? val) => _imagemBanner = val;

  bool hasImagemBanner() => _imagemBanner != null;

  // "nome_evento" field.
  String? _nomeEvento;
  String get nomeEvento => _nomeEvento ?? '';
  set nomeEvento(String? val) => _nomeEvento = val;

  bool hasNomeEvento() => _nomeEvento != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

  // "coordenadas" field.
  String? _coordenadas;
  String get coordenadas => _coordenadas ?? '';
  set coordenadas(String? val) => _coordenadas = val;

  bool hasCoordenadas() => _coordenadas != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  // "dist_meters" field.
  double? _distMeters;
  double get distMeters => _distMeters ?? 0.0;
  set distMeters(double? val) => _distMeters = val;

  void incrementDistMeters(double amount) => distMeters = distMeters + amount;

  bool hasDistMeters() => _distMeters != null;

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

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;

  void incrementValor(double amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "acessiblidade" field.
  bool? _acessiblidade;
  bool get acessiblidade => _acessiblidade ?? false;
  set acessiblidade(bool? val) => _acessiblidade = val;

  bool hasAcessiblidade() => _acessiblidade != null;

  // "data_atualizacao" field.
  String? _dataAtualizacao;
  String get dataAtualizacao => _dataAtualizacao ?? '';
  set dataAtualizacao(String? val) => _dataAtualizacao = val;

  bool hasDataAtualizacao() => _dataAtualizacao != null;

  // "id_categorias" field.
  int? _idCategorias;
  int get idCategorias => _idCategorias ?? 0;
  set idCategorias(int? val) => _idCategorias = val;

  void incrementIdCategorias(int amount) =>
      idCategorias = idCategorias + amount;

  bool hasIdCategorias() => _idCategorias != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "imagens_eventos_anteriores" field.
  String? _imagensEventosAnteriores;
  String get imagensEventosAnteriores => _imagensEventosAnteriores ?? '';
  set imagensEventosAnteriores(String? val) => _imagensEventosAnteriores = val;

  bool hasImagensEventosAnteriores() => _imagensEventosAnteriores != null;

  // "estilo" field.
  List<String>? _estilo;
  List<String> get estilo => _estilo ?? const [];
  set estilo(List<String>? val) => _estilo = val;

  void updateEstilo(Function(List<String>) updateFn) {
    updateFn(_estilo ??= []);
  }

  bool hasEstilo() => _estilo != null;

  // "nome_local" field.
  String? _nomeLocal;
  String get nomeLocal => _nomeLocal ?? '';
  set nomeLocal(String? val) => _nomeLocal = val;

  bool hasNomeLocal() => _nomeLocal != null;

  // "link_ingresso" field.
  String? _linkIngresso;
  String get linkIngresso => _linkIngresso ?? '';
  set linkIngresso(String? val) => _linkIngresso = val;

  bool hasLinkIngresso() => _linkIngresso != null;

  // "site" field.
  String? _site;
  String get site => _site ?? '';
  set site(String? val) => _site = val;

  bool hasSite() => _site != null;

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

  // "nome_parceiro" field.
  String? _nomeParceiro;
  String get nomeParceiro => _nomeParceiro ?? '';
  set nomeParceiro(String? val) => _nomeParceiro = val;

  bool hasNomeParceiro() => _nomeParceiro != null;

  // "id_estilo" field.
  int? _idEstilo;
  int get idEstilo => _idEstilo ?? 0;
  set idEstilo(int? val) => _idEstilo = val;

  void incrementIdEstilo(int amount) => idEstilo = idEstilo + amount;

  bool hasIdEstilo() => _idEstilo != null;

  // "data_final" field.
  String? _dataFinal;
  String get dataFinal => _dataFinal ?? '';
  set dataFinal(String? val) => _dataFinal = val;

  bool hasDataFinal() => _dataFinal != null;

  static FuncEventosPorDistanciaStruct fromMap(Map<String, dynamic> data) =>
      FuncEventosPorDistanciaStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        idEmpresa: data['id_empresa'] as String?,
        imagemBanner: data['imagem_banner'] as String?,
        nomeEvento: data['nome_evento'] as String?,
        descricao: data['descricao'] as String?,
        endereco: data['endereco'] as String?,
        coordenadas: data['coordenadas'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        distMeters: castToType<double>(data['dist_meters']),
        data: data['data'] as String?,
        horarioInicial: data['horario_inicial'] as String?,
        horarioFinal: data['horario_final'] as String?,
        valor: castToType<double>(data['valor']),
        acessiblidade: data['acessiblidade'] as bool?,
        dataAtualizacao: data['data_atualizacao'] as String?,
        idCategorias: castToType<int>(data['id_categorias']),
        status: data['status'] as String?,
        imagensEventosAnteriores: data['imagens_eventos_anteriores'] as String?,
        estilo: getDataList(data['estilo']),
        nomeLocal: data['nome_local'] as String?,
        linkIngresso: data['link_ingresso'] as String?,
        site: data['site'] as String?,
        facebook: data['facebook'] as String?,
        instagram: data['instagram'] as String?,
        tiktok: data['tiktok'] as String?,
        nomeParceiro: data['nome_parceiro'] as String?,
        idEstilo: castToType<int>(data['id_estilo']),
        dataFinal: data['data_final'] as String?,
      );

  static FuncEventosPorDistanciaStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? FuncEventosPorDistanciaStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'id_empresa': _idEmpresa,
        'imagem_banner': _imagemBanner,
        'nome_evento': _nomeEvento,
        'descricao': _descricao,
        'endereco': _endereco,
        'coordenadas': _coordenadas,
        'latitude': _latitude,
        'longitude': _longitude,
        'dist_meters': _distMeters,
        'data': _data,
        'horario_inicial': _horarioInicial,
        'horario_final': _horarioFinal,
        'valor': _valor,
        'acessiblidade': _acessiblidade,
        'data_atualizacao': _dataAtualizacao,
        'id_categorias': _idCategorias,
        'status': _status,
        'imagens_eventos_anteriores': _imagensEventosAnteriores,
        'estilo': _estilo,
        'nome_local': _nomeLocal,
        'link_ingresso': _linkIngresso,
        'site': _site,
        'facebook': _facebook,
        'instagram': _instagram,
        'tiktok': _tiktok,
        'nome_parceiro': _nomeParceiro,
        'id_estilo': _idEstilo,
        'data_final': _dataFinal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'id_empresa': serializeParam(
          _idEmpresa,
          ParamType.String,
        ),
        'imagem_banner': serializeParam(
          _imagemBanner,
          ParamType.String,
        ),
        'nome_evento': serializeParam(
          _nomeEvento,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
          ParamType.String,
        ),
        'coordenadas': serializeParam(
          _coordenadas,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'dist_meters': serializeParam(
          _distMeters,
          ParamType.double,
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
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'acessiblidade': serializeParam(
          _acessiblidade,
          ParamType.bool,
        ),
        'data_atualizacao': serializeParam(
          _dataAtualizacao,
          ParamType.String,
        ),
        'id_categorias': serializeParam(
          _idCategorias,
          ParamType.int,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'imagens_eventos_anteriores': serializeParam(
          _imagensEventosAnteriores,
          ParamType.String,
        ),
        'estilo': serializeParam(
          _estilo,
          ParamType.String,
          isList: true,
        ),
        'nome_local': serializeParam(
          _nomeLocal,
          ParamType.String,
        ),
        'link_ingresso': serializeParam(
          _linkIngresso,
          ParamType.String,
        ),
        'site': serializeParam(
          _site,
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
        'nome_parceiro': serializeParam(
          _nomeParceiro,
          ParamType.String,
        ),
        'id_estilo': serializeParam(
          _idEstilo,
          ParamType.int,
        ),
        'data_final': serializeParam(
          _dataFinal,
          ParamType.String,
        ),
      }.withoutNulls;

  static FuncEventosPorDistanciaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FuncEventosPorDistanciaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        idEmpresa: deserializeParam(
          data['id_empresa'],
          ParamType.String,
          false,
        ),
        imagemBanner: deserializeParam(
          data['imagem_banner'],
          ParamType.String,
          false,
        ),
        nomeEvento: deserializeParam(
          data['nome_evento'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
          ParamType.String,
          false,
        ),
        coordenadas: deserializeParam(
          data['coordenadas'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        distMeters: deserializeParam(
          data['dist_meters'],
          ParamType.double,
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
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        acessiblidade: deserializeParam(
          data['acessiblidade'],
          ParamType.bool,
          false,
        ),
        dataAtualizacao: deserializeParam(
          data['data_atualizacao'],
          ParamType.String,
          false,
        ),
        idCategorias: deserializeParam(
          data['id_categorias'],
          ParamType.int,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        imagensEventosAnteriores: deserializeParam(
          data['imagens_eventos_anteriores'],
          ParamType.String,
          false,
        ),
        estilo: deserializeParam<String>(
          data['estilo'],
          ParamType.String,
          true,
        ),
        nomeLocal: deserializeParam(
          data['nome_local'],
          ParamType.String,
          false,
        ),
        linkIngresso: deserializeParam(
          data['link_ingresso'],
          ParamType.String,
          false,
        ),
        site: deserializeParam(
          data['site'],
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
        nomeParceiro: deserializeParam(
          data['nome_parceiro'],
          ParamType.String,
          false,
        ),
        idEstilo: deserializeParam(
          data['id_estilo'],
          ParamType.int,
          false,
        ),
        dataFinal: deserializeParam(
          data['data_final'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FuncEventosPorDistanciaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FuncEventosPorDistanciaStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        idEmpresa == other.idEmpresa &&
        imagemBanner == other.imagemBanner &&
        nomeEvento == other.nomeEvento &&
        descricao == other.descricao &&
        endereco == other.endereco &&
        coordenadas == other.coordenadas &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        distMeters == other.distMeters &&
        data == other.data &&
        horarioInicial == other.horarioInicial &&
        horarioFinal == other.horarioFinal &&
        valor == other.valor &&
        acessiblidade == other.acessiblidade &&
        dataAtualizacao == other.dataAtualizacao &&
        idCategorias == other.idCategorias &&
        status == other.status &&
        imagensEventosAnteriores == other.imagensEventosAnteriores &&
        listEquality.equals(estilo, other.estilo) &&
        nomeLocal == other.nomeLocal &&
        linkIngresso == other.linkIngresso &&
        site == other.site &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        tiktok == other.tiktok &&
        nomeParceiro == other.nomeParceiro &&
        idEstilo == other.idEstilo &&
        dataFinal == other.dataFinal;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        idEmpresa,
        imagemBanner,
        nomeEvento,
        descricao,
        endereco,
        coordenadas,
        latitude,
        longitude,
        distMeters,
        data,
        horarioInicial,
        horarioFinal,
        valor,
        acessiblidade,
        dataAtualizacao,
        idCategorias,
        status,
        imagensEventosAnteriores,
        estilo,
        nomeLocal,
        linkIngresso,
        site,
        facebook,
        instagram,
        tiktok,
        nomeParceiro,
        idEstilo,
        dataFinal
      ]);
}

FuncEventosPorDistanciaStruct createFuncEventosPorDistanciaStruct({
  int? id,
  String? createdAt,
  String? idEmpresa,
  String? imagemBanner,
  String? nomeEvento,
  String? descricao,
  String? endereco,
  String? coordenadas,
  double? latitude,
  double? longitude,
  double? distMeters,
  String? data,
  String? horarioInicial,
  String? horarioFinal,
  double? valor,
  bool? acessiblidade,
  String? dataAtualizacao,
  int? idCategorias,
  String? status,
  String? imagensEventosAnteriores,
  String? nomeLocal,
  String? linkIngresso,
  String? site,
  String? facebook,
  String? instagram,
  String? tiktok,
  String? nomeParceiro,
  int? idEstilo,
  String? dataFinal,
}) =>
    FuncEventosPorDistanciaStruct(
      id: id,
      createdAt: createdAt,
      idEmpresa: idEmpresa,
      imagemBanner: imagemBanner,
      nomeEvento: nomeEvento,
      descricao: descricao,
      endereco: endereco,
      coordenadas: coordenadas,
      latitude: latitude,
      longitude: longitude,
      distMeters: distMeters,
      data: data,
      horarioInicial: horarioInicial,
      horarioFinal: horarioFinal,
      valor: valor,
      acessiblidade: acessiblidade,
      dataAtualizacao: dataAtualizacao,
      idCategorias: idCategorias,
      status: status,
      imagensEventosAnteriores: imagensEventosAnteriores,
      nomeLocal: nomeLocal,
      linkIngresso: linkIngresso,
      site: site,
      facebook: facebook,
      instagram: instagram,
      tiktok: tiktok,
      nomeParceiro: nomeParceiro,
      idEstilo: idEstilo,
      dataFinal: dataFinal,
    );
