import 'dart:ffi';

import 'package:evently/app_theme.dart';
import 'package:evently/auth/login_screen.dart';
import 'package:evently/auth/register_screen.dart';
import 'package:evently/create_event_screen.dart';
import 'package:evently/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EventlyApp());
}

class EventlyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName : (_) => HomeScreen(),
        LoginScreen.routeName : (_) => LoginScreen(),
        RegisterScreen.routeName : (_) => RegisterScreen(),
        CreateEventScreen.routeName : (_) => CreateEventScreen(),



      },
      initialRoute: HomeScreen.routeName,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
