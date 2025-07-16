import 'package:flutter/material.dart';
import 'package:thisproject/MainScreen.dart';
import 'package:thisproject/SignInScreen.dart';
import 'ForgetPasswordScreen.dart';
import 'SignUpscreen.dart';
import 'SplashScreen.dart';

void main(){
  runApp(AgeCalculator());
}
class AgeCalculator extends StatefulWidget {
  const AgeCalculator({super.key});

  @override
  State<AgeCalculator> createState() => _AgeCalculatorState();
}

class _AgeCalculatorState extends State<AgeCalculator> {
  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
        //MainScreen1()
      //ForgetPassword()
      //SignIn()
      Splash()



    );
  }
}
