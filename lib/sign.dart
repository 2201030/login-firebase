// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_application_10/helper/functions.dart';
import 'package:flutter_application_10/login.dart';
import 'package:flutter_application_10/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable
class sign_up extends StatelessWidget {
late String E;
 
 late String p;
var kkey =GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
title: Text("Sign Up Screen",

style: TextStyle(

  fontSize: 30,
  color: Color.fromARGB(255, 145, 22, 13)
),
),

backgroundColor: Colors.amber,



),

backgroundColor: Color.fromARGB(255, 86, 19, 14),
body: Form(
  key: kkey,
  child:   Padding(
  
    padding: const EdgeInsets.all(8.0),
  
    child:   SingleChildScrollView(
  
      child: Column(
  
        children: [
  
          Container(
  
            alignment: Alignment.topLeft,
  
            child: Text("Sign Up",style: TextStyle(
 
  
              fontSize: 35,
  
            
  
              color: Colors.amber
  
            
  
            ),
  
            ),
  
          ),
  
                  SizedBox(height: 40),
  
  
  
       Container(
  
            color: Colors.white,
  
             child:     TextFormField(
  
            validator: (value) {
              if(value!.isEmpty){


                return "feild is require";
              }
            },
  
            decoration: InputDecoration(border:OutlineInputBorder(),
  
            labelText: "UserName",labelStyle: TextStyle(
  
              fontSize: 20,
  
    
  
    color: Colors.black
  
    
  
            ),
  
            
  
            prefixIcon: Icon(Icons.person,          color: Colors.black,
  
    )
  
            
  
            ),),
  
          ),
  
    SizedBox(height: 20),
  
      Container(
  
            color: Colors.white,
  
             child: TextFormField(
      validator: (value) {
              if(value!.isEmpty){


                return "feild is required";
              }
            },
                onFieldSubmitted: (value) {
  
                E=value;
  
              },
  
            decoration: InputDecoration(border:OutlineInputBorder(),
  
            labelText: "E-mail",labelStyle: TextStyle(
  
              fontSize: 20,
  
              color: Colors.black
  
    
  
            ),
  
            prefixIcon: Icon(Icons.email,          color: Colors.black,
  
    )
  
            ),
  
            ),
  
          ),
  
          SizedBox(height: 20),
  
     Container(
  
            color: Colors.white,
  
             child: 
  
         Container(
  
            color: Colors.white,
  
             child:    TextFormField(
      validator: (value) {
              if(value!.isEmpty){


                return "feild is required";
              }
            },
                onFieldSubmitted: (value) {
  
                p=value;
  
              },
  
            decoration: InputDecoration(border:OutlineInputBorder(),
  
            labelText: "PassWord",labelStyle: TextStyle(
  
                        fontSize: 20,
  
    
  
              color: Colors.black
  
    
  
            ),
  
            prefixIcon: Icon(Icons.lock,          color: Colors.black,
  
  
  
    ),
  
    suffixIcon: Icon(Icons.visibility)
  
            ),
  
            ),),
  
          ),
  
          SizedBox(height: 20),
  
    
  
           Container(
  
            color: Colors.white,
  
             child: TextFormField(
      validator: (value) {
              if(value!.isEmpty){


                return "feild is required";
              }
            },
              decoration: InputDecoration(border:OutlineInputBorder(),
  
              labelText: "confirm password",labelStyle: TextStyle(
  
                          fontSize: 20,
  
    
  
                color: Colors.black
  
    
  
              ),
  
              prefixIcon: Icon(Icons.password,
  
              color: Colors.black,
  
              ),
  
                suffixIcon: Icon(Icons.visibility)
  
  
  
              
  
              ),
  
                 ),
  
           ),
  
                   SizedBox(height: 20),
  
  
  
           MaterialButton(onPressed: ()async{
  
   if (kkey.currentState!.validate()) {
  try {
    
   await creatMethod(E: E,p: p);
    
   
    
          snacshow(context,"sucessfuly");
    
    
    
    }
    
    
    
  on FirebaseAuthException catch (e) {
    
   if (e.code == 'weak-password') {
    
          snacshow(context,"The password provided is too weak.");
    
    } 
    
    
    
    
    
    else if (e.code == 'email-already-in-use') {
    
          snacshow(context,"The account already exists for that email.");
    
    
    
    } 
    
    }
    
  catch (e) {
    
   print(e);
    
    }    
}
  
           },
  
           child: Container(
  
            height: 35,
  
            width: 2300,
  
            child: Center(child: Text("Sign up ",style: TextStyle(
  
              fontSize: 20
  
            ),)),
  
           decoration: BoxDecoration(shape: BoxShape.rectangle,
  
           color: Colors.amber
  
           ),
  
           ),
  
           ),
  
           Row(
  
            mainAxisAlignment: MainAxisAlignment.center,
  
            children: [
  
    Text("Already have an account?",style: TextStyle(
  
    
  
    fontSize: 20,
  
      color: Colors.white
  
    ),),
  
    TextButton(onPressed: (){
  
      Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWidget()
  
      ),
  
  
  
      );
  
    }, child: Text("Login",style: TextStyle(fontSize: 15,color: Colors.amber
  
    ),))
  
    
  
            ],
  
           ),
  
          
  
        ],
  
      ),
  
    ),
  
  ),
),

    );
  }

}