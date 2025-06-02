// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ViewAppFavoritosRestaurantesStruct extends BaseStruct {
  ViewAppFavoritosRestaurantesStruct({
    int? id,
    String? dataFavorito,
    String? idUsuario,
    int? idRestaurante,
    String? nome,
    String? dataCriacao,
    String? descricao,
    String? endereco,
    String? coordenadas,
    bool? acessibilidade,
    String? horarioAbertura,
    String? horarioFechamento,
    String? telefone,
    String? logomarca,
    String? imagemBanner,
    String? idEmpresa,
    String? site,
    String? facebook,
    String? instagram,
    String? tiktok,
    String? nomeParceiro,
    List<String>? comentarios,
    double? mediaAvaliacoes,
  })  : _id = id,
        _dataFavorito = dataFavorito,
        _idUsuario = idUsuario,
        _idRestaurante = idRestaurante,
        _nome = nome,
        _dataCriacao = dataCriacao,
        _descricao = descricao,
        _endereco = endereco,
        _coordenadas = coordenadas,
        _acessibilidade = acessibilidade,
        _horarioAbertura = horarioAbertura,
        _horarioFechamento = horarioFechamento,
        _telefone = telefone,
        _logomarca = logomarca,
        _imagemBanner = imagemBanner,
        _idEmpresa = idEmpresa,
        _site = site,
        _facebook = facebook,
        _instagram = instagram,
        _tiktok = tiktok,
        _nomeParceiro = nomeParceiro,
        _comentarios = comentarios,
        _mediaAvaliacoes = mediaAvaliacoes;

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

  // "id_restaurante" field.
  int? _idRestaurante;
  int get idRestaurante => _idRestaurante ?? 0;
  set idRestaurante(int? val) => _idRestaurante = val;

  void incrementIdRestaurante(int amount) =>
      idRestaurante = idRestaurante + amount;

  bool hasIdRestaurante() => _idRestaurante != null;

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

  static ViewAppFavoritosRestaurantesStruct fromMap(
          Map<String, dynamic> data) =>
      ViewAppFavoritosRestaurantesStruct(
        id: castToType<int>(data['id']),
        dataFavorito: data['data_favorito'] as String?,
        idUsuario: data['id_usuario'] as String?,
        idRestaurante: castToType<int>(data['id_restaurante']),
        nome: data['nome'] as String?,
        dataCriacao: data['data_criacao'] as String?,
        descricao: data['descricao'] as String?,
        endereco: data['endereco'] as String?,
        coordenadas: data['coordenadas'] as String?,
        acessibilidade: data['acessibilidade'] as bool?,
        horarioAbertura: data['horario_abertura'] as String?,
        horarioFechamento: data['horario_fechamento'] as String?,
        telefone: data['telefone'] as String?,
        logomarca: data['logomarca'] as String?,
        imagemBanner: data['imagem_banner'] as String?,
        idEmpresa: data['id_empresa'] as String?,
        site: data['site'] as String?,
        facebook: data['facebook'] as String?,
        instagram: data['instagram'] as String?,
        tiktok: data['tiktok'] as String?,
        nomeParceiro: data['nome_parceiro'] as String?,
        comentarios: getDataList(data['comentarios']),
        mediaAvaliacoes: castToType<double>(data['media_avaliacoes']),
      );

  static ViewAppFavoritosRestaurantesStruct? maybeFromMap(dynamic data) => data
          is Map
      ? ViewAppFavoritosRestaurantesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'data_favorito': _dataFavorito,
        'id_usuario': _idUsuario,
        'id_restaurante': _idRestaurante,
        'nome': _nome,
        'data_criacao': _dataCriacao,
        'descricao': _descricao,
        'endereco': _endereco,
        'coordenadas': _coordenadas,
        'acessibilidade': _acessibilidade,
        'horario_abertura': _horarioAbertura,
        'horario_fechamento': _horarioFechamento,
        'telefone': _telefone,
        'logomarca': _logomarca,
        'imagem_banner': _imagemBanner,
        'id_empresa': _idEmpresa,
        'site': _site,
        'facebook': _facebook,
        'instagram': _instagram,
        'tiktok': _tiktok,
        'nome_parceiro': _nomeParceiro,
        'comentarios': _comentarios,
        'media_avaliacoes': _mediaAvaliacoes,
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
        'id_restaurante': serializeParam(
          _idRestaurante,
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

  static ViewAppFavoritosRestaurantesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ViewAppFavoritosRestaurantesStruct(
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
        idRestaurante: deserializeParam(
          data['id_restaurante'],
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
  String toString() => 'ViewAppFavoritosRestaurantesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ViewAppFavoritosRestaurantesStruct &&
        id == other.id &&
        dataFavorito == other.dataFavorito &&
        idUsuario == other.idUsuario &&
        idRestaurante == other.idRestaurante &&
        nome == other.nome &&
        dataCriacao == other.dataCriacao &&
        descricao == other.descricao &&
        endereco == other.endereco &&
        coordenadas == other.coordenadas &&
        acessibilidade == other.acessibilidade &&
        horarioAbertura == other.horarioAbertura &&
        horarioFechamento == other.horarioFechamento &&
        telefone == other.telefone &&
        logomarca == other.logomarca &&
        imagemBanner == other.imagemBanner &&
        idEmpresa == other.idEmpresa &&
        site == other.site &&
        facebook == other.facebook &&
        instagram == other.instagram &&
        tiktok == other.tiktok &&
        nomeParceiro == other.nomeParceiro &&
        listEquality.equals(comentarios, other.comentarios) &&
        mediaAvaliacoes == other.mediaAvaliacoes;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        dataFavorito,
        idUsuario,
        idRestaurante,
        nome,
        dataCriacao,
        descricao,
        endereco,
        coordenadas,
        acessibilidade,
        horarioAbertura,
        horarioFechamento,
        telefone,
        logomarca,
        imagemBanner,
        idEmpresa,
        site,
        facebook,
        instagram,
        tiktok,
        nomeParceiro,
        comentarios,
        mediaAvaliacoes
      ]);
}

ViewAppFavoritosRestaurantesStruct createViewAppFavoritosRestaurantesStruct({
  int? id,
  String? dataFavorito,
  String? idUsuario,
  int? idRestaurante,
  String? nome,
  String? dataCriacao,
  String? descricao,
  String? endereco,
  String? coordenadas,
  bool? acessibilidade,
  String? horarioAbertura,
  String? horarioFechamento,
  String? telefone,
  String? logomarca,
  String? imagemBanner,
  String? idEmpresa,
  String? site,
  String? facebook,
  String? instagram,
  String? tiktok,
  String? nomeParceiro,
  double? mediaAvaliacoes,
}) =>
    ViewAppFavoritosRestaurantesStruct(
      id: id,
      dataFavorito: dataFavorito,
      idUsuario: idUsuario,
      idRestaurante: idRestaurante,
      nome: nome,
      dataCriacao: dataCriacao,
      descricao: descricao,
      endereco: endereco,
      coordenadas: coordenadas,
      acessibilidade: acessibilidade,
      horarioAbertura: horarioAbertura,
      horarioFechamento: horarioFechamento,
      telefone: telefone,
      logomarca: logomarca,
      imagemBanner: imagemBanner,
      idEmpresa: idEmpresa,
      site: site,
      facebook: facebook,
      instagram: instagram,
      tiktok: tiktok,
      nomeParceiro: nomeParceiro,
      mediaAvaliacoes: mediaAvaliacoes,
    );
