import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thisproject/view/screens/LoginScreens/SignUp3.dart';
import 'package:thisproject/view/screens/LoginScreens/Sign_Up.dart';

class SignUp2 extends StatefulWidget {
  final String selectedLanguage;
  const SignUp2({super.key, required this.selectedLanguage});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40,left: 20, right: 20),
            child: Stack(
              children: [
                Image.asset('assets/w1.png'),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome to WhatsApp',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Read our'),
                  Text(' Privacy Policy.',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                  Text(' Tap "Agree and continue" to')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('accept the'),
                  Text(' Terms of service.', style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                ],
              ),

              SizedBox(height: 15,),
              InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>Signup3()));
                },
                child: Container(
                  height: 35,width: 250,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text('AGREE AND CONTINUE',style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              
              Container(height: 30,width: 150,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(15),
              ),
                child: Row(
                  children: [
                    SizedBox(width:5,),
                    Icon(Icons.group_work_outlined),
                    SizedBox(width:14,),
                    Text(widget.selectedLanguage,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    SizedBox(width: 8,),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
              )



            ],
          )
        ],
      )
    );
  }
}
