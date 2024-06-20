import 'package:app_api_1/screen/home.dart';
import 'package:app_api_1/screen/login_screen.dart';
import 'package:app_api_1/screen/profile.dart';
import 'package:app_api_1/screen/register.dart';
import 'package:app_api_1/screen/register_otp.dart';
import 'package:app_api_1/screen/test1.dart';
import 'package:app_api_1/screen/tests.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const TestProfile(),
       routes: {
      //'splash':(context) => const SplashScreen(),
      'login':(context) => const LoginScreen(),
      'register':(context) => const RegisterScreen(),
      'homescreen':(context) => const HomeScreen(),
      'registerotp':(context) => const OtpRegisterScreen(), 
      'profile':(context) => const MyProfile(),
    },

    );
    
  }
}

