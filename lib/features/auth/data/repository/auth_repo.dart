import 'package:movie_application/features/auth/data/data_source/auth_data_source.dart';
import 'package:movie_application/features/auth/data/models/auth_model.dart';

class AuthRepoImpl {
  AuthRepoImpl(this._registerSource);

  final AuthSource _registerSource;

  /// Receives [username] and [password] from the bloc
  bool storeRegistrationData({required AuthModel registrationModel}) {
    return _registerSource.registerUser(registrationModel: registrationModel);
  }

  void loginUser({required String username, required String password}) {
    _registerSource.checkCredential(username: username, password: password);
  }
}
