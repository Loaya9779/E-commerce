import 'package:flutter/material.dart';
import 'package:ecommerce/view/screens/home.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
    home:MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: {
    '/home': (context) => const HomeScreen(),
    
  },
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}