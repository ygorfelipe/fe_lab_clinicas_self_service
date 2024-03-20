import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:signals_flutter/signals_flutter.dart';

enum FormSteps {
  none,
  whoIAm,
  findPatient,
  patient,
  documents,
  done,
  restart,
}

class SelfServiceController with MessageStateMixin {
  //! ESSA CONTROLLER É A PRINCIPAL DE TODOS OS MODULOS, OU SEJA, ELA SERA RESPONSAVEL POR TUDO
  //! TODOS OS MODULES IRAO CHAMAR ELA E ELA SERA RESPONSAVEL POR ARMAZENAR TODOS OS DADOS
  //! ELA TERA UM ESTADO QUE FICARA RESPONSAVEL POR TUDO

  //* iremos precisar guardar os passos

  final _step = ValueSignal(FormSteps.none);
  FormSteps get step => _step();

  //! IREMOS TRABALHAR COM FORCE UPDATE PARA UTILIZAR O FORM
  //! ONDE ELE SERA RTESPONSAVEL POR TRABALHAR COM AS ROTAS DE REDIRECIONAMENTO
  void startProcess() {
    _step.forceUpdate(FormSteps.whoIAm);
  }
}
