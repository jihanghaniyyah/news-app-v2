import 'package:flutter/material.dart';
import 'package:news_app_v2/screen/main_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:news_app_v2/style/theme.dart' as Style;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: MainScreen(),
          image: new Image.asset('assets/img/logo.png'),
          photoSize: 80.0,
          backgroundColor: Style.Colors.background,
          styleTextUnderTheLoader: new TextStyle(),
          loaderColor: Colors.white),
    );
  }
}