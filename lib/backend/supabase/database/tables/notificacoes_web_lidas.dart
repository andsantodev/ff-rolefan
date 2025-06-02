import '../database.dart';

class NotificacoesWebLidasTable extends SupabaseTable<NotificacoesWebLidasRow> {
  @override
  String get tableName => 'notificacoes_web_lidas';

  @override
  NotificacoesWebLidasRow createRow(Map<String, dynamic> data) =>
      NotificacoesWebLidasRow(data);
}

class NotificacoesWebLidasRow extends SupabaseDataRow {
  NotificacoesWebLidasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificacoesWebLidasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get idUsuarioApp => getField<String>('id_usuario_app')!;
  set idUsuarioApp(String value) => setField<String>('id_usuario_app', value);

  int? get idNotificacao => getField<int>('id_notificacao');
  set idNotificacao(int? value) => setField<int>('id_notificacao', value);
}
