import 'package:app/fetch_flowers.dart';
import 'package:app/flower_main_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

ThemeData themeData = ThemeData(primarySwatch: Colors.lightGreen);

MaterialApp app = MaterialApp(
      title: 'preserv.app',
      theme: themeData,
      home: plantFetch(
        child: const FlowerMainScreen(),
      ),
);

plantFetch provider = plantFetch(child: app);

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return provider;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBEczVnse0zkrL-bNVEfaFH7wHuer24_Ls", 
      appId: "1:506907711616:web:9c8c2d2ae6cd439754ae65", 
      messagingSenderId: "506907711616", 
      projectId: "preserv-2ec8e"
      )
  );
  runApp(const MyApp());
}
