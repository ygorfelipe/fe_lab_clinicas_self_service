import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service/src/core/env.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LabClinicasApplicationBiding extends ApplicationBindings {
  @override
  //* essa forma aqui do applicationBinds é a mesma do flutter_modular, iremos colocar
  //* todas as binds de inicialização aqi
  //* após adicionar o LabClinicasApplicationBiding, devemos colocar no binds lá na MAIN
  List<Bind<Object>> bindings() => [
        Bind.lazySingleton<RestClient>((i) => RestClient(Env.backendBaseUrl)),
      ];
}
