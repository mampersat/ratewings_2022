import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/rating_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
//  Firebase.initializeApp().whenComplete( () {});
  db = FirebaseFirestore.instance;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rate Wings',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(title: 'Dashboard'),
        '/r': (context) => const RatingScreen(),
        // '/edit' : (context) => const EditEmployeeScreen()
      },
    );
  }
}


