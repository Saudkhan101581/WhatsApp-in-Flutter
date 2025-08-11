import 'package:flutter/material.dart';
class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Communities',style: TextStyle(fontSize: 25),),
       actions: [
         Icon(Icons.more_vert),
         SizedBox(width: 10,),
       ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(height: 55,width: 55,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.groups_sharp,color: Colors.white,size: 35,),
                      ),
                      Positioned(right: -5,top: 30,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.add,color: Colors.white,size: 22,),
                          )
                      )
                    ],
                  ),
                  SizedBox(width: 15,),
                  Text('New Community',style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Divider(thickness: 8,color: Colors.black12,),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Container(height: 55,width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent[100],
                    ),
                    child: Icon(Icons.groups_sharp,color: Colors.teal,size: 30,),
                  ),
                  SizedBox(width: 15,),
                  Text('Opportunity Well',style: TextStyle(fontSize: 20),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Container(height: 45,width: 45,
                    decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.headset_mic,size: 25,),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Announcements',style: TextStyle(fontSize: 19),),
                      Row(
                        children: [
                          Text('+923149312446:',style: TextStyle(fontSize: 19),),
                          SizedBox(width: 15,),
                          Text('This responce!!! W..')
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Icon(Icons.arrow_forward_ios_sharp),
                  SizedBox(width: 30,),
                  Text('View all',style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(thickness: 8,color: Colors.black12,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Container(height: 45,width: 45,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.headset_mic,size: 25,),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Announcements',style: TextStyle(fontSize: 19),),
                      Row(
                        children: [
                          Text('+923149312446:',style: TextStyle(fontSize: 19),),
                          SizedBox(width: 15,),
                          Text('Dear Students...')
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Icon(Icons.arrow_forward_ios_sharp),
                  SizedBox(width: 30,),
                  Text('View all',style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(thickness: 8,color: Colors.black12,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Container(height: 45,width: 45,
                    decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.group,size: 25,),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Announcements',style: TextStyle(fontSize: 19),),
                      Row(
                        children: [
                          Text('+923149312446:',style: TextStyle(fontSize: 19),),
                          SizedBox(width: 15,),
                          Text('This responce!!! W..')
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Icon(Icons.arrow_forward_ios_sharp),
                  SizedBox(width: 30,),
                  Text('View all',style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(thickness: 8,color: Colors.black12,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Container(height: 45,width: 45,
                    decoration: BoxDecoration(
                      color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.webhook_rounded,size: 25,),
                  ),
                  SizedBox(width: 15,),
                  Row(
                    children: [
                      Text('KP-Digital Skill Development Male..')
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Icon(Icons.arrow_forward_ios_sharp),
                  SizedBox(width: 30,),
                  Text('View all',style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Divider(thickness: 8,color: Colors.black12,),


          ],
        ),
      )
    );;
  }
}
