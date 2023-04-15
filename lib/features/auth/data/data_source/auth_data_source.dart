import 'package:movie_application/core/utils/hive_storage.dart';
import 'package:movie_application/features/auth/data/models/auth_model.dart';

class AuthSource {
  AuthSource(this._hiveUtils);

  HiveUtils _hiveUtils;

  bool registerUser({required AuthModel registrationModel}) {
    return _hiveUtils.registerUser(registrationModel: registrationModel);
  }

  bool checkCredential({required String username, required String password}) {
    final String hiveUsername = _hiveUtils.getUserName();
    final String hivePassword = _hiveUtils.getPassword();
    print("username and password ${hiveUsername} $hivePassword");

    if (username == hiveUsername && hivePassword == password) {
      return true;
    }
    return false;
  }
}
