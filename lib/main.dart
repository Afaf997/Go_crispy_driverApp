import 'package:flutter/material.dart';
import 'package:go_crispy/screens/select_language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
        fontFamily: "Aeonik",
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors.transparent,
        ),
         scaffoldBackgroundColor:Colors.white,
      ),
      title: 'Flutter Demo',
      home:const SelectLanguage() ,
    );
  }
}
