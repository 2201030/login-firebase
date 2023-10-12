
  import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void snacshow(BuildContext context,String message) {
    
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  void navigator(BuildContext context,Widget w) {
    Navigator.push(context, MaterialPageRoute(builder: (context) =>w,),);
  }

  Future<void> creatMethod({required String E,required String p}) async {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: E,
      password: p,
    );
  }
   Future<void> logimethod({required String p,required String E}) async {
     final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: E,
      password: p
    );
  }