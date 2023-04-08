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
        appBar: AppBar(title: Text('Register Screen')),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormFieldWidget(
                  controller: _usernameController,
                  hintText: 'Enter username',
                  // errorText: '',
                  labelText: 'UserName',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Invalid UserName';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                  controller: _passwordController,
                  hintText: 'Enter Password',
                  // errorText: '',
                  labelText: 'Password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Invalid your pssword ';
                    }
                    if (!RegExp(r"^[a-z.A-Z]").hasMatch(value)) {
                      return "Please enter a valid email address";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormFieldWidget(
                  controller: _emailController,
                  hintText: 'Enter Email',
                  // errorText: '',
                  labelText: 'Email',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your email';
                    }
                    // if (!RegExp(
                    //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    //     .hasMatch(value)) {
                    //   return "Please enter a valid email address";
                    // }

                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
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
          ),
        ));
  }
}
