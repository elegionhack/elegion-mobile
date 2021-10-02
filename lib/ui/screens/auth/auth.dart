import 'package:elegion/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _signIn(context),
          child: const Text('Войти'),
        ),
      ),
    );
  }

  void _signIn(BuildContext context) {
    BlocProvider.of<AuthBloc>(context).add(SignIn());
  }
}
