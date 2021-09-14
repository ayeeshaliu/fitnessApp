



import 'package:fitness_app/features/authentication/domain/use-cases/login_use_cases.dart';
import 'package:fitness_app/features/viewModel/baseState.dart';

abstract class AbstractLoginViewModel extends BaseViewModel {

  Future<Map<String, dynamic>> login({email, password});
  // Future<Map<String, dynamic>> register1({    email,
  //   firstName,
  //   lastName,
  //   telephone,
  //
  //   username,
  //   password});
  //
  // Future<Map<String, dynamic>> changePassword({currentPassword, newPassword, token,});
}


class LoginState extends AbstractLoginViewModel{
  final LoginUseCase loginUseCase;

  LoginState(this.loginUseCase);

  @override
  Future<Map<String, dynamic>> login({email, password}) {
    var res = loginUseCase.call(email: email, password: password);
  }


}