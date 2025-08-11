import 'package:flutter/material.dart';
class IndCalls{
  String? name;
  String? lastMessage;
  String? image;
 IndCalls({required this.name, required this.lastMessage, required this.image});
}
class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  List<IndCalls> UserCall=[
    IndCalls(name: 'waqar khan', lastMessage: 'Today,4:13 PM', image: 'assets/N1.jpeg'),
    IndCalls(name: 'Ammar khan', lastMessage: 'YesterDay,6:13 AM', image: 'assets/N2.jpeg'),
    IndCalls(name: 'Shebi friend', lastMessage: 'August 9,4:13 AM', image: 'assets/N4.jpeg'),
    IndCalls(name: 'Abubaker Sir', lastMessage: 'Auhust 8,6:23 AM', image: 'assets/N3.jpeg'),
    IndCalls(name: 'Zia', lastMessage: 'Augst 7,4:54 PM', image: 'assets/N8.jpeg'),
    IndCalls(name: 'Shehzad khan', lastMessage: 'July 12,10:13 AM', image: 'assets/N3.jpeg'),
    IndCalls(name: 'Hammad khan ghandapur', lastMessage: 'Today,9:30 PM', image: 'assets/N7.jpeg'),
    IndCalls(name: 'Major Amjad ISI', lastMessage: 'July 18,11:53 AM', image: 'assets/N6.jpeg'),
    IndCalls(name: 'Salman khan', lastMessage: 'June 2,6:13 PM', image: 'assets/N1.jpeg'),
    IndCalls(name: 'Tauseef', lastMessage: 'June 2,9:00 AM', image: 'assets/N2.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calls',style: TextStyle(fontSize: 25),),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 20,),
        Icon(Icons.more_vert),
        SizedBox(width: 10,),
      ],
      ),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18,right: 15),
                child: Row(
                  children: [
                    SizedBox(height: 60,),
                    Text('Favorites',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.favorite,color: Colors.white,),
                    ),
                    SizedBox(width: 10,),
                    Text('Add favorite',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Row(
                  children: [
                    Text('Recent',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
             ListView.builder(
               physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemCount: UserCall.length,
                 itemBuilder: (context,index){
                   return ListTile(
                     leading: CircleAvatar(
                       radius: 25,
                       backgroundImage: AssetImage('${UserCall[index].image}'),
                     ),
                     title: Text('${UserCall[index].name}'),
                     subtitle: Text('${UserCall[index].lastMessage}'),
                     trailing: Icon(Icons.call),
                   );
                 }
             )
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_ic_call_rounded,color: Colors.white,),),
    );;
  }
}
