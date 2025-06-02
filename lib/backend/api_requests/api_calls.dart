import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCallRoleFan';

/// Start Usuario Group Code

class UsuarioGroup {
  static String getBaseUrl() => 'https://cyvjxiirhnbpyvdmefmp.supabase.co/';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static CadastroCall cadastroCall = CadastroCall();
  static AlterarSenhaCall alterarSenhaCall = AlterarSenhaCall();
  static EmailEsqueciASenhaCall emailEsqueciASenhaCall =
      EmailEsqueciASenhaCall();
  static PerfilUsuarioCall perfilUsuarioCall = PerfilUsuarioCall();
  static DeletarContaUsuarioCall deletarContaUsuarioCall =
      DeletarContaUsuarioCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = UsuarioGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '${baseUrl}auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CadastroCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = UsuarioGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Cadastro',
      apiUrl: '${baseUrl}auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
}

class AlterarSenhaCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = UsuarioGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Alterar Senha',
      apiUrl: '${baseUrl}auth/v1/user',
      callType: ApiCallType.PUT,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EmailEsqueciASenhaCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = UsuarioGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Email Esqueci a Senha',
      apiUrl: '${baseUrl}auth/v1/recover',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PerfilUsuarioCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? id = '',
  }) async {
    final baseUrl = UsuarioGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Perfil Usuario',
      apiUrl: '${baseUrl}rest/v1/usuarios_app',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'id': id,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  String? dataCriacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].nome''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].telefone''',
      ));
  String? dataNascimento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].data_nascimento''',
      ));
  String? fotoPerfil(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].foto_perfil''',
      ));
  int? idPerfil(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id_perfil''',
      ));
  bool? modoEscuro(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$[:].modo_escuro''',
      ));
  String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].rua''',
      ));
  String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].bairro''',
      ));
  String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].cidade''',
      ));
  String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].estado''',
      ));
  String? coordenadas(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].coordenadas''',
      ));
}

class DeletarContaUsuarioCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = UsuarioGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Deletar Conta Usuario',
      apiUrl: '${baseUrl}functions/v1/delete-user',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Usuario Group Code

/// Start Eventos e Restaurantes Group Code

class EventosERestaurantesGroup {
  static String getBaseUrl({
    String? token = '',
  }) =>
      'https://cyvjxiirhnbpyvdmefmp.supabase.co/rest/v1';
  static Map<String, String> headers = {
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
    'Authorization': 'Bearer [token]',
  };
  static ViewAppFavoritosEventosCall viewAppFavoritosEventosCall =
      ViewAppFavoritosEventosCall();
  static ViewAppFavoritosRestaurantesCall viewAppFavoritosRestaurantesCall =
      ViewAppFavoritosRestaurantesCall();
  static EventosPorDistanciaCall eventosPorDistanciaCall =
      EventosPorDistanciaCall();
  static RestaurantesPorDistanciaCall restaurantesPorDistanciaCall =
      RestaurantesPorDistanciaCall();
}

class ViewAppFavoritosEventosCall {
  Future<ApiCallResponse> call({
    String? order = '',
    String? token = '',
  }) async {
    final baseUrl = EventosERestaurantesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'View App Favoritos Eventos',
      apiUrl: '${baseUrl}/vw_app_favoritos_eventos',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'select': "*",
        'order': order,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ViewAppFavoritosRestaurantesCall {
  Future<ApiCallResponse> call({
    String? order = '',
    String? token = '',
  }) async {
    final baseUrl = EventosERestaurantesGroup.getBaseUrl(
      token: token,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'View App Favoritos Restaurantes',
      apiUrl: '${baseUrl}/vw_app_favoritos_restaurantes',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Authorization': 'Bearer ${token}',
      },
      params: {
        'select': "*",
        'order': order,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EventosPorDistanciaCall {
  Future<ApiCallResponse> call({
    double? distancia = 0,
    double? lat = 0,
    double? long = 0,
    String? ordenarPorData = 'ASC',
    List<String>? estilosFiltroList,
    String? token = '',
  }) async {
    final baseUrl = EventosERestaurantesGroup.getBaseUrl(
      token: token,
    );
    final estilosFiltro = _serializeList(estilosFiltroList);

    final ffApiRequestBody = '''
{
  "distancia_maxima": ${distancia},
  "lat": ${lat},
  "long": ${long},
  "ordenar_por_data": "${ordenarPorData}",
  "estilos_filtro": ${estilosFiltro}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Eventos por Distancia',
      apiUrl: '${baseUrl}/rpc/funcao_eventos_por_distancia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RestaurantesPorDistanciaCall {
  Future<ApiCallResponse> call({
    double? distanciaMaxima = 0,
    double? lat = 0,
    double? long = 0,
    String? token = '',
  }) async {
    final baseUrl = EventosERestaurantesGroup.getBaseUrl(
      token: token,
    );

    final ffApiRequestBody = '''
{
  "distancia_maxima": ${distanciaMaxima},
  "lat": ${lat},
  "long": ${long}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Restaurantes por Distancia',
      apiUrl: '${baseUrl}/rpc/funcao_restaurantes_por_distancia',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN5dmp4aWlyaG5icHl2ZG1lZm1wIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyNDM2NjYsImV4cCI6MjAzMTgxOTY2Nn0.OP4HYY_hu1PAedV-IJUmDyEipAYp5LI-BLfqij3NFqc',
        'Authorization': 'Bearer ${token}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Eventos e Restaurantes Group Code

class GeoCodeReverseCall {
  static Future<ApiCallResponse> call({
    String? lat = '-23.533773',
    String? long = '-46.625290',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GeoCodeReverse',
      apiUrl:
          'https://geocode.maps.co/reverse?lat=${lat}&lon=${long}&api_key=66c5f8f6c056f396631201ywh255a01',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.display_name''',
      ));
  static String? rua(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.road''',
      ));
  static String? suburbio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.suburb''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.city''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.address.state''',
      ));
}

class MakeGoogleAutocompleteCall {
  static Future<ApiCallResponse> call({
    String? input = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Make Google Autocomplete',
      apiUrl: 'https://hook.us2.make.com/1pd18tf9hnz2rbi4xaqx4jstxj956o6n',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MakeGoogleDetailsCall {
  static Future<ApiCallResponse> call({
    String? placeId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Make Google Details',
      apiUrl: 'https://hook.us2.make.com/vxki32ej8qah9eh2u2lw9w67owmu57pc',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'place_id': placeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
