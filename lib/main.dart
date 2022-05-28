import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/auth/login_screen.dart';
import 'screens/create_account/create_account_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/main_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        // statusBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.white,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
        initialRoute: MainScreen.routeName,
        routes: {
          MainScreen.routeName: (_) => const MainScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          CreateAccountScreen.routeName: (context) => const CreateAccountScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
        },
      ),
    );
  }
}
