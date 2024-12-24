import 'package:flutter/material.dart';
import 'package:facebok_app/Post_Screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController account = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final String Myaccount = "01158053564";
  final String Mypass="01158053564";
  void Valiedlogin(BuildContext context){
    String entaccount = account.text;
    String entpass = pass.text;
    if(entaccount==Myaccount&&entpass==Mypass){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => PostScreen()),
      );
    }else{
      showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context)=>AlertDialog(
            title: Text('Error Login',style: TextStyle(color:Colors.blue ),),
            content: Text('Incorrect mobile number or password. Please try again.',
            style: TextStyle(color: Colors.red),),
            backgroundColor: Colors.black,
            actions: [
              TextButton(onPressed: ()=>Navigator.of(context).pop(MaterialPageRoute(builder: (context) => LoginScreen())),
                  child: Text('ok'))
            ],
            
          ));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/faceicon.png',
                          width: 87.54,
                          height: 86.97,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(maxLength: 11,controller: account,
                              decoration: InputDecoration(
                                  hintText: 'Mobile Number or Email Address',
                                  hintStyle: TextStyle(color: Color(0xff898F9C)),
                                  filled: true,
                                  fillColor: Color(0xa0898F9C),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Color(0xff898F9C)),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Color(0xff898F9C))
                                  ) ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                            child: TextField(maxLength: 11,controller: pass,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: 'Password ',
                                  hintStyle: TextStyle(color: Color(0xff898F9C)),
                                  filled: true,
                                  fillColor: Color(0xa0898F9C),
                                  enabled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xff898F9C)),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(color: Color(0xff898F9C))
                                  ),
                                  suffixIcon: Image.asset(
                                    "assets/images/Subtract.png",
                                    width: 20,
                                    height: 15,
                                  )),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, right: 12, left: 12),
                    width: 320,
                    child: ElevatedButton(
                      onPressed: () => Valiedlogin(context),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff1877F2),
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Forgotten Password ?',
                          style: TextStyle(
                            color: Color(0xff898F9C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  /*SizedBox(
                    height: 170,
                  ),*/
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              width: 355,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff1877F2), width: 1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Creat Acccount',
                    style: TextStyle(
                      color: Color(0xff1877F2),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/metaicon.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Meta',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff1877F2)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}