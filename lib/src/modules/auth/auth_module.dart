import 'package:fe_lab_clinicas_self_service/src/modules/auth/login/login_router.dart';
import 'package:fe_lab_clinicas_self_service/src/repositories/user/user_repository.dart';
import 'package:fe_lab_clinicas_self_service/src/repositories/user/user_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class AuthModule extends FlutterGetItModule {
  //* é possível ter os binds, onde ele irá ficar ativo para todas as telas desse modulos
  //* escolher muito bem o que deve-se colocar, basicamente ele seria adicionado no core, diferente do application

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<UserRepository>(
            (i) => UserRepositoryImpl(restClient: i())),
      ];

  @override
  String get moduleRouteName => '/auth';

  @override
  Map<String, WidgetBuilder> get pages =>
      {'/login': (_) => const LoginRouter()};
}
