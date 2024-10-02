import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_bird/views/auth/login.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyDRO3iJYwBz_C8gJ13V2FH5bvV--wc2o7A",
    appId: "1:654369271748:android:4e2133fc42a70cd3d4be91",
    messagingSenderId: "654369271748",
    projectId: "socialbird-c01e2",
    storageBucket: "socialbird-c01e2.appspot.com",
    iosBundleId: "com.example.social_bird",
  )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Bird',
      theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}

