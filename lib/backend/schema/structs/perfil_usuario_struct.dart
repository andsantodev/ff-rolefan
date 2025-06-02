// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PerfilUsuarioStruct extends BaseStruct {
  PerfilUsuarioStruct({
    String? id,
    String? createdAt,
    String? nome,
    String? email,
    String? telefone,
    String? dataNascimento,
    String? dataAtualizacao,
    String? fotoPerfil,
    int? idPerfil,
    bool? modoEscuro,
    String? rua,
    String? bairro,
    String? cidade,
    String? estado,
    String? coordenadas,
  })  : _id = id,
        _createdAt = createdAt,
        _nome = nome,
        _email = email,
        _telefone = telefone,
        _dataNascimento = dataNascimento,
        _dataAtualizacao = dataAtualizacao,
        _fotoPerfil = fotoPerfil,
        _idPerfil = idPerfil,
        _modoEscuro = modoEscuro,
        _rua = rua,
        _bairro = bairro,
        _cidade = cidade,
        _estado = estado,
        _coordenadas = coordenadas;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "telefone" field.
  String? _telefone;
  String get telefone => _telefone ?? '';
  set telefone(String? val) => _telefone = val;

  bool hasTelefone() => _telefone != null;

  // "data_nascimento" field.
  String? _dataNascimento;
  String get dataNascimento => _dataNascimento ?? '';
  set dataNascimento(String? val) => _dataNascimento = val;

  bool hasDataNascimento() => _dataNascimento != null;

  // "data_atualizacao" field.
  String? _dataAtualizacao;
  String get dataAtualizacao => _dataAtualizacao ?? '';
  set dataAtualizacao(String? val) => _dataAtualizacao = val;

  bool hasDataAtualizacao() => _dataAtualizacao != null;

  // "foto_perfil" field.
  String? _fotoPerfil;
  String get fotoPerfil => _fotoPerfil ?? '';
  set fotoPerfil(String? val) => _fotoPerfil = val;

  bool hasFotoPerfil() => _fotoPerfil != null;

  // "id_perfil" field.
  int? _idPerfil;
  int get idPerfil => _idPerfil ?? 0;
  set idPerfil(int? val) => _idPerfil = val;

  void incrementIdPerfil(int amount) => idPerfil = idPerfil + amount;

  bool hasIdPerfil() => _idPerfil != null;

  // "modo_escuro" field.
  bool? _modoEscuro;
  bool get modoEscuro => _modoEscuro ?? false;
  set modoEscuro(bool? val) => _modoEscuro = val;

  bool hasModoEscuro() => _modoEscuro != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  set rua(String? val) => _rua = val;

  bool hasRua() => _rua != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;

  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "coordenadas" field.
  String? _coordenadas;
  String get coordenadas => _coordenadas ?? '';
  set coordenadas(String? val) => _coordenadas = val;

  bool hasCoordenadas() => _coordenadas != null;

  static PerfilUsuarioStruct fromMap(Map<String, dynamic> data) =>
      PerfilUsuarioStruct(
        id: data['id'] as String?,
        createdAt: data['created_at'] as String?,
        nome: data['nome'] as String?,
        email: data['email'] as String?,
        telefone: data['telefone'] as String?,
        dataNascimento: data['data_nascimento'] as String?,
        dataAtualizacao: data['data_atualizacao'] as String?,
        fotoPerfil: data['foto_perfil'] as String?,
        idPerfil: castToType<int>(data['id_perfil']),
        modoEscuro: data['modo_escuro'] as bool?,
        rua: data['rua'] as String?,
        bairro: data['bairro'] as String?,
        cidade: data['cidade'] as String?,
        estado: data['estado'] as String?,
        coordenadas: data['coordenadas'] as String?,
      );

  static PerfilUsuarioStruct? maybeFromMap(dynamic data) => data is Map
      ? PerfilUsuarioStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'nome': _nome,
        'email': _email,
        'telefone': _telefone,
        'data_nascimento': _dataNascimento,
        'data_atualizacao': _dataAtualizacao,
        'foto_perfil': _fotoPerfil,
        'id_perfil': _idPerfil,
        'modo_escuro': _modoEscuro,
        'rua': _rua,
        'bairro': _bairro,
        'cidade': _cidade,
        'estado': _estado,
        'coordenadas': _coordenadas,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'telefone': serializeParam(
          _telefone,
          ParamType.String,
        ),
        'data_nascimento': serializeParam(
          _dataNascimento,
          ParamType.String,
        ),
        'data_atualizacao': serializeParam(
          _dataAtualizacao,
          ParamType.String,
        ),
        'foto_perfil': serializeParam(
          _fotoPerfil,
          ParamType.String,
        ),
        'id_perfil': serializeParam(
          _idPerfil,
          ParamType.int,
        ),
        'modo_escuro': serializeParam(
          _modoEscuro,
          ParamType.bool,
        ),
        'rua': serializeParam(
          _rua,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'coordenadas': serializeParam(
          _coordenadas,
          ParamType.String,
        ),
      }.withoutNulls;

  static PerfilUsuarioStruct fromSerializableMap(Map<String, dynamic> data) =>
      PerfilUsuarioStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        telefone: deserializeParam(
          data['telefone'],
          ParamType.String,
          false,
        ),
        dataNascimento: deserializeParam(
          data['data_nascimento'],
          ParamType.String,
          false,
        ),
        dataAtualizacao: deserializeParam(
          data['data_atualizacao'],
          ParamType.String,
          false,
        ),
        fotoPerfil: deserializeParam(
          data['foto_perfil'],
          ParamType.String,
          false,
        ),
        idPerfil: deserializeParam(
          data['id_perfil'],
          ParamType.int,
          false,
        ),
        modoEscuro: deserializeParam(
          data['modo_escuro'],
          ParamType.bool,
          false,
        ),
        rua: deserializeParam(
          data['rua'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        coordenadas: deserializeParam(
          data['coordenadas'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PerfilUsuarioStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PerfilUsuarioStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        nome == other.nome &&
        email == other.email &&
        telefone == other.telefone &&
        dataNascimento == other.dataNascimento &&
        dataAtualizacao == other.dataAtualizacao &&
        fotoPerfil == other.fotoPerfil &&
        idPerfil == other.idPerfil &&
        modoEscuro == other.modoEscuro &&
        rua == other.rua &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        estado == other.estado &&
        coordenadas == other.coordenadas;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        nome,
        email,
        telefone,
        dataNascimento,
        dataAtualizacao,
        fotoPerfil,
        idPerfil,
        modoEscuro,
        rua,
        bairro,
        cidade,
        estado,
        coordenadas
      ]);
}

PerfilUsuarioStruct createPerfilUsuarioStruct({
  String? id,
  String? createdAt,
  String? nome,
  String? email,
  String? telefone,
  String? dataNascimento,
  String? dataAtualizacao,
  String? fotoPerfil,
  int? idPerfil,
  bool? modoEscuro,
  String? rua,
  String? bairro,
  String? cidade,
  String? estado,
  String? coordenadas,
}) =>
    PerfilUsuarioStruct(
      id: id,
      createdAt: createdAt,
      nome: nome,
      email: email,
      telefone: telefone,
      dataNascimento: dataNascimento,
      dataAtualizacao: dataAtualizacao,
      fotoPerfil: fotoPerfil,
      idPerfil: idPerfil,
      modoEscuro: modoEscuro,
      rua: rua,
      bairro: bairro,
      cidade: cidade,
      estado: estado,
      coordenadas: coordenadas,
    );
