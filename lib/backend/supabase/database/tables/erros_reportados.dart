import '../database.dart';

class ErrosReportadosTable extends SupabaseTable<ErrosReportadosRow> {
  @override
  String get tableName => 'erros_reportados';

  @override
  ErrosReportadosRow createRow(Map<String, dynamic> data) =>
      ErrosReportadosRow(data);
}

class ErrosReportadosRow extends SupabaseDataRow {
  ErrosReportadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ErrosReportadosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get idUsuario => getField<String>('id_usuario')!;
  set idUsuario(String value) => setField<String>('id_usuario', value);

  String get descricaoErro => getField<String>('descricao_erro')!;
  set descricaoErro(String value) => setField<String>('descricao_erro', value);

  String? get printTela => getField<String>('print_tela');
  set printTela(String? value) => setField<String>('print_tela', value);

  DateTime get dataField => getField<DateTime>('data')!;
  set dataField(DateTime value) => setField<DateTime>('data', value);

  String get dispositivo => getField<String>('dispositivo')!;
  set dispositivo(String value) => setField<String>('dispositivo', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
