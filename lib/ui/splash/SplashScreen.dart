import 'package:flutter/material.dart';
import 'package:token_system/constants/assets.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    0.4,
                    0.9
                  ],
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.white,
                  ]),
              shape: BoxShape.rectangle),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              child:  SizedBox.expand(
                child: Image.asset(
                  Assets.logo,
                  fit: BoxFit.cover,
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}
