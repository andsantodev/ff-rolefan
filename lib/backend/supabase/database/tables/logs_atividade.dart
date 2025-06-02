import '../database.dart';

class LogsAtividadeTable extends SupabaseTable<LogsAtividadeRow> {
  @override
  String get tableName => 'logs_atividade';

  @override
  LogsAtividadeRow createRow(Map<String, dynamic> data) =>
      LogsAtividadeRow(data);
}

class LogsAtividadeRow extends SupabaseDataRow {
  LogsAtividadeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LogsAtividadeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get idUsuario => getField<String>('id_usuario')!;
  set idUsuario(String value) => setField<String>('id_usuario', value);

  int get idPerfil => getField<int>('id_perfil')!;
  set idPerfil(int value) => setField<int>('id_perfil', value);

  String get tipoAtividade => getField<String>('tipo_atividade')!;
  set tipoAtividade(String value) => setField<String>('tipo_atividade', value);

  DateTime? get dataAtividade => getField<DateTime>('data_atividade');
  set dataAtividade(DateTime? value) =>
      setField<DateTime>('data_atividade', value);
}
