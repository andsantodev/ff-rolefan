import '../database.dart';

class VwAppEstilosUnicosPublicadosTable
    extends SupabaseTable<VwAppEstilosUnicosPublicadosRow> {
  @override
  String get tableName => 'vw_app_estilos_unicos_publicados';

  @override
  VwAppEstilosUnicosPublicadosRow createRow(Map<String, dynamic> data) =>
      VwAppEstilosUnicosPublicadosRow(data);
}

class VwAppEstilosUnicosPublicadosRow extends SupabaseDataRow {
  VwAppEstilosUnicosPublicadosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwAppEstilosUnicosPublicadosTable();

  String? get estilo => getField<String>('estilo');
  set estilo(String? value) => setField<String>('estilo', value);
}
