import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:udecproject2/ListDemo.dart';
import 'package:udecproject2/List_Separator.dart';
import 'package:udecproject2/Second.dart';
import 'package:udecproject2/UI/phonelist.dart';
import 'package:udecproject2/loginpage.dart';

import 'ListView_With_Builder.dart';

void main(){
  runApp(DevicePreview(
    enabled: !kReleaseMode,
      builder: (context){
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: SplashScreen(),
        );
      },
  ));
}

class SplashScreen  extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> { @override
void initState() {
  Timer(Duration(seconds: 5), (){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> PhoneList()));
  });
}

  @override
  Widget build(BuildContext context) {
     return  Scaffold(
       ///body as column/ multichild widget
       body: Container(
         height: double.infinity,
         width: double.infinity,
         //color: Colors.purpleAccent,
         decoration: const BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.fill,
                 image: AssetImage(
                 "assets/images/bg-green.jpg"))),
         child: Center(
           child:  Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:  const [
               // Icon
               //   Icons.ac_unit,
               //   size: 100,
               // ),
               ///adding asset image
               // Image(image: AssetImage("https://thumbs.dreamstime.com/z/radiant-sea-beach-sunset-colorful-bali-indonesia-128847098.jpg"),width: 100,height: 100,),
             ///adding network image
               Image(image: NetworkImage(
                   "https://thumbs.dreamstime.com/b/purple-flower-2212075.jpg"),    //NetworkImage
                 width: 100,
                 height: 100,),
             Text(
               "My Application",
             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,color: Colors.
             green),
             )
           ],
         ),
         ),
       ),
       ///body as text in center
       //body: Center( child: Text("my application",style: TextStyle(fontSize: 30,
          // fontWeight: FontWeight.bold,
           // color: Colors.green),
       //)),
       // ///body as icon in center
       // body: Center(
       //   child: Icon(Icons.accessibility_new_sharp,size: 50,color: Colors.pink,),
       // ),
     );
  }
}
