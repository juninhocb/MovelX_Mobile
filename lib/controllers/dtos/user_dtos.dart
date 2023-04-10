import 'package:mobile_movelx/models/enums/user_roles.dart';

class UserDTO {
  int? id;
  String? username;
  String? password;
  String? enterprise;
  UserRoles? role;

  UserDTO(int idParam, String usernameParam, String passwordParam, String enterpriseParam, UserRoles roleParam){
    id = idParam;
    username = usernameParam;
    password = passwordParam;
    enterprise = enterpriseParam;
    role = roleParam;
  }

}