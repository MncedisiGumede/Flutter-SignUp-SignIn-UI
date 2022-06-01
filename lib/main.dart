import 'authentication/constants/constants.dart';
import 'authentication/registration.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Module 3 - Mncedisi Gumede',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: kPrimaryColor,
        backgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          headline4: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          button: TextStyle(color: kPrimaryColor),
          headline5: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.2),
            )
          )
        )
      ),
      home: WelcomeScreen(),
    );
  }
}


