import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/componentes/tutorial/tutorial_widget.dart';

// Focus widget keys for this walkthrough
final columnHtt0kqoh = GlobalKey();
final placeholderWidgetI159gp1b = GlobalKey();
final column7h6z8wam = GlobalKey();
final columnCs131zsh = GlobalKey();
final columnG1bzm767 = GlobalKey();
final column47xk5qbw = GlobalKey();

/// Tutoria Home
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Menu
      TargetFocus(
        keyTarget: columnHtt0kqoh,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              descricao: 'Explore diferentes rolês, restaurantes, e filmes.',
              titulo: 'Descubra Categorias Exclusivas',
              etapa: '1 de 6',
            ),
          ),
        ],
      ),

      /// Lista Fav
      TargetFocus(
        keyTarget: placeholderWidgetI159gp1b,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              titulo: 'Favoritos',
              descricao:
                  'Favoritos a um clique de distância: salve os rolês que você ama e nunca perca as atualizações!',
              etapa: '2 de 6',
            ),
          ),
        ],
      ),

      /// Home
      TargetFocus(
        keyTarget: column7h6z8wam,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              titulo: 'Home',
              descricao:
                  'Acesse a Home para ver rolês em destaque, seus favoritos e as últimas notificações',
              etapa: '3 de 6',
            ),
          ),
        ],
      ),

      /// Explorar
      TargetFocus(
        keyTarget: columnCs131zsh,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              titulo: 'Explorar',
              descricao:
                  'Verifique os rolês disponíveis mais próximos de você, amplie a busca para encontrar o seu rolê ou restaurante',
              etapa: '4 de 6',
            ),
          ),
        ],
      ),

      /// Favoritos
      TargetFocus(
        keyTarget: columnG1bzm767,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              titulo: 'Favoritos',
              descricao:
                  'Salve seus rolês e restaurantes favoritos para acessá-los facilmente em um só lugar',
              etapa: '5 de 6',
            ),
          ),
        ],
      ),

      /// Perfil
      TargetFocus(
        keyTarget: column47xk5qbw,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialWidget(
              titulo: 'Perfil',
              descricao:
                  'Gerencie seu perfil: atualize os seus dados e sua localização, reporte erros e ajuste o modo escuro conforme sua preferência.',
              etapa: '6 de 6',
            ),
          ),
        ],
      ),
    ];
