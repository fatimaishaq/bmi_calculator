import 'package:bmi_calculator_app/Screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData.dark().copyWith(
           colorScheme: ColorScheme.light(
             primary: Color(0xFF0A0D22),
           ),
         scaffoldBackgroundColor: Color(0xFF090C21),
       ),
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Color(0xFF090C21),
      //   textTheme: TextTheme(
      //     bodyMedium: TextStyle(color: Colors.white),
      //   ),
      //
      //   colorScheme: ColorScheme.light(
      //     primary: Color(0xFF0A0D22),
      //
      //   ),
      // ),
      home: InputPage(),
    );
  }
}


