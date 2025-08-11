import 'package:flutter/material.dart';
import 'package:thisproject/view/screens/LoginScreens/Sign-Up2.dart';

class LanguageList{
  String? LangName1;
  String? LangName2;
  LanguageList({required this.LangName1, required this.LangName2});
}

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  List<LanguageList> Language=[
    LanguageList(LangName1: "English", LangName2: "Phones language"),
    LanguageList(LangName1: "Hindi", LangName2: "हिंदी"),
    LanguageList(LangName1: "Marathi", LangName2: "मराठी"),
    LanguageList(LangName1: "Gujrathi", LangName2: "तमिल"),
    LanguageList(LangName1: "Tamil", LangName2: "বাংলা (बंगाली)"),
    LanguageList(LangName1: "Bangali", LangName2: "तेलुगु"),
    LanguageList(LangName1: "Telugo", LangName2: "तेलुगु"),
  ];

  int? selectIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding:
          EdgeInsets.only(top: 40,left: 60,right: 20),
              child: Stack(
              children: [
              Image.asset('assets/w1.png'),
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child:  Container(
                      height: 160,
                      width: 500,
                      color: Colors.white,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Text('Welcome To WhatsApp',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                        Text('Choose your language to get started !',style: TextStyle(color: Colors.black,fontSize: 15,),),
                      ],
                    )
                    ),

                ),
          ]
              ),
          ),
        Expanded(
           child: ListView.builder(
             itemCount: Language.length,
             itemBuilder: (context,index){
               bool isSelected = selectIndex == index;
               return ListTile(
                 leading: InkWell(
                     onTap: (){
                       setState(() {
                         selectIndex=index;
                       });
                     },
                     child: Icon(
                       isSelected? Icons.check_circle : Icons.circle_outlined,
                       color: isSelected? Colors.green : Colors.grey,
                     )
                 ),
                 title: Text('${Language[index].LangName1}'),
                 subtitle: Text('${Language[index].LangName2}'),
               );
             }
           ),
         ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
          shape: CircleBorder(),
          onPressed: (){

          if(selectIndex!=null)
            {
              String selectedLang = Language[selectIndex!].LangName1 ?? 'Unknown';
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUp2(selectedLanguage: selectedLang) ));
            }
          else{
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please select a language")));
          }

      },
        child: Icon(Icons.arrow_forward,color: Colors.white,),

      ),


    );
  }
}
