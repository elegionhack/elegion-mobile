import 'package:elegion/bloc/auth/auth_bloc.dart';
import 'package:elegion/ui/screens/auth/auth.dart';
import 'package:elegion/ui/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthNavigator extends StatelessWidget {
  const AuthNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is Authorized) {
          return const HomeScreen();
        } else {
          return const AuthScreen();
        }
      },
    );
  }
}
