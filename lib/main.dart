import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service/src/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'src/binding/lab_clinicas_application_biding.dart';

void main() {
  runApp(const LabClinicasSelfServiceApp());
}

class LabClinicasSelfServiceApp extends StatelessWidget {
  const LabClinicasSelfServiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    //! criando estrutura basica para utilizar o FlutterGetIt, onde foi criado de forma simples com a rota padrão
    //! ainda não foi criado a estrutura utilizando modulos igual o flutter_modular
    //! não esquecer de colocar o BIND
    return LabClinicasCoreConfig(
      title: 'Lab Clinicas Auto Atendimento',
      bindings: LabClinicasApplicationBiding(),
      pagesBuilders: [
        FlutterGetItPageBuilder(
          page: (_) => const SplashPage(),
          path: '/',
        )
      ],
    );
  }
}
