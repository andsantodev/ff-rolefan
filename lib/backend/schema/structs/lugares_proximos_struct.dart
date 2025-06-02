// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LugaresProximosStruct extends BaseStruct {
  LugaresProximosStruct({
    int? id,
    String? tipoLugar,
    String? dataCriacao,
    String? banner,
    String? evNomeEvento,
    String? rsNomeRestaurante,
    String? endereco,
    double? latitude,
    double? longitude,
    double? distMeters,
    String? evData,
    String? evHorarioInicial,
    String? evHorarioFinal,
    bool? acessibilidade,
    String? descricao,
    String? evImagensEventosAnteriores,
    String? evStatus,
    String? evNomeLocal,
    String? idEmpresa,
    String? nomeEmpresa,
    String? logomarca,
    String? facebookEmpresa,
    String? instagramEmpresa,
    String? tiktokEmpresa,
    String? siteEmpresa,
    List<String>? rsComentarios,
    String? rsTelefone,
    int? totalFavoritos,
    double? rsMediaAvaliacoes,
    double? evValor,
    List<String>? evEstilo,
    String? coordenadas,
  })  : _id = id,
        _tipoLugar = tipoLugar,
        _dataCriacao = dataCriacao,
        _banner = banner,
        _evNomeEvento = evNomeEvento,
        _rsNomeRestaurante = rsNomeRestaurante,
        _endereco = endereco,
        _latitude = latitude,
        _longitude = longitude,
        _distMeters = distMeters,
        _evData = evData,
        _evHorarioInicial = evHorarioInicial,
        _evHorarioFinal = evHorarioFinal,
        _acessibilidade = acessibilidade,
        _descricao = descricao,
        _evImagensEventosAnteriores = evImagensEventosAnteriores,
        _evStatus = evStatus,
        _evNomeLocal = evNomeLocal,
        _idEmpresa = idEmpresa,
        _nomeEmpresa = nomeEmpresa,
        _logomarca = logomarca,
        _facebookEmpresa = facebookEmpresa,
        _instagramEmpresa = instagramEmpresa,
        _tiktokEmpresa = tiktokEmpresa,
        _siteEmpresa = siteEmpresa,
        _rsComentarios = rsComentarios,
        _rsTelefone = rsTelefone,
        _totalFavoritos = totalFavoritos,
        _rsMediaAvaliacoes = rsMediaAvaliacoes,
        _evValor = evValor,
        _evEstilo = evEstilo,
        _coordenadas = coordenadas;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "tipo_lugar" field.
  String? _tipoLugar;
  String get tipoLugar => _tipoLugar ?? '';
  set tipoLugar(String? val) => _tipoLugar = val;

  bool hasTipoLugar() => _tipoLugar != null;

  // "data_criacao" field.
  String? _dataCriacao;
  String get dataCriacao => _dataCriacao ?? '';
  set dataCriacao(String? val) => _dataCriacao = val;

  bool hasDataCriacao() => _dataCriacao != null;

  // "banner" field.
  String? _banner;
  String get banner => _banner ?? '';
  set banner(String? val) => _banner = val;

  bool hasBanner() => _banner != null;

  // "ev_nome_evento" field.
  String? _evNomeEvento;
  String get evNomeEvento => _evNomeEvento ?? '';
  set evNomeEvento(String? val) => _evNomeEvento = val;

  bool hasEvNomeEvento() => _evNomeEvento != null;

  // "rs_nome_restaurante" field.
  String? _rsNomeRestaurante;
  String get rsNomeRestaurante => _rsNomeRestaurante ?? '';
  set rsNomeRestaurante(String? val) => _rsNomeRestaurante = val;

  bool hasRsNomeRestaurante() => _rsNomeRestaurante != null;

  // "endereco" field.
  String? _endereco;
  String get endereco => _endereco ?? '';
  set endereco(String? val) => _endereco = val;

  bool hasEndereco() => _endereco != null;

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

  // "ev_data" field.
  String? _evData;
  String get evData => _evData ?? '';
  set evData(String? val) => _evData = val;

  bool hasEvData() => _evData != null;

  // "ev_horario_inicial" field.
  String? _evHorarioInicial;
  String get evHorarioInicial => _evHorarioInicial ?? '';
  set evHorarioInicial(String? val) => _evHorarioInicial = val;

  bool hasEvHorarioInicial() => _evHorarioInicial != null;

  // "ev_horario_final" field.
  String? _evHorarioFinal;
  String get evHorarioFinal => _evHorarioFinal ?? '';
  set evHorarioFinal(String? val) => _evHorarioFinal = val;

  bool hasEvHorarioFinal() => _evHorarioFinal != null;

  // "acessibilidade" field.
  bool? _acessibilidade;
  bool get acessibilidade => _acessibilidade ?? false;
  set acessibilidade(bool? val) => _acessibilidade = val;

  bool hasAcessibilidade() => _acessibilidade != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "ev_imagens_eventos_anteriores" field.
  String? _evImagensEventosAnteriores;
  String get evImagensEventosAnteriores => _evImagensEventosAnteriores ?? '';
  set evImagensEventosAnteriores(String? val) =>
      _evImagensEventosAnteriores = val;

  bool hasEvImagensEventosAnteriores() => _evImagensEventosAnteriores != null;

  // "ev_status" field.
  String? _evStatus;
  String get evStatus => _evStatus ?? '';
  set evStatus(String? val) => _evStatus = val;

  bool hasEvStatus() => _evStatus != null;

  // "ev_nome_local" field.
  String? _evNomeLocal;
  String get evNomeLocal => _evNomeLocal ?? '';
  set evNomeLocal(String? val) => _evNomeLocal = val;

  bool hasEvNomeLocal() => _evNomeLocal != null;

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

  // "facebook_empresa" field.
  String? _facebookEmpresa;
  String get facebookEmpresa => _facebookEmpresa ?? '';
  set facebookEmpresa(String? val) => _facebookEmpresa = val;

  bool hasFacebookEmpresa() => _facebookEmpresa != null;

  // "instagram_empresa" field.
  String? _instagramEmpresa;
  String get instagramEmpresa => _instagramEmpresa ?? '';
  set instagramEmpresa(String? val) => _instagramEmpresa = val;

  bool hasInstagramEmpresa() => _instagramEmpresa != null;

  // "tiktok_empresa" field.
  String? _tiktokEmpresa;
  String get tiktokEmpresa => _tiktokEmpresa ?? '';
  set tiktokEmpresa(String? val) => _tiktokEmpresa = val;

  bool hasTiktokEmpresa() => _tiktokEmpresa != null;

  // "site_empresa" field.
  String? _siteEmpresa;
  String get siteEmpresa => _siteEmpresa ?? '';
  set siteEmpresa(String? val) => _siteEmpresa = val;

  bool hasSiteEmpresa() => _siteEmpresa != null;

  // "rs_comentarios" field.
  List<String>? _rsComentarios;
  List<String> get rsComentarios => _rsComentarios ?? const [];
  set rsComentarios(List<String>? val) => _rsComentarios = val;

  void updateRsComentarios(Function(List<String>) updateFn) {
    updateFn(_rsComentarios ??= []);
  }

  bool hasRsComentarios() => _rsComentarios != null;

  // "rs_telefone" field.
  String? _rsTelefone;
  String get rsTelefone => _rsTelefone ?? '';
  set rsTelefone(String? val) => _rsTelefone = val;

  bool hasRsTelefone() => _rsTelefone != null;

  // "total_favoritos" field.
  int? _totalFavoritos;
  int get totalFavoritos => _totalFavoritos ?? 0;
  set totalFavoritos(int? val) => _totalFavoritos = val;

  void incrementTotalFavoritos(int amount) =>
      totalFavoritos = totalFavoritos + amount;

  bool hasTotalFavoritos() => _totalFavoritos != null;

  // "rs_media_avaliacoes" field.
  double? _rsMediaAvaliacoes;
  double get rsMediaAvaliacoes => _rsMediaAvaliacoes ?? 0.0;
  set rsMediaAvaliacoes(double? val) => _rsMediaAvaliacoes = val;

  void incrementRsMediaAvaliacoes(double amount) =>
      rsMediaAvaliacoes = rsMediaAvaliacoes + amount;

  bool hasRsMediaAvaliacoes() => _rsMediaAvaliacoes != null;

  // "ev_valor" field.
  double? _evValor;
  double get evValor => _evValor ?? 0.0;
  set evValor(double? val) => _evValor = val;

  void incrementEvValor(double amount) => evValor = evValor + amount;

  bool hasEvValor() => _evValor != null;

  // "ev_estilo" field.
  List<String>? _evEstilo;
  List<String> get evEstilo => _evEstilo ?? const [];
  set evEstilo(List<String>? val) => _evEstilo = val;

  void updateEvEstilo(Function(List<String>) updateFn) {
    updateFn(_evEstilo ??= []);
  }

  bool hasEvEstilo() => _evEstilo != null;

  // "coordenadas" field.
  String? _coordenadas;
  String get coordenadas => _coordenadas ?? '';
  set coordenadas(String? val) => _coordenadas = val;

  bool hasCoordenadas() => _coordenadas != null;

  static LugaresProximosStruct fromMap(Map<String, dynamic> data) =>
      LugaresProximosStruct(
        id: castToType<int>(data['id']),
        tipoLugar: data['tipo_lugar'] as String?,
        dataCriacao: data['data_criacao'] as String?,
        banner: data['banner'] as String?,
        evNomeEvento: data['ev_nome_evento'] as String?,
        rsNomeRestaurante: data['rs_nome_restaurante'] as String?,
        endereco: data['endereco'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        distMeters: castToType<double>(data['dist_meters']),
        evData: data['ev_data'] as String?,
        evHorarioInicial: data['ev_horario_inicial'] as String?,
        evHorarioFinal: data['ev_horario_final'] as String?,
        acessibilidade: data['acessibilidade'] as bool?,
        descricao: data['descricao'] as String?,
        evImagensEventosAnteriores:
            data['ev_imagens_eventos_anteriores'] as String?,
        evStatus: data['ev_status'] as String?,
        evNomeLocal: data['ev_nome_local'] as String?,
        idEmpresa: data['id_empresa'] as String?,
        nomeEmpresa: data['nome_empresa'] as String?,
        logomarca: data['logomarca'] as String?,
        facebookEmpresa: data['facebook_empresa'] as String?,
        instagramEmpresa: data['instagram_empresa'] as String?,
        tiktokEmpresa: data['tiktok_empresa'] as String?,
        siteEmpresa: data['site_empresa'] as String?,
        rsComentarios: getDataList(data['rs_comentarios']),
        rsTelefone: data['rs_telefone'] as String?,
        totalFavoritos: castToType<int>(data['total_favoritos']),
        rsMediaAvaliacoes: castToType<double>(data['rs_media_avaliacoes']),
        evValor: castToType<double>(data['ev_valor']),
        evEstilo: getDataList(data['ev_estilo']),
        coordenadas: data['coordenadas'] as String?,
      );

  static LugaresProximosStruct? maybeFromMap(dynamic data) => data is Map
      ? LugaresProximosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'tipo_lugar': _tipoLugar,
        'data_criacao': _dataCriacao,
        'banner': _banner,
        'ev_nome_evento': _evNomeEvento,
        'rs_nome_restaurante': _rsNomeRestaurante,
        'endereco': _endereco,
        'latitude': _latitude,
        'longitude': _longitude,
        'dist_meters': _distMeters,
        'ev_data': _evData,
        'ev_horario_inicial': _evHorarioInicial,
        'ev_horario_final': _evHorarioFinal,
        'acessibilidade': _acessibilidade,
        'descricao': _descricao,
        'ev_imagens_eventos_anteriores': _evImagensEventosAnteriores,
        'ev_status': _evStatus,
        'ev_nome_local': _evNomeLocal,
        'id_empresa': _idEmpresa,
        'nome_empresa': _nomeEmpresa,
        'logomarca': _logomarca,
        'facebook_empresa': _facebookEmpresa,
        'instagram_empresa': _instagramEmpresa,
        'tiktok_empresa': _tiktokEmpresa,
        'site_empresa': _siteEmpresa,
        'rs_comentarios': _rsComentarios,
        'rs_telefone': _rsTelefone,
        'total_favoritos': _totalFavoritos,
        'rs_media_avaliacoes': _rsMediaAvaliacoes,
        'ev_valor': _evValor,
        'ev_estilo': _evEstilo,
        'coordenadas': _coordenadas,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'tipo_lugar': serializeParam(
          _tipoLugar,
          ParamType.String,
        ),
        'data_criacao': serializeParam(
          _dataCriacao,
          ParamType.String,
        ),
        'banner': serializeParam(
          _banner,
          ParamType.String,
        ),
        'ev_nome_evento': serializeParam(
          _evNomeEvento,
          ParamType.String,
        ),
        'rs_nome_restaurante': serializeParam(
          _rsNomeRestaurante,
          ParamType.String,
        ),
        'endereco': serializeParam(
          _endereco,
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
        'ev_data': serializeParam(
          _evData,
          ParamType.String,
        ),
        'ev_horario_inicial': serializeParam(
          _evHorarioInicial,
          ParamType.String,
        ),
        'ev_horario_final': serializeParam(
          _evHorarioFinal,
          ParamType.String,
        ),
        'acessibilidade': serializeParam(
          _acessibilidade,
          ParamType.bool,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'ev_imagens_eventos_anteriores': serializeParam(
          _evImagensEventosAnteriores,
          ParamType.String,
        ),
        'ev_status': serializeParam(
          _evStatus,
          ParamType.String,
        ),
        'ev_nome_local': serializeParam(
          _evNomeLocal,
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
        'facebook_empresa': serializeParam(
          _facebookEmpresa,
          ParamType.String,
        ),
        'instagram_empresa': serializeParam(
          _instagramEmpresa,
          ParamType.String,
        ),
        'tiktok_empresa': serializeParam(
          _tiktokEmpresa,
          ParamType.String,
        ),
        'site_empresa': serializeParam(
          _siteEmpresa,
          ParamType.String,
        ),
        'rs_comentarios': serializeParam(
          _rsComentarios,
          ParamType.String,
          isList: true,
        ),
        'rs_telefone': serializeParam(
          _rsTelefone,
          ParamType.String,
        ),
        'total_favoritos': serializeParam(
          _totalFavoritos,
          ParamType.int,
        ),
        'rs_media_avaliacoes': serializeParam(
          _rsMediaAvaliacoes,
          ParamType.double,
        ),
        'ev_valor': serializeParam(
          _evValor,
          ParamType.double,
        ),
        'ev_estilo': serializeParam(
          _evEstilo,
          ParamType.String,
          isList: true,
        ),
        'coordenadas': serializeParam(
          _coordenadas,
          ParamType.String,
        ),
      }.withoutNulls;

  static LugaresProximosStruct fromSerializableMap(Map<String, dynamic> data) =>
      LugaresProximosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        tipoLugar: deserializeParam(
          data['tipo_lugar'],
          ParamType.String,
          false,
        ),
        dataCriacao: deserializeParam(
          data['data_criacao'],
          ParamType.String,
          false,
        ),
        banner: deserializeParam(
          data['banner'],
          ParamType.String,
          false,
        ),
        evNomeEvento: deserializeParam(
          data['ev_nome_evento'],
          ParamType.String,
          false,
        ),
        rsNomeRestaurante: deserializeParam(
          data['rs_nome_restaurante'],
          ParamType.String,
          false,
        ),
        endereco: deserializeParam(
          data['endereco'],
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
        evData: deserializeParam(
          data['ev_data'],
          ParamType.String,
          false,
        ),
        evHorarioInicial: deserializeParam(
          data['ev_horario_inicial'],
          ParamType.String,
          false,
        ),
        evHorarioFinal: deserializeParam(
          data['ev_horario_final'],
          ParamType.String,
          false,
        ),
        acessibilidade: deserializeParam(
          data['acessibilidade'],
          ParamType.bool,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        evImagensEventosAnteriores: deserializeParam(
          data['ev_imagens_eventos_anteriores'],
          ParamType.String,
          false,
        ),
        evStatus: deserializeParam(
          data['ev_status'],
          ParamType.String,
          false,
        ),
        evNomeLocal: deserializeParam(
          data['ev_nome_local'],
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
        facebookEmpresa: deserializeParam(
          data['facebook_empresa'],
          ParamType.String,
          false,
        ),
        instagramEmpresa: deserializeParam(
          data['instagram_empresa'],
          ParamType.String,
          false,
        ),
        tiktokEmpresa: deserializeParam(
          data['tiktok_empresa'],
          ParamType.String,
          false,
        ),
        siteEmpresa: deserializeParam(
          data['site_empresa'],
          ParamType.String,
          false,
        ),
        rsComentarios: deserializeParam<String>(
          data['rs_comentarios'],
          ParamType.String,
          true,
        ),
        rsTelefone: deserializeParam(
          data['rs_telefone'],
          ParamType.String,
          false,
        ),
        totalFavoritos: deserializeParam(
          data['total_favoritos'],
          ParamType.int,
          false,
        ),
        rsMediaAvaliacoes: deserializeParam(
          data['rs_media_avaliacoes'],
          ParamType.double,
          false,
        ),
        evValor: deserializeParam(
          data['ev_valor'],
          ParamType.double,
          false,
        ),
        evEstilo: deserializeParam<String>(
          data['ev_estilo'],
          ParamType.String,
          true,
        ),
        coordenadas: deserializeParam(
          data['coordenadas'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LugaresProximosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is LugaresProximosStruct &&
        id == other.id &&
        tipoLugar == other.tipoLugar &&
        dataCriacao == other.dataCriacao &&
        banner == other.banner &&
        evNomeEvento == other.evNomeEvento &&
        rsNomeRestaurante == other.rsNomeRestaurante &&
        endereco == other.endereco &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        distMeters == other.distMeters &&
        evData == other.evData &&
        evHorarioInicial == other.evHorarioInicial &&
        evHorarioFinal == other.evHorarioFinal &&
        acessibilidade == other.acessibilidade &&
        descricao == other.descricao &&
        evImagensEventosAnteriores == other.evImagensEventosAnteriores &&
        evStatus == other.evStatus &&
        evNomeLocal == other.evNomeLocal &&
        idEmpresa == other.idEmpresa &&
        nomeEmpresa == other.nomeEmpresa &&
        logomarca == other.logomarca &&
        facebookEmpresa == other.facebookEmpresa &&
        instagramEmpresa == other.instagramEmpresa &&
        tiktokEmpresa == other.tiktokEmpresa &&
        siteEmpresa == other.siteEmpresa &&
        listEquality.equals(rsComentarios, other.rsComentarios) &&
        rsTelefone == other.rsTelefone &&
        totalFavoritos == other.totalFavoritos &&
        rsMediaAvaliacoes == other.rsMediaAvaliacoes &&
        evValor == other.evValor &&
        listEquality.equals(evEstilo, other.evEstilo) &&
        coordenadas == other.coordenadas;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        tipoLugar,
        dataCriacao,
        banner,
        evNomeEvento,
        rsNomeRestaurante,
        endereco,
        latitude,
        longitude,
        distMeters,
        evData,
        evHorarioInicial,
        evHorarioFinal,
        acessibilidade,
        descricao,
        evImagensEventosAnteriores,
        evStatus,
        evNomeLocal,
        idEmpresa,
        nomeEmpresa,
        logomarca,
        facebookEmpresa,
        instagramEmpresa,
        tiktokEmpresa,
        siteEmpresa,
        rsComentarios,
        rsTelefone,
        totalFavoritos,
        rsMediaAvaliacoes,
        evValor,
        evEstilo,
        coordenadas
      ]);
}

LugaresProximosStruct createLugaresProximosStruct({
  int? id,
  String? tipoLugar,
  String? dataCriacao,
  String? banner,
  String? evNomeEvento,
  String? rsNomeRestaurante,
  String? endereco,
  double? latitude,
  double? longitude,
  double? distMeters,
  String? evData,
  String? evHorarioInicial,
  String? evHorarioFinal,
  bool? acessibilidade,
  String? descricao,
  String? evImagensEventosAnteriores,
  String? evStatus,
  String? evNomeLocal,
  String? idEmpresa,
  String? nomeEmpresa,
  String? logomarca,
  String? facebookEmpresa,
  String? instagramEmpresa,
  String? tiktokEmpresa,
  String? siteEmpresa,
  String? rsTelefone,
  int? totalFavoritos,
  double? rsMediaAvaliacoes,
  double? evValor,
  String? coordenadas,
}) =>
    LugaresProximosStruct(
      id: id,
      tipoLugar: tipoLugar,
      dataCriacao: dataCriacao,
      banner: banner,
      evNomeEvento: evNomeEvento,
      rsNomeRestaurante: rsNomeRestaurante,
      endereco: endereco,
      latitude: latitude,
      longitude: longitude,
      distMeters: distMeters,
      evData: evData,
      evHorarioInicial: evHorarioInicial,
      evHorarioFinal: evHorarioFinal,
      acessibilidade: acessibilidade,
      descricao: descricao,
      evImagensEventosAnteriores: evImagensEventosAnteriores,
      evStatus: evStatus,
      evNomeLocal: evNomeLocal,
      idEmpresa: idEmpresa,
      nomeEmpresa: nomeEmpresa,
      logomarca: logomarca,
      facebookEmpresa: facebookEmpresa,
      instagramEmpresa: instagramEmpresa,
      tiktokEmpresa: tiktokEmpresa,
      siteEmpresa: siteEmpresa,
      rsTelefone: rsTelefone,
      totalFavoritos: totalFavoritos,
      rsMediaAvaliacoes: rsMediaAvaliacoes,
      evValor: evValor,
      coordenadas: coordenadas,
    );
