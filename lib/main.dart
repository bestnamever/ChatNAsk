import 'package:flutter/material.dart';
import 'package:flutter_chat_ui_starter/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat & Ask',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFEF9EB)),
      ),
      home: MySplashScreen(),
    );
  }
}
