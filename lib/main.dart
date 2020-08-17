import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:token_system/routes.dart';
import 'package:token_system/ui/splash/SplashScreen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,

  ]);

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Token System',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.purple,
          primaryColorDark: Colors.purple,
          accentColor: Colors.purple),
      home: SplashScreen(),
    );
  }
}
