import 'package:elegion/bloc/bloc_observer.dart';
import 'package:elegion/elegion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(ElegionApp());
}
