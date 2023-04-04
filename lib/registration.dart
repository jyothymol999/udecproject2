import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
 _LoginPageState createState() => LoginPageState();

  }
class _LoginPageState extends Object {
  var formkey =  GlobalKey()<formstate>();
  var showpass = true;

  @override
  Widget build(BuildContext   context) {
    return Scaffold(
      appBar: AppBar(
         title: const Text("Login with validation"),
      )
          body:  Form(
        key:  formkey,
      child: Column(
        children: [
          const Text("Loginpage", style: TextStyle(fontSize: 40,fontWeight: fontWeight.bold)
            ,)
          Padding(
              padding: const EdgeInsets.only(
            right: 20,left: 20,top: 20,bottom: 20),
    child: TextFormField(
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.import_contacts_sharp),
        border: OutlineInputBorder()),
    validator: (username){
        if(username!.isEmpty || !username.contains('@')){
    return 'enter a valid email';
    }else{
    return null;
    }
    },
          ),
          )
          Padding(
              padding: const EdgeInsets.only(right: 20,left: 20,bottom: 20),
      child: TextFormField(
    obscureText: showpass,
    obscuringCharacter: '*',
    decoration: InputDecoration(
    prefixIcon: Icon(Icons.abc_sharp),
    suffixIcon: IconButton(onPressed: () {
    setState(() {
    if(showpass) {
    showpass = false;
    }else{
    showpass = true;
    }
    });
    },Icon: Icon

    }
    })
    },)
    ),
    ),

        ],
      ),
    ),
    )
  }
}