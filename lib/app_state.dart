import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _appVersion =
          await secureStorage.getString('ff_appVersion') ?? _appVersion;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_perfilUsuario') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_perfilUsuario') ?? '{}';
          _perfilUsuario = PerfilUsuarioStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _showTutorial =
          await secureStorage.getBool('ff_showTutorial') ?? _showTutorial;
    });
    await _safeInitAsync(() async {
      _distanciaLocalizacao =
          await secureStorage.getDouble('ff_distanciaLocalizacao') ??
              _distanciaLocalizacao;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _appVersion = '';
  String get appVersion => _appVersion;
  set appVersion(String value) {
    _appVersion = value;
    secureStorage.setString('ff_appVersion', value);
  }

  void deleteAppVersion() {
    secureStorage.delete(key: 'ff_appVersion');
  }

  PerfilUsuarioStruct _perfilUsuario = PerfilUsuarioStruct();
  PerfilUsuarioStruct get perfilUsuario => _perfilUsuario;
  set perfilUsuario(PerfilUsuarioStruct value) {
    _perfilUsuario = value;
    secureStorage.setString('ff_perfilUsuario', value.serialize());
  }

  void deletePerfilUsuario() {
    secureStorage.delete(key: 'ff_perfilUsuario');
  }

  void updatePerfilUsuarioStruct(Function(PerfilUsuarioStruct) updateFn) {
    updateFn(_perfilUsuario);
    secureStorage.setString('ff_perfilUsuario', _perfilUsuario.serialize());
  }

  double _restricaoMobile = 479.0;
  double get restricaoMobile => _restricaoMobile;
  set restricaoMobile(double value) {
    _restricaoMobile = value;
  }

  bool _showTutorial = false;
  bool get showTutorial => _showTutorial;
  set showTutorial(bool value) {
    _showTutorial = value;
    secureStorage.setBool('ff_showTutorial', value);
  }

  void deleteShowTutorial() {
    secureStorage.delete(key: 'ff_showTutorial');
  }

  List<FuncEventosPorDistanciaStruct> _EventosPorDistancia = [];
  List<FuncEventosPorDistanciaStruct> get EventosPorDistancia =>
      _EventosPorDistancia;
  set EventosPorDistancia(List<FuncEventosPorDistanciaStruct> value) {
    _EventosPorDistancia = value;
  }

  void addToEventosPorDistancia(FuncEventosPorDistanciaStruct value) {
    EventosPorDistancia.add(value);
  }

  void removeFromEventosPorDistancia(FuncEventosPorDistanciaStruct value) {
    EventosPorDistancia.remove(value);
  }

  void removeAtIndexFromEventosPorDistancia(int index) {
    EventosPorDistancia.removeAt(index);
  }

  void updateEventosPorDistanciaAtIndex(
    int index,
    FuncEventosPorDistanciaStruct Function(FuncEventosPorDistanciaStruct)
        updateFn,
  ) {
    EventosPorDistancia[index] = updateFn(_EventosPorDistancia[index]);
  }

  void insertAtIndexInEventosPorDistancia(
      int index, FuncEventosPorDistanciaStruct value) {
    EventosPorDistancia.insert(index, value);
  }

  List<FuncRestaurantesPorDistanciaStruct> _RestaurantesPorDistancia = [];
  List<FuncRestaurantesPorDistanciaStruct> get RestaurantesPorDistancia =>
      _RestaurantesPorDistancia;
  set RestaurantesPorDistancia(List<FuncRestaurantesPorDistanciaStruct> value) {
    _RestaurantesPorDistancia = value;
  }

  void addToRestaurantesPorDistancia(FuncRestaurantesPorDistanciaStruct value) {
    RestaurantesPorDistancia.add(value);
  }

  void removeFromRestaurantesPorDistancia(
      FuncRestaurantesPorDistanciaStruct value) {
    RestaurantesPorDistancia.remove(value);
  }

  void removeAtIndexFromRestaurantesPorDistancia(int index) {
    RestaurantesPorDistancia.removeAt(index);
  }

  void updateRestaurantesPorDistanciaAtIndex(
    int index,
    FuncRestaurantesPorDistanciaStruct Function(
            FuncRestaurantesPorDistanciaStruct)
        updateFn,
  ) {
    RestaurantesPorDistancia[index] =
        updateFn(_RestaurantesPorDistancia[index]);
  }

  void insertAtIndexInRestaurantesPorDistancia(
      int index, FuncRestaurantesPorDistanciaStruct value) {
    RestaurantesPorDistancia.insert(index, value);
  }

  String _ordenarData = 'ASC';
  String get ordenarData => _ordenarData;
  set ordenarData(String value) {
    _ordenarData = value;
  }

  List<String> _estilosEscolhidos = [];
  List<String> get estilosEscolhidos => _estilosEscolhidos;
  set estilosEscolhidos(List<String> value) {
    _estilosEscolhidos = value;
  }

  void addToEstilosEscolhidos(String value) {
    estilosEscolhidos.add(value);
  }

  void removeFromEstilosEscolhidos(String value) {
    estilosEscolhidos.remove(value);
  }

  void removeAtIndexFromEstilosEscolhidos(int index) {
    estilosEscolhidos.removeAt(index);
  }

  void updateEstilosEscolhidosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    estilosEscolhidos[index] = updateFn(_estilosEscolhidos[index]);
  }

  void insertAtIndexInEstilosEscolhidos(int index, String value) {
    estilosEscolhidos.insert(index, value);
  }

  double _distanciaLocalizacao = 100.0;
  double get distanciaLocalizacao => _distanciaLocalizacao;
  set distanciaLocalizacao(double value) {
    _distanciaLocalizacao = value;
    secureStorage.setDouble('ff_distanciaLocalizacao', value);
  }

  void deleteDistanciaLocalizacao() {
    secureStorage.delete(key: 'ff_distanciaLocalizacao');
  }

  double _originalScreenHeight = 0.0;
  double get originalScreenHeight => _originalScreenHeight;
  set originalScreenHeight(double value) {
    _originalScreenHeight = value;
  }

  final _cacheFavoritosEventosManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheFavoritosEventos({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheFavoritosEventosManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheFavoritosEventosCache() =>
      _cacheFavoritosEventosManager.clear();
  void clearCacheFavoritosEventosCacheKey(String? uniqueKey) =>
      _cacheFavoritosEventosManager.clearRequest(uniqueKey);

  final _cacheFavoritosRestaurantesManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheFavoritosRestaurantes({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheFavoritosRestaurantesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheFavoritosRestaurantesCache() =>
      _cacheFavoritosRestaurantesManager.clear();
  void clearCacheFavoritosRestaurantesCacheKey(String? uniqueKey) =>
      _cacheFavoritosRestaurantesManager.clearRequest(uniqueKey);

  final _cacheEventosHomeManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheEventosHome({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheEventosHomeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheEventosHomeCache() => _cacheEventosHomeManager.clear();
  void clearCacheEventosHomeCacheKey(String? uniqueKey) =>
      _cacheEventosHomeManager.clearRequest(uniqueKey);

  final _cacheRestaurantesHomeManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheRestaurantesHome({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheRestaurantesHomeManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheRestaurantesHomeCache() =>
      _cacheRestaurantesHomeManager.clear();
  void clearCacheRestaurantesHomeCacheKey(String? uniqueKey) =>
      _cacheRestaurantesHomeManager.clearRequest(uniqueKey);

  final _cacheRestaurantesManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheRestaurantes({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheRestaurantesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheRestaurantesCache() => _cacheRestaurantesManager.clear();
  void clearCacheRestaurantesCacheKey(String? uniqueKey) =>
      _cacheRestaurantesManager.clearRequest(uniqueKey);

  final _cacheFilmesManager = FutureRequestManager<List<FilmesRow>>();
  Future<List<FilmesRow>> cacheFilmes({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<FilmesRow>> Function() requestFn,
  }) =>
      _cacheFilmesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheFilmesCache() => _cacheFilmesManager.clear();
  void clearCacheFilmesCacheKey(String? uniqueKey) =>
      _cacheFilmesManager.clearRequest(uniqueKey);

  final _cacheEventosPorDistanciaManager =
      FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> cacheEventosPorDistancia({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _cacheEventosPorDistanciaManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheEventosPorDistanciaCache() =>
      _cacheEventosPorDistanciaManager.clear();
  void clearCacheEventosPorDistanciaCacheKey(String? uniqueKey) =>
      _cacheEventosPorDistanciaManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
