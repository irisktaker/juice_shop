import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/screens/login/login.dart';
import 'screens/button_nav_bar_tabs/home/home_screen.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/button_nav_bar_tabs/tabs_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(0, 255, 255, 255),
      systemStatusBarContrastEnforced: true,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Juice Shop',
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 36,
            color: Color(0xFF474747),
          ),
          titleMedium: TextStyle(
            fontSize: 18,
            color: Color(0xFF474747),
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            color: Color(0xFF474747),
          ),
        ),
      ),
      darkTheme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 36,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          titleMedium: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      initialRoute: SplashScreen.route,
      routes: {
        SplashScreen.route: (context) => const SplashScreen(),
        LoginScreen.route: (context) => const LoginScreen(),
        TabsScreen.route: (context) =>  TabsScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
      },
    );
  }
}
