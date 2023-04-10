import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';
import 'package:mobile_movelx/helpers/routes/app_routes.dart';
import 'package:mobile_movelx/models/enums/user_roles.dart';

import '../../controllers/dtos/user_dtos.dart';

/*
const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'dev@hotmail.com': '123'
};
*/

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  List<UserDTO> usersFromDB = [];
  var users = {
    "default" : "123"
  };
  UserDTO? _userToLogIn;

  @override
  void initState(){
    super.initState();
    //TODO will call USERS on future
    UserDTO user1 = UserDTO(1, "juninhocb@hotmail.com", "123", "MyEnt", UserRoles.ADMINISTRATOR);
    UserDTO user2 = UserDTO(2, "dev@hotmail.com", "123", "MyEnt", UserRoles.BOSS);
    UserDTO user3 = UserDTO(3, "guest@hotmail.com", "123", "MyEnt", UserRoles.GUEST);
    usersFromDB.add(user1);
    usersFromDB.add(user2);
    usersFromDB.add(user3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _flutterLogin(),
    );
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(AppConstants.threeSeconds).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(AppConstants.threeSeconds).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  Future<String?> _authUser(LoginData data) {

    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(AppConstants.threeSeconds).then((_) {
      for (var user in usersFromDB){
        if (user.username == data.name){
          if (user.password == data.password){
            _userToLogIn = user;
            return null;
          }
        }
      }
      return "Usuário ou senha incorretos.";
    });
  }

  Widget _flutterLogin() {
    return FlutterLogin(
      onLogin: _authUser,
      onSignup: _signupUser,
      onRecoverPassword: _recoverPassword,
      messages: LoginMessages(
        userHint: 'Email',
        passwordHint: 'Senha',
        confirmPasswordHint: 'Confirmar',
        loginButton: 'ENTRAR',
        signupButton: 'REGISTRAR',
        forgotPasswordButton: 'Esqueceu a senha?',
        recoverPasswordButton: 'AJUDA',
        goBackButton: 'VOLTAR',
        confirmPasswordError: 'Senhas não conferem!',
        recoverPasswordDescription:
        'Uma senha será enviada em seu email',
        recoverPasswordSuccess: 'Senha recuperada com sucesso',
      ),
      onSubmitAnimationCompleted: () {
        //Navigator.pushReplacementNamed(context, AppRoutes.getGuestHomePage());
        if (_userToLogIn!.role.toString() == UserRoles.ARCHITET.toString() || _userToLogIn!.role.toString() == UserRoles.GUEST.toString()) {
          Navigator.pushReplacementNamed(context, AppRoutes.getMenuScreen());
        }else {
          Navigator.pushReplacementNamed(context, AppRoutes.getEnterpriseHomePage());
        }
      }

    );
  }
}
