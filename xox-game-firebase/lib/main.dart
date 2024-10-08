import 'package:flutter/material.dart';
import '../view/player_names.dart'; 
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}
// mfa firebase mirket 
// password manager

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white70, 
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black45,
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black, backgroundColor: Colors.transparent, 
          ),
        ), 
      ),
      home: PlayerNamesView(),
    );
  }
}