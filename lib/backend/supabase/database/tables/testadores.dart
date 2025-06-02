import '../database.dart';

class TestadoresTable extends SupabaseTable<TestadoresRow> {
  @override
  String get tableName => 'testadores';

  @override
  TestadoresRow createRow(Map<String, dynamic> data) => TestadoresRow(data);
}

class TestadoresRow extends SupabaseDataRow {
  TestadoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestadoresTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get idUsuario => getField<String>('id_usuario')!;
  set idUsuario(String value) => setField<String>('id_usuario', value);

  String get oQueGostou => getField<String>('o_que_gostou')!;
  set oQueGostou(String value) => setField<String>('o_que_gostou', value);

  List<String> get printsTela => getListField<String>('prints_tela');
  set printsTela(List<String>? value) =>
      setListField<String>('prints_tela', value);

  DateTime get dataField => getField<DateTime>('data')!;
  set dataField(DateTime value) => setField<DateTime>('data', value);

  String get dispositivo => getField<String>('dispositivo')!;
  set dispositivo(String value) => setField<String>('dispositivo', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String get sugestoesObservacoes => getField<String>('sugestoes_observacoes')!;
  set sugestoesObservacoes(String value) =>
      setField<String>('sugestoes_observacoes', value);
}
