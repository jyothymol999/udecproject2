import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children:  [
            Center(child: Text
              ("my contacts",
              style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
            ),),
           Card(
               color: Colors.red,child: ListTile(
             //leading: Icon(Icons.person),
             leading:  CircleAvatar (
                 backgroundImage: NetworkImage("https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg")),
             title: Text("Name 1"),
             subtitle: Text("9192345590"),
              trailing: Wrap(children: [
                Icon(Icons.message),
                SizedBox(width: 20,),
                Icon(Icons.phone)
              ]),
             )),
          ],
      ),

    );
  }

}