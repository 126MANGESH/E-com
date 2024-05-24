import 'package:ecom/const/const.dart';
import 'package:ecom/pages/splash_screen.dart';
import 'package:flutter/material.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 //await Firebase.initializeApp(
    // Replace with actual values
    //options:DefaultFirebaseOptions.currentPlatform,
   // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Comers",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              color: darkFontGrey,
            ),
            elevation: 0.0,
            backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
