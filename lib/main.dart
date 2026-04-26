import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/dashboard_screen.dart';

// setup struktur aplikasi flutter
void main() => runApp(const SulisApp());

class SulisApp extends StatelessWidget {
  const SulisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sulis Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          primary: Colors.pink,
        ),
        scaffoldBackgroundColor: Colors.pink.shade50,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}