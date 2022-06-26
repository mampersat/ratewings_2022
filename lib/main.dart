import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart';
import 'screens/rating_screen.dart';
import 'screens/search_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:ratewings/models/ratings.dart';
import 'package:ratewings/models/rating.dart';
import 'package:provider/provider.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Ratings()),
          Provider(create: (context) => Rating()),
        ],
        child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rate Wings',
      theme: ThemeData(
      //).dark().copyWith(
      scaffoldBackgroundColor: kBackgroundColor,
      backgroundColor: kBackgroundColor,
      primaryColor: kPrimaryColor,
      //accentColor: Color(0xff283618),
      buttonColor: kColor2,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: kColor2)),
      sliderTheme: SliderThemeData(
        thumbColor: kPrimaryColor,
        activeTrackColor: kAccentColor,
      ),
    ),


      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(title: 'Dashboard'),
        '/r': (context) => const RatingScreen(),
        '/s': (context) => const SearchScreen(),
      },
    );
  }
}


