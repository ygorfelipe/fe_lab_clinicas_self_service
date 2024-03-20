import 'package:fe_lab_clinicas_self_service/src/modules/auth/login/controller/login_controller.dart';
import 'package:fe_lab_clinicas_self_service/src/modules/auth/login/home/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import '../../../services/user/user_login_service.dart';
import '../../../services/user/user_login_service_impl.dart';

class LoginRouter extends FlutterGetItModulePageRouter {
  const LoginRouter({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<UserLoginService>(
            (i) => UserLoginServiceImpl(userRepository: i())),
        Bind.lazySingleton((i) => LoginController(loginService: i())),
      ];

  @override
  WidgetBuilder get view => (_) => const LoginPage();
}
