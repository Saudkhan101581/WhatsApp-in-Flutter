import 'package:flutter/material.dart';
import 'package:thisproject/view/screens/LoginScreens/Sign-Up2.dart';
import 'package:thisproject/view/screens/LoginScreens/SignUp3.dart';
import 'package:thisproject/view/screens/LoginScreens/SignUp4.dart';
import 'package:thisproject/view/screens/LoginScreens/Sign_Up.dart';
import 'package:thisproject/view/screens/MainScreen/Calls.dart';
import 'package:thisproject/view/screens/MainScreen/ChatsScreen.dart';
import 'package:thisproject/view/screens/MainScreen/Community.dart';
import 'package:thisproject/view/screens/MainScreen/ScreenConnector.dart';
import 'package:thisproject/view/screens/MainScreen/Update.dart';
import 'package:thisproject/view/screens/SplashScreen.dart';
void main(){
  runApp(WhatsApp());
}
class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //SignUp2(selectedLanguage: 'English',)
      //SignUp()
      Splash(),
      //Signup3()
      //Signup4()
      //chatScreen()
      //Screenconnector()
      //Update()
      //Community()
      //Calls()
    );
  }
}
