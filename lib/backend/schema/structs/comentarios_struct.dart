// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ComentariosStruct extends BaseStruct {
  ComentariosStruct({
    int? id,
    String? createdAt,
    String? comentario,
    int? avaliacao,
  })  : _id = id,
        _createdAt = createdAt,
        _comentario = comentario,
        _avaliacao = avaliacao;

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

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  set comentario(String? val) => _comentario = val;

  bool hasComentario() => _comentario != null;

  // "avaliacao" field.
  int? _avaliacao;
  int get avaliacao => _avaliacao ?? 0;
  set avaliacao(int? val) => _avaliacao = val;

  void incrementAvaliacao(int amount) => avaliacao = avaliacao + amount;

  bool hasAvaliacao() => _avaliacao != null;

  static ComentariosStruct fromMap(Map<String, dynamic> data) =>
      ComentariosStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        comentario: data['comentario'] as String?,
        avaliacao: castToType<int>(data['avaliacao']),
      );

  static ComentariosStruct? maybeFromMap(dynamic data) => data is Map
      ? ComentariosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'comentario': _comentario,
        'avaliacao': _avaliacao,
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
        'comentario': serializeParam(
          _comentario,
          ParamType.String,
        ),
        'avaliacao': serializeParam(
          _avaliacao,
          ParamType.int,
        ),
      }.withoutNulls;

  static ComentariosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ComentariosStruct(
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
        comentario: deserializeParam(
          data['comentario'],
          ParamType.String,
          false,
        ),
        avaliacao: deserializeParam(
          data['avaliacao'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ComentariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ComentariosStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        comentario == other.comentario &&
        avaliacao == other.avaliacao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, createdAt, comentario, avaliacao]);
}

ComentariosStruct createComentariosStruct({
  int? id,
  String? createdAt,
  String? comentario,
  int? avaliacao,
}) =>
    ComentariosStruct(
      id: id,
      createdAt: createdAt,
      comentario: comentario,
      avaliacao: avaliacao,
    );
