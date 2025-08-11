import 'package:flutter/material.dart';
class Channels{
  String? name;
  String? lastMessage;
  String? time;
  String? noOfMeassages;
  String? image;
  Channels({required this.name,required this.lastMessage,required this.time,required this.noOfMeassages,required this.image,});
}
class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  List<Channels> UserCahannel=[
    Channels(name: 'Punjab safe city authority', lastMessage: 'zindagi ka safer safe belt sai mehfooz', time: '11:31 PM', noOfMeassages: '1', image: 'assets/N1.jpeg'),
    Channels(name: 'CNN', lastMessage: 'Tea-trea-scented steam from', time: '11:31 PM', noOfMeassages: '1', image: 'assets/N2.jpeg'),
    Channels(name: 'ZONG 4G', lastMessage: 'Ek Bundle Sab Pe bharri', time: '01:24 AM', noOfMeassages: '5', image: 'assets/N3.jpeg'),
    Channels(name: 'Shopping Mark', lastMessage: 'Sale  Now', time: '11:31 PM', noOfMeassages: '21', image: 'assets/N4.jpeg'),
    Channels(name: 'Learn English', lastMessage: 'Easy To Communicate', time: '10:31 AM', noOfMeassages: '33', image: 'assets/N5.jpeg'),
    Channels(name: 'Abroad Insight', lastMessage: 'Good News for students', time: '12:31 PM', noOfMeassages: '8', image: 'assets/N6.jpeg'),
    Channels(name: 'Dawn News', lastMessage: 'Imran khan the leader of pak..', time: '04:31 AM', noOfMeassages: '3', image: 'assets/N7.jpeg'),
    Channels(name: 'Imran Khan', lastMessage: 'We Will Fight For Freedom Till Death', time: '07:40 PM', noOfMeassages: '9', image: 'assets/N8.jpeg'),
    Channels(name: 'Trade with zarak', lastMessage: 'This order ID we need', time: '09:21 PM', noOfMeassages: '21', image: 'assets/N9.webp'),
    Channels(name: 'PTA Official', lastMessage: 'AVoid from scamers', time: '06:31 AM', noOfMeassages: '4', image: 'assets/N10.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Updates',style: TextStyle(fontSize: 25),),
        actions: [
          Icon(Icons.search,size: 20,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.more_vert,),
          SizedBox(width: 10,),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 19,right: 15),
                child: Row(
                  children: [
                    Text('Status',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 19,right: 15),
                  child: Row(
                    children: [
                      Container(height: 165,width: 90,
                      decoration: BoxDecoration(
                        //color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black38)
                      ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                CircleAvatar(
                                  radius: 29,
                                  //backgroundColor: Colors.black,
                                  backgroundImage: AssetImage('assets/khan.jpg'),
                                ),
                                Positioned(
                                  bottom: 0,right: -5,
                                  child: Container(
                                    height: 30,width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white,width: 2)
                                    ),
                                    child: Icon(Icons.add,color: Colors.white,size: 23,),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 25,),
                            Text('Add',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Text('status',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(20),
                        image:DecorationImage(image: AssetImage('assets/N1.jpeg'),fit: BoxFit.cover),
                      ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N3.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Waqar',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/tauseef2.jpg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N1.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('TAuseef',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/saqib1.jpg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N5.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Saqib',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('Cousine',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/khan.jpg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N7.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Shebi',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N4.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N1.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Hamza',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N5.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N8.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Samad',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N2.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N6.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Sir',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N10.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N3.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Zia',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N6.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N8.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Shehzad',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('Mehsod',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N2.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N1.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Umair',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N3.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N4.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Salman',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N8.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N1.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Waqas',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N2.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N7.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Shoib',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 8,),
                      Container(height: 165,width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20),
                          image:DecorationImage(image: AssetImage('assets/N5.jpeg'),fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.green,
                                child: CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage('assets/N6.jpeg'),
                                ),
                              ),
                              SizedBox(height: 60,),
                              Text('Sheriyar',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                              Text('khan',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 19,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Channels',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                    Text('Explore',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                  ],
                ),
              ),

              SizedBox(height: 20,),
               ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: UserCahannel.length,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('${UserCahannel[index].image}'),
                      ),
                      title: Text('${UserCahannel[index].name}'),
                      subtitle: Text('${UserCahannel[index].lastMessage}'),
                      trailing: Column(
                        children: [
                          Text('${UserCahannel[index].time}',style: TextStyle(color: Colors.green,fontSize: 14,fontWeight: FontWeight.bold),),
                          SizedBox(height: 3,),
                          CircleAvatar(
                            radius: 12,
                              backgroundColor: Colors.green,
                              child: Text('${UserCahannel[index].noOfMeassages}',style: TextStyle(color: Colors.white,fontSize: 12),)
                          )
                        ],
                      ),
                    );
                  },
              ),
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.green,
      child: Icon(Icons.camera_alt_rounded,color: Colors.white,),
      ),

    );
  }
}
