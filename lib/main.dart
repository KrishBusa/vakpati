import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vakpati/Splach_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isAndroid){
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB-uk3MDT2Q8LA_WdyDjG377B7uE98fxws",
            appId: "com.example.vakpati",
            messagingSenderId: "589955078421",
            projectId: "vakpati-9a580"
        )
    );
  }
  else{
    await Firebase.initializeApp();

  }
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splach_Screen()
    );
  }
}


