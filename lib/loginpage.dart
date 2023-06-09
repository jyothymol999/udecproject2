import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:udecproject2/homepage.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var formkey = GlobalKey<FormState>();
  var showpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login with Validation"),
      ),
      body: Form(
        key: formkey,
        child: Column(
          children: [
              const Text("Login page",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(
                  right: 30,left: 30,bottom: 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon:Icon(Icons.account_box_sharp),
                        border: OutlineInputBorder()),
                    validator: (username){
                      if(username!.isEmpty || !username.contains('@')){
                        return 'Enter a valid email';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
        Padding(
          padding: const EdgeInsets.only(
              right: 30,left: 30,bottom: 20),
          child: TextFormField(
            obscureText: showpass,
            obscuringCharacter: '*',
            decoration:  InputDecoration(
              prefixIcon:Icon(Icons.password),
                suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        if(showpass){
                          showpass = false;
                        } else{
                          showpass = true;
                        }
                      });
                    },
                    icon:Icon(showpass == true ? Icons.visibility_off : Icons.visibility)),
                border: OutlineInputBorder()),
              validator: (password){
                 if(password!.isEmpty || password.length < 6){
                   return 'Not a valid password';
                   } else {
                     return null;
                }
              },
          ),
        ),
            ElevatedButton(
                onPressed: (){
                   final valid = formkey.currentState!.validate();
                   if(valid){
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context)=> HomePage()));
                     } else {
                     Fluttertoast.showToast(
                         msg: "Login Failed",
                         toastLength: Toast.LENGTH_SHORT,
                         gravity: ToastGravity.CENTER_RIGHT,
                         //timeInSecForIosWeb: 1,
                         backgroundColor: Colors.red,
                         textColor: Colors.white,
                         fontSize: 16.0
                     );
                   }
                }, child: Text("LOGIN"))
          ],
        ),
      ),
    );
  }
}
