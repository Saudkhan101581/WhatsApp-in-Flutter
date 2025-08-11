import 'package:flutter/material.dart';
import 'package:thisproject/view/screens/LoginScreens/SignUp4.dart';
class Signup3 extends StatefulWidget {
  const Signup3({super.key});

  @override
  State<Signup3> createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Enter your phone number',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(Icons.more_vert),
          SizedBox(width: 10,),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('WhatsApp will need to verify your phone number.'),
              Text("What's",style: TextStyle(color: Colors.green),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('my number?', style: TextStyle(color: Colors.green),)
            ],
          ),
          SizedBox(height: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('                       Pakistan',style: TextStyle(fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_drop_down_outlined,color: Colors.green,)
                  ],
                ),

              SizedBox(height: 5,),
              Container(
                height: 2,width: 280,
                decoration: BoxDecoration(color: Colors.green),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(top: 0,left: 130,right: 20),
            child: Row(
              children: [
                Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('+92', style: TextStyle(fontSize: 16)),
                    Container(
                      height: 2,
                      width: 40,
                      color: Colors.green,
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 40,width: 200,
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'phone number',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        height: 2,width: 220,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 220,),
          InkWell(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signup4()));
            },
            child: Container(
              height: 30,width: 65,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Center(child: Text('NEXT',style: TextStyle(color: Colors.white,fontSize: 16),)),
            ),
          )

        ],
      ),
    );
  }
}
