import 'package:flutter/material.dart';
import 'package:thisproject/view/screens/MainScreen/ChatsScreen.dart';
import 'package:thisproject/view/screens/MainScreen/ScreenConnector.dart';
class Signup4 extends StatefulWidget {
  const Signup4({super.key});

  @override
  State<Signup4> createState() => _Signup4State();
}

class _Signup4State extends State<Signup4> {
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Verify phone number',style: TextStyle(color: Colors.green,fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert,color: Colors.black,),
          SizedBox(width: 10,),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          SizedBox(height: 25,),
          Center(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.green[1],
              child: Icon(Icons.phone_missed,color: Colors.green,size: 33,),
            ),
          ),
          SizedBox(height: 25,),
         Text("To automatically verify with a",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
         Text('missed call to your phone:',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 33,),
              Text('Allow  WhatsApp to manage this call',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),Text('    so'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65),
            child: ListTile(
              leading: Icon(Icons.call,color: Colors.green,),
              title: Text('we can call your phone number and end'),
              subtitle: Text('the call automatically.'),
            ),
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 33,),
              Text('Allow WhatsApp to do a one-time check',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 65),
            child: ListTile(
              leading: Icon(Icons.phone_in_talk_rounded,color: Colors.green,),
              title: Text('and access your call log so we can'),
              subtitle: Text('confirm that you recieved the call.'),
            ),
          ),
          SizedBox(height: 30,),
          Text('Learn more about how you can manage your'),
          Text('phone verification permissions.',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Screenconnector()),);
            },
            child: Container(
              height: 50,width: 300,
              decoration: BoxDecoration(
                color: Colors.green,
                //border: Border.all(color: Colors.black26)
              ),
              child: Center(
                child: Text('CONTINUE',style: TextStyle(color: Colors.white,fontSize: 18,),),
              ),
            ),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap: (){
            },
            child: Container(
              height: 50,width: 300,
              decoration: BoxDecoration(
                //color: isSelected? Colors.green : Colors.transparent,
                border: Border.all(color: Colors.black26,)
              ),
              child: Center(
                child: Text('VERIFY WITH SMS',style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
              ),
            ),
          )
          

        ],
      ),
    );
  }
}
