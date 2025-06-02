// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ViewAppFavoritosEventosStruct extends BaseStruct {
  ViewAppFavoritosEventosStruct({
    int? id,
    String? dataFavorito,
    String? idUsuario,
    int? idEvento,
    String? dataCriacao,
    String? bannerEvento,
    String? nomeEvento,
    String? descricao,
    String? enderecoEvento,
    String? coordenadas,
    String? data,
    String? horarioInicial,
    String? horarioFinal,
    bool? acessiblidade,
    String? status,
    List<String>? estilo,
    String? nomeLocal,
    String? linkIngresso,
    String? site,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? nomeParceiro,
    int? totalFavoritos,
    double? valor,
    List<String>? imagensEventosAnteriores,
    String? dataFinal,
  })  : _id = id,
        _dataFavorito = dataFavorito,
        _idUsuario = idUsuario,
        _idEvento = idEvento,
        _dataCriacao = dataCriacao,
        _bannerEvento = bannerEvento,
        _nomeEvento = nomeEvento,
        _descricao = descricao,
        _enderecoEvento = enderecoEvento,
        _coordenadas = coordenadas,
        _data = data,
        _horarioInicial = horarioInicial,
        _horarioFinal = horarioFinal,
        _acessiblidade = acessiblidade,
        _status = status,
        _estilo = estilo,
        _nomeLocal = nomeLocal,
        _linkIngresso = linkIngresso,
        _site = site,
        _facebook = facebook,
        _instagram = instagram,
        _tiktok = tiktok,
        _nomeParceiro = nomeParceiro,
        _totalFavoritos = totalFavoritos,
        _valor = valor,
        _imagensEventosAnteriores = imagensEventosAnteriores,
        _dataFinal = dataFinal;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "data_favorito" field.
  String? _dataFavorito;
  String get dataFavorito => _dataFavorito ?? '';
  set dataFavorito(String? val) => _dataFavorito = val;

  bool hasDataFavorito() => _dataFavorito != null;

  // "id_usuario" field.
  String? _idUsuario;
  String get idUsuario => _idUsuario ?? '';
  set idUsuario(String? val) => _idUsuario = val;

  bool hasIdUsuario() => _idUsuario != null;

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

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "endereco_evento" field.
  String? _enderecoEvento;
  String get enderecoEvento => _enderecoEvento ?? '';
  set enderecoEvento(String? val) => _enderecoEvento = val;

  bool hasEnderecoEvento() => _enderecoEvento != null;

  // "coordenadas" field.
  String? _coordenadas;
  String get coordenadas => _coordenadas ?? '';
  set coordenadas(String? val) => _coordenadas = val;

  bool hasCoordenadas() => _coordenadas != null;

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

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

  // "total_favoritos" field.
  int? _totalFavoritos;
  int get totalFavoritos => _totalFavoritos ?? 0;
  set totalFavoritos(int? val) => _totalFavoritos = val;

  void incrementTotalFavoritos(int amount) =>
      totalFavoritos = totalFavoritos + amount;

  bool hasTotalFavoritos() => _totalFavoritos != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;

  void incrementValor(double amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  // "imagens_eventos_anteriores" field.
  List<String>? _imagensEventosAnteriores;
  List<String> get imagensEventosAnteriores =>
      _imagensEventosAnteriores ?? const [];
  set imagensEventosAnteriores(List<String>? val) =>
      _imagensEventosAnteriores = val;

  void updateImagensEventosAnteriores(Function(List<String>) updateFn) {
    updateFn(_imagensEventosAnteriores ??= []);
  }

  bool hasImagensEventosAnteriores() => _imagensEventosAnteriores != null;

  // "data_final" field.
  String? _dataFinal;
  String get dataFinal => _dataFinal ?? '';
  set dataFinal(String? val) => _dataFinal = val;

  bool hasDataFinal() => _dataFinal != null;

  static ViewAppFavoritosEventosStruct fromMap(Map<String, dynamic> data) =>
      ViewAppFavoritosEventosStruct(
        id: castToType<int>(data['id']),
        dataFavorito: data['data_favorito'] as String?,
        idUsuario: data['id_usuario'] as String?,
        idEvento: castToType<int>(data['id_evento']),
        dataCriacao: data['data_criacao'] as String?,
        bannerEvento: data['banner_evento'] as String?,
        nomeEvento: data['nome_evento'] as String?,
        descricao: data['descricao'] as String?,
        enderecoEvento: data['endereco_evento'] as String?,
        coordenadas: data['coordenadas'] as String?,
        data: data['data'] as String?,
        horarioInicial: data['horario_inicial'] as String?,
        horarioFinal: data['horario_final'] as String?,
        acessiblidade: data['acessiblidade'] as bool?,
        status: data['status'] as String?,
        estilo: getDataList(data['estilo']),
        nomeLocal: data['nome_local'] as String?,
        linkIngresso: data['link_ingresso'] as String?,
        site: data['site'] as String?,
        facebook: data['facebook'] as String?,
        instagram: data['instagram'] as String?,
        tiktok: data['tiktok'] as String?,
        nomeParceiro: data['nome_parceiro'] as String?,
        totalFavoritos: castToType<int>(data['total_favoritos']),
        valor: castToType<double>(data['valor']),
        imagensEventosAnteriores:
            getDataList(data['imagens_eventos_anteriores']),
        dataFinal: data['data_final'] as String?,
      );

  static ViewAppFavoritosEventosStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ViewAppFavoritosEventosStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'data_favorito': _dataFavorito,
        'id_usuario': _idUsuario,
        'id_evento': _idEvento,
        'data_criacao': _dataCriacao,
        'banner_evento': _bannerEvento,
        'nome_evento': _nomeEvento,
        'descricao': _descricao,
        'endereco_evento': _enderecoEvento,
        'coordenadas': _coordenadas,
        'data': _data,
        'horario_inicial': _horarioInicial,
        'horario_final': _horarioFinal,
        'acessiblidade': _acessiblidade,
        'status': _status,
        'estilo': _estilo,
        'nome_local': _nomeLocal,
        'link_ingresso': _linkIngresso,
        'site': _site,
        'facebook': _facebook,
        'instagram': _instagram,
        'tiktok': _tiktok,
        'nome_parceiro': _nomeParceiro,
        'total_favoritos': _totalFavoritos,
        'valor': _valor,
        'imagens_eventos_anteriores': _imagensEventosAnteriores,
        'data_final': _dataFinal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'data_favorito': serializeParam(
          _dataFavorito,
          ParamType.String,
        ),
        'id_usuario': serializeParam(
          _idUsuario,
          ParamType.String,
        ),
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
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'endereco_evento': serializeParam(
          _enderecoEvento,
          ParamType.String,
        ),
        'coordenadas': serializeParam(
          _coordenadas,
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
        'status': serializeParam(
          _status,
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
        'total_favoritos': serializeParam(
          _totalFavoritos,
          ParamType.int,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'imagens_eventos_anteriores': serializeParam(
          _imagensEventosAnteriores,
          ParamType.String,
          isList: true,
        ),
        'data_final': serializeParam(
          _dataFinal,
          ParamType.String,
        ),
      }.withoutNulls;

  static ViewAppFavoritosEventosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ViewAppFavoritosEventosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        dataFavorito: deserializeParam(
          data['data_favorito'],
          ParamType.String,
          false,
        ),
        idUsuario: deserializeParam(
          data['id_usuario'],
          ParamType.String,
          false,
        ),
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
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        enderecoEvento: deserializeParam(
          data['endereco_evento'],
          ParamType.String,
          false,
        ),
        coordenadas: deserializeParam(
          data['coordenadas'],
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
        status: deserializeParam(
          data['status'],
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
        totalFavoritos: deserializeParam(
          data['total_favoritos'],
          ParamType.int,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        imagensEventosAnteriores: deserializeParam<String>(
          data['imagens_eventos_anteriores'],
          ParamType.String,
          true,
        ),
        dataFinal: deserializeParam(
          data['data_final'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ViewAppFavoritosEventosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ViewAppFavoritosEventosStruct &&
        id == other.id &&
        dataFavorito == other.dataFavorito &&
        idUsuario == other.idUsuario &&
        idEvento == other.idEvento &&
        dataCriacao == other.dataCriacao &&
        bannerEvento == other.bannerEvento &&
        nomeEvento == other.nomeEvento &&
        descricao == other.descricao &&
        enderecoEvento == other.enderecoEvento &&
        coordenadas == other.coordenadas &&
        data == other.data &&
        horarioInicial == other.horarioInicial &&
        horarioFinal == other.horarioFinal &&
        acessiblidade == other.acessiblidade &&
        status == other.status &&
        listEquality.equals(estilo, other.estilo) &&
        nomeLocal == other.nomeLocal &&
        linkIngresso == other.linkIngresso &&
        site == other.site &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        tiktok == other.tiktok &&
        nomeParceiro == other.nomeParceiro &&
        totalFavoritos == other.totalFavoritos &&
        valor == other.valor &&
        listEquality.equals(
            imagensEventosAnteriores, other.imagensEventosAnteriores) &&
        dataFinal == other.dataFinal;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        dataFavorito,
        idUsuario,
        idEvento,
        dataCriacao,
        bannerEvento,
        nomeEvento,
        descricao,
        enderecoEvento,
        coordenadas,
        data,
        horarioInicial,
        horarioFinal,
        acessiblidade,
        status,
        estilo,
        nomeLocal,
        linkIngresso,
        site,
        facebook,
        instagram,
        tiktok,
        nomeParceiro,
        totalFavoritos,
        valor,
        imagensEventosAnteriores,
        dataFinal
      ]);
}

ViewAppFavoritosEventosStruct createViewAppFavoritosEventosStruct({
  int? id,
  String? dataFavorito,
  String? idUsuario,
  int? idEvento,
  String? dataCriacao,
  String? bannerEvento,
  String? nomeEvento,
  String? descricao,
  String? enderecoEvento,
  String? coordenadas,
  String? data,
  String? horarioInicial,
  String? horarioFinal,
  bool? acessiblidade,
  String? status,
  String? nomeLocal,
  String? linkIngresso,
  String? site,
  String? facebook,
  String? instagram,
  String? tiktok,
  String? nomeParceiro,
  int? totalFavoritos,
  double? valor,
  String? dataFinal,
}) =>
    ViewAppFavoritosEventosStruct(
      id: id,
      dataFavorito: dataFavorito,
      idUsuario: idUsuario,
      idEvento: idEvento,
      dataCriacao: dataCriacao,
      bannerEvento: bannerEvento,
      nomeEvento: nomeEvento,
      descricao: descricao,
      enderecoEvento: enderecoEvento,
      coordenadas: coordenadas,
      data: data,
      horarioInicial: horarioInicial,
      horarioFinal: horarioFinal,
      acessiblidade: acessiblidade,
      status: status,
      nomeLocal: nomeLocal,
      linkIngresso: linkIngresso,
      site: site,
      facebook: facebook,
      instagram: instagram,
      tiktok: tiktok,
      nomeParceiro: nomeParceiro,
      totalFavoritos: totalFavoritos,
      valor: valor,
      dataFinal: dataFinal,
    );
