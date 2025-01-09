import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/Page/first_page.dart';
import 'package:template_project/Page/signin_page.dart';
import 'package:template_project/Page/signup_page.dart';
import 'package:template_project/Provider/user_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => UserProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/signin': (context) => SigninPage(),
        '/signup': (context) => SignupPage(),
      },
    );
  }
}
