import 'package:flutter/material.dart';
import 'package:ratewings/screens/dashboard_screen.dart';
import 'screens/rating_screen.dart';

void main() {
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


