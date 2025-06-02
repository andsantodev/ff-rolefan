// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuncRestaurantesPorDistanciaStruct extends BaseStruct {
  FuncRestaurantesPorDistanciaStruct({
    int? id,
    String? nome,
    String? dataCriacao,
    String? descricao,
    String? endereco,
    String? coordenadas,
    double? latitude,
    double? longitude,
    double? distMeters,
    bool? acessibilidade,
    String? horarioAbertura,
    String? horarioFechamento,
    String? telefone,
    String? logomarca,
    String? imagemBanner,
    String? idEmpresa,
    int? idCategoria,
    String? dataAtualizacao,
    String? site,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? nomeParceiro,
    String? status,
    List<String>? comentarios,
    double? mediaAvaliacoes,
  })  : _id = id,
        _nome = nome,
        _dataCriacao = dataCriacao,
        _descricao = descricao,
        _endereco = endereco,
        _coordenadas = coordenadas,
        _latitude = latitude,
        _longitude = longitude,
        _distMeters = distMeters,
        _acessibilidade = acessibilidade,
        _horarioAbertura = horarioAbertura,
        _horarioFechamento = horarioFechamento,
        _telefone = telefone,
        _logomarca = logomarca,
        _imagemBanner = imagemBanner,
        _idEmpresa = idEmpresa,
        _idCategoria = idCategoria,
        _dataAtualizacao = dataAtualizacao,
        _site = site,
        _facebook = facebook,
        _instagram = instagram,
        _tiktok = tiktok,
        _nomeParceiro = nomeParceiro,
        _status = status,
        _comentarios = comentarios,
        _mediaAvaliacoes = mediaAvaliacoes;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "data_criacao" field.
  String? _dataCriacao;
  String get dataCriacao => _dataCriacao ?? '';
  set dataCriacao(String? val) => _dataCriacao = val;

  bool hasDataCriacao() => _dataCriacao != null;

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

  // "acessibilidade" field.
  bool? _acessibilidade;
  bool get acessibilidade => _acessibilidade ?? false;
  set acessibilidade(bool? val) => _acessibilidade = val;

  bool hasAcessibilidade() => _acessibilidade != null;

  // "horario_abertura" field.
  String? _horarioAbertura;
  String get horarioAbertura => _horarioAbertura ?? '';
  set horarioAbertura(String? val) => _horarioAbertura = val;

  bool hasHorarioAbertura() => _horarioAbertura != null;

  // "horario_fechamento" field.
  String? _horarioFechamento;
  String get horarioFechamento => _horarioFechamento ?? '';
  set horarioFechamento(String? val) => _horarioFechamento = val;

  bool hasHorarioFechamento() => _horarioFechamento != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "logomarca" field.
  String? _logomarca;
  String get logomarca => _logomarca ?? '';
  set logomarca(String? val) => _logomarca = val;

  bool hasLogomarca() => _logomarca != null;

  // "imagem_banner" field.
  String? _imagemBanner;
  String get imagemBanner => _imagemBanner ?? '';
  set imagemBanner(String? val) => _imagemBanner = val;

  bool hasImagemBanner() => _imagemBanner != null;

  // "id_empresa" field.
  String? _idEmpresa;
  String get idEmpresa => _idEmpresa ?? '';
  set idEmpresa(String? val) => _idEmpresa = val;

  bool hasIdEmpresa() => _idEmpresa != null;

  // "id_categoria" field.
  int? _idCategoria;
  int get idCategoria => _idCategoria ?? 0;
  set idCategoria(int? val) => _idCategoria = val;

  void incrementIdCategoria(int amount) => idCategoria = idCategoria + amount;

  bool hasIdCategoria() => _idCategoria != null;

  // "data_atualizacao" field.
  String? _dataAtualizacao;
  String get dataAtualizacao => _dataAtualizacao ?? '';
  set dataAtualizacao(String? val) => _dataAtualizacao = val;

  bool hasDataAtualizacao() => _dataAtualizacao != null;

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "comentarios" field.
  List<String>? _comentarios;
  List<String> get comentarios => _comentarios ?? const [];
  set comentarios(List<String>? val) => _comentarios = val;

  void updateComentarios(Function(List<String>) updateFn) {
    updateFn(_comentarios ??= []);
  }

  bool hasComentarios() => _comentarios != null;

  // "media_avaliacoes" field.
  double? _mediaAvaliacoes;
  double get mediaAvaliacoes => _mediaAvaliacoes ?? 0.0;
  set mediaAvaliacoes(double? val) => _mediaAvaliacoes = val;

  void incrementMediaAvaliacoes(double amount) =>
      mediaAvaliacoes = mediaAvaliacoes + amount;

  bool hasMediaAvaliacoes() => _mediaAvaliacoes != null;

  static FuncRestaurantesPorDistanciaStruct fromMap(
          Map<String, dynamic> data) =>
      FuncRestaurantesPorDistanciaStruct(
        id: castToType<int>(data['id']),
        nome: data['nome'] as String?,
        dataCriacao: data['data_criacao'] as String?,
        descricao: data['descricao'] as String?,
        endereco: data['endereco'] as String?,
        coordenadas: data['coordenadas'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        distMeters: castToType<double>(data['dist_meters']),
        acessibilidade: data['acessibilidade'] as bool?,
        horarioAbertura: data['horario_abertura'] as String?,
        horarioFechamento: data['horario_fechamento'] as String?,
        telefone: data['telefone'] as String?,
        logomarca: data['logomarca'] as String?,
        imagemBanner: data['imagem_banner'] as String?,
        idEmpresa: data['id_empresa'] as String?,
        idCategoria: castToType<int>(data['id_categoria']),
        dataAtualizacao: data['data_atualizacao'] as String?,
        site: data['site'] as String?,
        facebook: data['facebook'] as String?,
        instagram: data['instagram'] as String?,
        tiktok: data['tiktok'] as String?,
        nomeParceiro: data['nome_parceiro'] as String?,
        status: data['status'] as String?,
        comentarios: getDataList(data['comentarios']),
        mediaAvaliacoes: castToType<double>(data['media_avaliacoes']),
      );

  static FuncRestaurantesPorDistanciaStruct? maybeFromMap(dynamic data) => data
          is Map
      ? FuncRestaurantesPorDistanciaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'nome': _nome,
        'data_criacao': _dataCriacao,
        'descricao': _descricao,
        'endereco': _endereco,
        'coordenadas': _coordenadas,
        'latitude': _latitude,
        'longitude': _longitude,
        'dist_meters': _distMeters,
        'acessibilidade': _acessibilidade,
        'horario_abertura': _horarioAbertura,
        'horario_fechamento': _horarioFechamento,
        'telefone': _telefone,
        'logomarca': _logomarca,
        'imagem_banner': _imagemBanner,
        'id_empresa': _idEmpresa,
        'id_categoria': _idCategoria,
        'data_atualizacao': _dataAtualizacao,
        'site': _site,
        'facebook': _facebook,
        'instagram': _instagram,
        'tiktok': _tiktok,
        'nome_parceiro': _nomeParceiro,
        'status': _status,
        'comentarios': _comentarios,
        'media_avaliacoes': _mediaAvaliacoes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'data_criacao': serializeParam(
          _dataCriacao,
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
        'acessibilidade': serializeParam(
          _acessibilidade,
          ParamType.bool,
        ),
        'horario_abertura': serializeParam(
          _horarioAbertura,
          ParamType.String,
        ),
        'horario_fechamento': serializeParam(
          _horarioFechamento,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'logomarca': serializeParam(
          _logomarca,
          ParamType.String,
        ),
        'imagem_banner': serializeParam(
          _imagemBanner,
          ParamType.String,
        ),
        'id_empresa': serializeParam(
          _idEmpresa,
          ParamType.String,
        ),
        'id_categoria': serializeParam(
          _idCategoria,
          ParamType.int,
        ),
        'data_atualizacao': serializeParam(
          _dataAtualizacao,
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
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'comentarios': serializeParam(
          _comentarios,
          ParamType.String,
          isList: true,
        ),
        'media_avaliacoes': serializeParam(
          _mediaAvaliacoes,
          ParamType.double,
        ),
      }.withoutNulls;

  static FuncRestaurantesPorDistanciaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      FuncRestaurantesPorDistanciaStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        dataCriacao: deserializeParam(
          data['data_criacao'],
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
        acessibilidade: deserializeParam(
          data['acessibilidade'],
          ParamType.bool,
          false,
        ),
        horarioAbertura: deserializeParam(
          data['horario_abertura'],
          ParamType.String,
          false,
        ),
        horarioFechamento: deserializeParam(
          data['horario_fechamento'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        logomarca: deserializeParam(
          data['logomarca'],
          ParamType.String,
          false,
        ),
        imagemBanner: deserializeParam(
          data['imagem_banner'],
          ParamType.String,
          false,
        ),
        idEmpresa: deserializeParam(
          data['id_empresa'],
          ParamType.String,
          false,
        ),
        idCategoria: deserializeParam(
          data['id_categoria'],
          ParamType.int,
          false,
        ),
        dataAtualizacao: deserializeParam(
          data['data_atualizacao'],
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
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        comentarios: deserializeParam<String>(
          data['comentarios'],
          ParamType.String,
          true,
        ),
        mediaAvaliacoes: deserializeParam(
          data['media_avaliacoes'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'FuncRestaurantesPorDistanciaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FuncRestaurantesPorDistanciaStruct &&
        id == other.id &&
        nome == other.nome &&
        dataCriacao == other.dataCriacao &&
        descricao == other.descricao &&
        endereco == other.endereco &&
        coordenadas == other.coordenadas &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        distMeters == other.distMeters &&
        acessibilidade == other.acessibilidade &&
        horarioAbertura == other.horarioAbertura &&
        horarioFechamento == other.horarioFechamento &&
        telefone == other.telefone &&
        logomarca == other.logomarca &&
        imagemBanner == other.imagemBanner &&
        idEmpresa == other.idEmpresa &&
        idCategoria == other.idCategoria &&
        dataAtualizacao == other.dataAtualizacao &&
        site == other.site &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        tiktok == other.tiktok &&
        nomeParceiro == other.nomeParceiro &&
        status == other.status &&
        listEquality.equals(comentarios, other.comentarios) &&
        mediaAvaliacoes == other.mediaAvaliacoes;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nome,
        dataCriacao,
        descricao,
        endereco,
        coordenadas,
        latitude,
        longitude,
        distMeters,
        acessibilidade,
        horarioAbertura,
        horarioFechamento,
        telefone,
        logomarca,
        imagemBanner,
        idEmpresa,
        idCategoria,
        dataAtualizacao,
        site,
        facebook,
        instagram,
        tiktok,
        nomeParceiro,
        status,
        comentarios,
        mediaAvaliacoes
      ]);
}

FuncRestaurantesPorDistanciaStruct createFuncRestaurantesPorDistanciaStruct({
  int? id,
  String? nome,
  String? dataCriacao,
  String? descricao,
  String? endereco,
  String? coordenadas,
  double? latitude,
  double? longitude,
  double? distMeters,
  bool? acessibilidade,
  String? horarioAbertura,
  String? horarioFechamento,
  String? telefone,
  String? logomarca,
  String? imagemBanner,
  String? idEmpresa,
  int? idCategoria,
  String? dataAtualizacao,
  String? site,
  String? facebook,
  String? instagram,
  String? tiktok,
  String? nomeParceiro,
  String? status,
  double? mediaAvaliacoes,
}) =>
    FuncRestaurantesPorDistanciaStruct(
      id: id,
      nome: nome,
      dataCriacao: dataCriacao,
      descricao: descricao,
      endereco: endereco,
      coordenadas: coordenadas,
      latitude: latitude,
      longitude: longitude,
      distMeters: distMeters,
      acessibilidade: acessibilidade,
      horarioAbertura: horarioAbertura,
      horarioFechamento: horarioFechamento,
      telefone: telefone,
      logomarca: logomarca,
      imagemBanner: imagemBanner,
      idEmpresa: idEmpresa,
      idCategoria: idCategoria,
      dataAtualizacao: dataAtualizacao,
      site: site,
      facebook: facebook,
      instagram: instagram,
      tiktok: tiktok,
      nomeParceiro: nomeParceiro,
      status: status,
      mediaAvaliacoes: mediaAvaliacoes,
    );
