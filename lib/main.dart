import 'dart:async';
import 'dart:developer';

import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/auth/auth_module.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/home/home_module.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/self_service/self_service_module.dart';
import 'package:fe_lab_clinicas_self_service/src/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'src/binding/lab_clinicas_application_biding.dart';

void main() {
  //! capturando o erro dos logger, capturando uma zona para capturar todos os erros, deve-se colocar no main
  runZonedGuarded(() {
    runApp(const LabClinicasSelfServiceApp());
  }, (error, stack) {
    log('Erro não tratado', error: error, stackTrace: stack);
    throw error;
  });
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
      modules: [
        AuthModule(),
        HomeModule(),
        SelfServiceModule(),
      ],
    );
  }
}
