import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/home/screen/login_page.dart';
import 'presentation/home/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hayatinizinhatasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const LoginPage(), //sayfaları görüntülemek için HomeScreen ve LoginPage'i Mainden değiştirmek lazım
    );//xcode emülatörünü kullanarak yazdım
  }
}
