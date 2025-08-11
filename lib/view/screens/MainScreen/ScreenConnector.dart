import 'package:flutter/material.dart';
import 'package:thisproject/view/screens/MainScreen/Calls.dart';
import 'package:thisproject/view/screens/MainScreen/ChatsScreen.dart';
import 'package:thisproject/view/screens/MainScreen/Community.dart';
import 'package:thisproject/view/screens/MainScreen/Update.dart';
class Screenconnector extends StatefulWidget {
  const Screenconnector({super.key});

  @override
  State<Screenconnector> createState() => _ScreenconnectorState();
}

class _ScreenconnectorState extends State<Screenconnector> {
  //int isSelect=1;
  int Clicked=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex:90,child: Clicked==1?chatScreen() : Clicked==2?Update() : Clicked==3?Community() : Clicked==4?Calls() : SizedBox()),
          Expanded(flex:10,child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  TextButton(onPressed: (){
                    setState(() {
                      Clicked=1;
                    });
                  },
                    style: TextButton.styleFrom(backgroundColor: Clicked==1? Colors.green : Colors.transparent),
                    child: Icon(Icons.chat,color: Colors.black,),),
                  Text('Chats',style: TextStyle(fontWeight: Clicked==1? FontWeight.bold : FontWeight.normal),)
                ],
              ),
              Column(
                children: [
                  TextButton(onPressed: (){
                    setState(() {
                      Clicked=2;
                    });
                  },
                      style: TextButton.styleFrom(backgroundColor: Clicked==2? Colors.green : Colors.transparent),
                      child: Icon(Icons.change_circle_outlined,color: Colors.black,)),
                  Text('Updates',style: TextStyle(fontWeight: Clicked==2? FontWeight.bold : FontWeight.normal),)
                ],
              ),
              Column(
                children: [
                  TextButton(onPressed: (){
                    setState(() {
                      Clicked=3;
                    });
                  },
                      style: TextButton.styleFrom(backgroundColor: Clicked==3? Colors.green : Colors.transparent),
                      child: Icon(Icons.groups_sharp,color: Colors.black,)),
                  Text('Communities',style: TextStyle(fontWeight: Clicked==3? FontWeight.bold : FontWeight.normal),)
                ],
              ),
              Column(
                children: [
                  TextButton(onPressed: (){
                    setState(() {
                      Clicked=4;
                    });
                  },
                      style: TextButton.styleFrom(backgroundColor: Clicked==4? Colors.green : Colors.transparent),
                      child: Icon(Icons.call,color: Colors.black,)),
                  Text('Calls',style: TextStyle(fontWeight: Clicked==4? FontWeight.bold : FontWeight.normal),)
                ],
              ),
            ],
          ),)
        ],
      ),
    );
  }
}
