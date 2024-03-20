import 'package:asyncstate/asyncstate.dart';
import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';

import 'package:signals_flutter/signals_flutter.dart';

import 'package:fe_lab_clinicas_self_service/src/services/user/user_login_service.dart';

//! na controller para iniciar e fazer a chama da message, deve-se colocar with messageStateMixin
class LoginController with MessageStateMixin {
  final UserLoginService _loginService;
  LoginController({
    required UserLoginService loginService,
  }) : _loginService = loginService;

  //* gerênciando estado com signal
  //* sempre quando criar, dar 'ALT + ENTER' e definir o tipo da variavel, nesse caso foi para bool
  final _obscurePassword = signal(true);
  final _logged = signal(false);

  bool get obscurePassword => _obscurePassword();
  bool get logged => _logged();

  //* criando um metodo auxiliar, para criar a inverter
  void passwordToggle() => _obscurePassword.value = !_obscurePassword.value;

  //! criando o processo de autenticação
  Future<void> login(String email, String password) async {
    //* chamando já com o asyncLoader para ele aparece o carregamento quando for buscar/enviar os dados
    final loginResult =
        await _loginService.execute(email, password).asyncLoader();
    switch (loginResult) {
      case Left(value: ServiceException(:final message)):
        //* mostrar o erro
        showError(message);
      case Right(value: _):
        //* redirecionar o usuário para a home
        //* informando a tela que ocorreu login com sucesso
        //! não devera chamar o contexto aqui na controller
        _logged.value =
            true; // informando a tela que já foi informado que houve uma alteração. e lá na view ele vai fazer o navigate
    }
  }
}
