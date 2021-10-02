import 'package:elegion/bloc/bloc_observer.dart';
import 'package:elegion/elegion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  runApp(ElegionApp());
}
