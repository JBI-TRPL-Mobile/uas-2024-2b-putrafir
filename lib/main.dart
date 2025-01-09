import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/Provider/appProvider.dart';
import 'package:template_project/page/home.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Appprovider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}
