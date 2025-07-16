import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thisproject/SignInScreen.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
 TextEditingController newController = TextEditingController();
 TextEditingController confirmController = TextEditingController();
 bool isHide=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Text('Change Password',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Container(
              height: 550,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                children: [
                  SizedBox(height: 60,),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        )
                      ]
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 12,),
                        Icon(Icons.lock),
                        SizedBox(width: 8,),
                        Expanded(
                            child: TextFormField(
                              obscureText: isHide,
                              controller: newController,
                              decoration: InputDecoration(
                                hintText: 'New password',
                                border: InputBorder.none,
                                suffixIcon: IconButton(onPressed: (){

                                  if(isHide==true){
                                    isHide=false;
                                  }
                                  else{
                                    isHide=true;
                                  }
                                  setState(() {

                                  });

                                }, icon: Icon(Icons.remove_red_eye))
                              ),
                            ),
                        )
                      ],
                    )
                  ),
                  SizedBox(height: 40,),
                  Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 15,
                              offset: Offset(0, 5),
                            )
                          ]
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 12,),
                          Icon(Icons.lock),
                          SizedBox(width: 8,),
                          Expanded(
                            child: TextFormField(
                              obscureText: isHide,
                              controller: confirmController,
                              decoration: InputDecoration(
                                hintText: 'Confirm password',
                                border: InputBorder.none,
                                  suffixIcon: IconButton(onPressed: (){

                                    if(isHide==true){
                                      isHide=false;
                                    }
                                    else{
                                      isHide=true;
                                    }
                                    setState(() {

                                    });

                                  }, icon: Icon(Icons.remove_red_eye))
                              ),
                            ),
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 40,),
                  InkWell(
                    onTap: (){
                        String newPassword = newController.text.trim();
                        String confirmPassword = confirmController.text.trim();
                        if(newPassword.isNotEmpty && newPassword == confirmPassword){
                          newController.clear();
                          confirmController.clear();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Password changed successfully')));
                        }
                        else{
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Passwords do not match')));
                      }

                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Center(child: Text('Save password',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=>SignIn()));
                    },
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('            Return to Sign In!',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
