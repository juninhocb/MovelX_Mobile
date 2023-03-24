import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:mobile_movelx/helpers/constants/app_colors.dart';
import 'package:mobile_movelx/helpers/constants/app_constants.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'dev@hotmail.com': '123'
};

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _flutterLogin(),

    );
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(const Duration(seconds: 3)).then((_) {
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(const Duration(seconds: 3)).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return null;
    });
  }

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(const Duration(seconds: 3)).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
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
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => DashboardScreen(),
          ));
        }
    );
  }


  Widget _buildBody(){
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.mainColor, AppColors.secondaryColor, AppColors.detailColor])
      ),
      child: Column(
        children: [
          _buildFirstPart(),
          _buildSecondPart(),
          _buildThirdPart()
        ],
      ),
    );
  }

  Widget _buildFirstPart() {
    return Container(
        child: Image.asset(AppConstants.logoWithoutBgPath));
  }

  Widget _buildSecondPart() {
    return Container(
      child: Column(
        children: [
          _buildSecondFirstPart(),
          _buildSecondSecondPart(),
          _buildSecondThirdPart(),
          _buildSecondFourthPart()
        ],
      ),
    );
  }

  Widget _buildThirdPart() {
    return Container();
  }

  //region Second Part Widgets
  Widget _buildSecondFirstPart(){
   return Container(
     margin: EdgeInsets.symmetric(horizontal: 30),
     child: Row(
       children: [
         Icon(Icons.person),
         Expanded(
           child: TextField(
             obscureText: true,
             decoration: InputDecoration(
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(36),
               ),
               labelText: 'Login',
               labelStyle: TextStyle(
                 color: AppColors.textColor
               ),
             ),
           ),
         )
       ],
     ),
   );
  }

  Widget _buildSecondSecondPart(){
    return Container();
  }

  Widget _buildSecondThirdPart(){
    return Container();
  }

  Widget _buildSecondFourthPart(){
    return Container();
  }
  //endregion

}