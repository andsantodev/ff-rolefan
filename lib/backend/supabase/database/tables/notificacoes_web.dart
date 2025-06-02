import '../database.dart';

class NotificacoesWebTable extends SupabaseTable<NotificacoesWebRow> {
  @override
  String get tableName => 'notificacoes_web';

  @override
  NotificacoesWebRow createRow(Map<String, dynamic> data) =>
      NotificacoesWebRow(data);
}

class NotificacoesWebRow extends SupabaseDataRow {
  NotificacoesWebRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificacoesWebTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imagem => getField<String>('imagem');
  set imagem(String? value) => setField<String>('imagem', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String get descricao => getField<String>('descricao')!;
  set descricao(String value) => setField<String>('descricao', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dataEnvio => getField<DateTime>('data_envio');
  set dataEnvio(DateTime? value) => setField<DateTime>('data_envio', value);
}
