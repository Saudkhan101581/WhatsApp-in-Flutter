import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thisproject/view/screens/MainScreen/Calls.dart';
import 'package:thisproject/view/screens/MainScreen/Community.dart';
import 'package:thisproject/view/screens/MainScreen/IndividualChat.dart';
import 'package:thisproject/view/screens/MainScreen/Update.dart';
class user{
  String? name;
  String? lastMessage;
 String? time;
 String? image;
  user({required this.name, required this.lastMessage,required this.time,required this.image});
}
class chatScreen extends StatefulWidget {
  const chatScreen({super.key});
  @override
  State<chatScreen> createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  List<user>UserList=[
    user(name: 'Shebi khan', lastMessage: 'i am also good', time: '09:45 AM',image: 'assets/N1.jpeg'),
    user(name: 'Hassan khan ', lastMessage: 'Hassan khan reacted to...', time: '08:30 AM',image: 'assets/N2.jpeg'),
    user(name: 'Saqib Cadet', lastMessage: 'i will send a number', time: '11:35 PM',image: 'assets/N3.jpeg'),
    user(name: 'Shehriyar khan ', lastMessage: 'its a real gun?', time: '12:14 PM',image: 'assets/khan.jpg'),
    user(name: 'Zohaib Bro', lastMessage: 'Okay got the point', time: '07:55 AM',image: 'assets/N4.jpeg'),
    user(name: 'Noor Rehman CLassmate', lastMessage: 'May Allah give you patience', time: '06:40 PM',image: 'assets/N5.jpeg'),
    user(name: 'Adnan Mehsood', lastMessage: 'We will meet soon', time: '08:25 AM',image: 'assets/N6.jpeg'),
    user(name: 'Umair Parpur', lastMessage: 'you reacted to', time: '07:23 PM',image: 'assets/N7.jpeg'),
    user(name: 'Amaar khan', lastMessage: 'Ni', time: '11:28 AM',image: 'assets/N2.jpeg'),
    user(name: 'Waqar Bro', lastMessage: 'Come totward ground', time: '04:25 AM',image: 'assets/w.jpg'),
    user(name: 'Amjad Majeed', lastMessage: 'Asalam alaikum', time: '10:45 PM',image: 'assets/N4.jpeg'),
    user(name: 'Saqib Cousin', lastMessage: 'I am good', time: '06:35 AM',image: 'assets/saqib1.jpg'),
    user(name: 'Tauseef khan', lastMessage: 'Kab ana hai', time: '09:45 AM',image: 'assets/tauseef2.jpg'),
    user(name: 'Muhammad jaan', lastMessage: 'gada haram hai k halal', time: '03:45 PM',image: 'assets/N9.webp'),
    user(name: 'Anas khan', lastMessage: 'They did wrong', time: '10:55 AM',image: 'assets/N10.jpeg'),
  ];
int Selected=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('WhatsApp',style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20,),
          Icon(Icons.more_vert),
          SizedBox(width: 10,),
        ],
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 18,right: 18),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10,),
                      Icon(Icons.search,size: 30,),
                      SizedBox(width: 10,),
                      Expanded(child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Ask Meta AI or Search',
                          border: InputBorder.none,
                        ),
                      )
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 3,right: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(onPressed: (){
                      setState(() {
                        Selected=1;
                      });
                    },
                    style: TextButton.styleFrom(backgroundColor: Selected==1? Colors.green : Colors.transparent,side: BorderSide(color: Colors.black38)),
                        child: Text('All',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                    TextButton(onPressed: (){
                      setState(() {
                        Selected=2;
                      });
                    },
                        style: TextButton.styleFrom(backgroundColor:Selected == 2? Colors.green : Colors.transparent,side: BorderSide(color: Colors.black38)),
                        child: Text('Unread',style: TextStyle(color: Colors.black),),
                    ),
                    TextButton(onPressed: (){
                      setState(() {
                        Selected=3;
                      });
                    },
                      style: TextButton.styleFrom(backgroundColor: Selected==3? Colors.green : Colors.transparent,side: BorderSide(color: Colors.black38)),
                      child: Text('Favorites',style: TextStyle(color: Colors.black),),
                    ),
                    TextButton(onPressed: (){
                      setState(() {
                        Selected=4;
                      });
                    },
                      style: TextButton.styleFrom(backgroundColor:Selected==4? Colors.green : Colors.transparent,side: BorderSide(color: Colors.black38)),
                      child: Text('Groups',style: TextStyle(color: Colors.black),),
                    ),
                    TextButton(onPressed: (){
                      setState(() {
                        Selected=5;
                      });
                    },
                      style: TextButton.styleFrom(backgroundColor:Selected==5? Colors.green : Colors.transparent,side: BorderSide(color: Colors.black38)),
                      child: Text('+',style: TextStyle(color: Colors.black,fontSize: 20),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
               ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: UserList.length,
                  itemBuilder: (context,index){
                    return
                        ListTile(
                          onTap: (){
                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>Individualchat(
                              name: ('${UserList[index].name}'),
                              image: ('${UserList[index].image}'),
                              time: ('${UserList[index].time}'),
                            ))
                            );
                          },
                          leading: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage('${UserList[index].image}')
                          ),
                          title: Text('${UserList[index].name}'),
                          subtitle: Text('${UserList[index].lastMessage}'),
                          trailing:
                          Text('${UserList[index].time}',style: TextStyle(fontSize: 16),),

                        );
                  },
                ),

            ],
          ),
      ),

    );
  }
}
