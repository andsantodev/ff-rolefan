import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';

Future actionLogAtividades(
  BuildContext context, {
  required String? atividade,
}) async {
  await LogsAtividadeTable().insert({
    'id_usuario': currentUserUid,
    'id_perfil': FFAppState().perfilUsuario.idPerfil,
    'tipo_atividade': atividade,
    'data_atividade': supaSerialize<DateTime>(getCurrentTimestamp),
  });
}

Future roleNaoSalvo(BuildContext context) async {
  await actions.showCustomSnackBar(
    context,
    'Rolê removido dos itens Salvos',
    Color(0xFF4B555A),
    ' ',
    () async {},
  );
}

Future roleSalvo(BuildContext context) async {
  await actions.showCustomSnackBar(
    context,
    'Rolê Salvo!',
    Color(0xFF4B555A),
    'Ver',
    () async {
      context.pushNamed(SalvosWidget.routeName);
    },
  );
}

Future restauranteSalvo(BuildContext context) async {
  await actions.showCustomSnackBar(
    context,
    'Restaurante Salvo!',
    Color(0xFF4B555A),
    'Ver',
    () async {
      context.pushNamed(SalvosWidget.routeName);
    },
  );
}

Future restauranteNaoSalvo(BuildContext context) async {
  await actions.showCustomSnackBar(
    context,
    'Restaurante removido dos itens Salvos',
    Color(0xFF4B555A),
    ' ',
    () async {},
  );
}

Future erroAoSalvar(BuildContext context) async {
  await actions.showCustomSnackBar(
    context,
    'Erro ao salvar! Tente novamente.',
    Color(0xFF4B555A),
    ' ',
    () async {},
  );
}
