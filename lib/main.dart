import 'package:flutter/material.dart';
import 'sign_in_screen.dart';
import 'sign_up_screen.dart';
import 'dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal Berita App',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const SignInScreen(),
        '/sign_up': (context) => const SignUpScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
        // Default font family.
        fontFamily: 'Montserrat',
        // Default text theme.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline2: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
          headline3: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
          headline4: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(fontSize: 24.0, fontStyle: FontStyle.normal),
          bodyText1: TextStyle(fontSize: 18.0, fontStyle: FontStyle.normal),
          bodyText2: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}
