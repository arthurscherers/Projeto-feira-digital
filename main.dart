import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'screens/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Inicialização do Firebase:
  // await Firebase.initializeApp();
  runApp(FeiraDigitalApp());
}

class FeiraDigitalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Feira Digital',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginPage(),
    );
  }
}
