import 'package:elegion/bloc/auth/auth_bloc.dart';
import 'package:elegion/ui/widgets/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  Image.asset('assets/images/elogo.png'),
                  const SizedBox(height: 10),
                  Text(
                    '*Сейчас можно войти без логина и пароля',
                    style: theme.textTheme.subtitle1!.copyWith(fontSize: 8),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Логин',
                      fillColor: theme.hintColor.withOpacity(0.1),
                      focusColor: theme.hintColor,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0.0,
                          color: Colors.transparent,
                          style: BorderStyle.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.none,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Пароль',
                      fillColor: theme.hintColor.withOpacity(0.1),
                      focusColor: theme.hintColor,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          width: 0.0,
                          color: Colors.transparent,
                          style: BorderStyle.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.none,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SizedBox(
                width: size.width,
                child: CommonButton(
                  onPressed: () => _signIn(context),
                  title: 'Войти',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signIn(BuildContext context) {
    BlocProvider.of<AuthBloc>(context).add(SignIn());
  }
}
