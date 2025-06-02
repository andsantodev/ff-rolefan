// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> showCustomSnackBar(
  BuildContext context,
  String message,
  Color backgroundColor,
  String? actionLabel,
  Future Function()? onActionTap,
) async {
  final snackBar = SnackBar(
    content: Text(message),
    behavior: SnackBarBehavior.floating, // Permite o ajuste de margens
    margin: EdgeInsets.all(16.0), // Margem em todos os lados
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0), // Borda arredondada
    ),
    backgroundColor: backgroundColor, // Cor de fundo dinâmica
    duration: Duration(seconds: 3), // Tempo fixo de exibição
    action: actionLabel != null &&
            onActionTap !=
                null // Verifica se actionLabel e onActionTap não são nulos
        ? SnackBarAction(
            label: actionLabel, // Texto do botão
            onPressed: () => onActionTap!(), // Chama a função
            textColor: Color(0xFFF5F5F5), // Cor do texto da ação
          )
        : null, // Se algum for nulo, não define a ação
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
