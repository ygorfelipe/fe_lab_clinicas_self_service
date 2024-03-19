import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';

abstract interface class UserRepository {
  //! Retornando o Either, pois ou ele retorna uma excessão ou um parametro qlqr, nesse caso do login um access_token
  //! ela sempre sera criado la no core, é possível jogar todas essas aplicação lá no core.
  //! porém é feito cada aplicação seu proprio repository e service

  Future<Either<AuthException, String>> login(String email, String password);
  
}
