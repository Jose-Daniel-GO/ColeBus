import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/sign_up.dart';
import 'pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity,  
        ),
        home: LoginPage(),
        routes: {
          "login": (context) => LoginPage(),
          "signup": (context) => SignUpPage(),
          "dashboard": (context) => DashBoardPage(),
        });
  }
}
