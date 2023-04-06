import 'package:flutter/material.dart';
import 'package:movie_application/features/movies/presentation/widgets/textFormField.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormFieldWidget(
            controller: _usernameController,
            hintText: 'Enter username',
            errorText: 'Invalid username',
            labelText: 'UserName',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Invalid UserName';
              }
              return null;
            },
          ),
          TextFormFieldWidget(
            controller: _passwordController,
            hintText: 'Enter Password',
            errorText: 'Invalid Password',
            labelText: 'Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Invalid pssword ';
              }
              return null;
            },
          ),
          TextFormFieldWidget(
            controller: _emailController,
            hintText: 'Enter Email',
            errorText: 'Invalid email',
            labelText: 'Email',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Invalid Email';
              }
              return null;
            },
          ),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_usernameController.text);
                  print(_passwordController.text);
                }
              },
              child: const Text('Submit'))
        ],
      ),
    ));
  }
}
