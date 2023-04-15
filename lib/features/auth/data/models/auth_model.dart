import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

// import 'package:freezed_annotation/freezed_annotation.dart';

//MANUAL WAY OF CREATING MODEL
// class RegistrationModel {
//   RegistrationModel({
//     this.email,
//     this.username,
//     this.password,
//     this.firstName,
//     this.lastName,
//     this.collegeName,
//     this.phoneNo,
//   });
//
//   final String? email;
//   final String? username;
//   final String? password;
//   final String? firstName;
//   final String? lastName;
//   final String? collegeName;
//   final String? phoneNo;
//
//   Map<String, dynamic> toJson() => {
//         'email': email,
//         'username': username,
//         'password': password,
//         'firstName': firstName,
//         'lastName': lastName,
//         'collegeName': collegeName,
//         'phoneNo': phoneNo,
//       };
//
//   factory RegistrationModel.fromJson(json) {
//     return RegistrationModel(
//       email: json['email'],
//       username: json['username'],
//       password: json['password'],
//       firstName: json['firstName'],
//       lastName: json['lastName'],
//       collegeName: json['collegeName'],
//       phoneNo: json['phoneNo'],
//     );
//   }
//
//   RegistrationModel copyWith(
//       {required String email, required String username}) {
//     return RegistrationModel(
//         email: email,
//         username: username,
//         firstName: firstName,
//         lastName: lastName);
//   }
// }

///FREEZED WAY OF CREATING MODEL



@freezed
class AuthModel with _$AuthModel {
  factory AuthModel({
    final String? email,
    final String? username,
    final String? password,
    final String? firstName,
    final String? lastName,
    final String? collegeName,
    final String? phoneNo,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, Object?> json) =>
      _$AuthModelFromJson(json);
}
