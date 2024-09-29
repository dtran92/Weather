import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/ui/app_screen/app_body_cubit.dart';
import 'package:weather/ui/app_screen/app_screen.dart';
import 'package:weather/ui/app_screen/bottom_navigation_cubit.dart';
import 'package:weather/ui/home_screen/home_cubit.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await inject();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true,
      textTheme: Theme.of(context).textTheme.apply(
        bodyColor: Colors.white
      )),
      home: const AppBlocProvider(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppBlocProvider extends StatelessWidget {
  const AppBlocProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => AppBodyCubit()),
      BlocProvider(create: (_) => BottomNavigationCubit()),
      BlocProvider(create: (_) => HomeCubit()..checkLocationPermission())
    ], child: const MainScreen());
  }
}
