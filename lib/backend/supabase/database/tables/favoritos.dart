import '../database.dart';

class FavoritosTable extends SupabaseTable<FavoritosRow> {
  @override
  String get tableName => 'favoritos';

  @override
  FavoritosRow createRow(Map<String, dynamic> data) => FavoritosRow(data);
}

class FavoritosRow extends SupabaseDataRow {
  FavoritosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavoritosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get idCliente => getField<String>('id_cliente')!;
  set idCliente(String value) => setField<String>('id_cliente', value);

  int? get idEventos => getField<int>('id_eventos');
  set idEventos(int? value) => setField<int>('id_eventos', value);

  int? get idRestaurantes => getField<int>('id_restaurantes');
  set idRestaurantes(int? value) => setField<int>('id_restaurantes', value);

  DateTime get dataFavorito => getField<DateTime>('data_favorito')!;
  set dataFavorito(DateTime value) =>
      setField<DateTime>('data_favorito', value);
}
