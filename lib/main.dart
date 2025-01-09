import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/Page/first_page.dart';
import 'package:template_project/Page/home_page.dart';
import 'package:template_project/Page/signin_page.dart';
import 'package:template_project/Page/signup_page.dart';
import 'package:template_project/Provider/data_provider.dart';
import 'package:template_project/Provider/user_provider.dart';
import 'package:template_project/Widget/BottomNavigation.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UserProvider()),
      ChangeNotifierProvider(create: (_) => DataProvider()),
    ],
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
        '/home': (context) => MyHomePage(),
        '/navigation': (context) => Bottomnavigation(),
      },
    );
  }
}
