import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Mytest extends StatelessWidget {
  const Mytest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title:Center(child: Text("Test")) ,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () async{
         // ignore: unused_local_variable
     
        }, child: Text("Creat count",style:TextStyle(fontSize: 50),)),
      ),
    );
  }
}