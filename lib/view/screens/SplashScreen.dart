import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thisproject/view/screens/LoginScreens/Sign_Up.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>SignUp()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            Text('Developed By Saud Khan',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),
            CircleAvatar(
              radius: 60,
              child: Image.asset('assets/WhatsApp logo.jpeg'),
            )
            
          ],
        ),
      ),
    );
  }
}
