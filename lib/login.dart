// ignore_for_file: must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/helper/functions.dart';
import 'package:flutter_application_10/information.dart';
import 'package:flutter_application_10/sign.dart';

class login extends StatelessWidget {
late String E;
late String p;
var k =GlobalKey<FormState>();
// login({required this.E,required this.p});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Login Screen",style: TextStyle(fontSize: 30,
        color: Colors.black
        ),
        ),

      ),
      body: Form(
       
        child: Center(
          child: Form(
             key: k,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                   children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.amber),),
                ),
                alignment: Alignment.centerLeft,
                ),
                  
                  Container(
                                color: Colors.white,
                
                    child: TextFormField(
                      onFieldSubmitted: (value) {
                        E=value;
                      },
                       validator: (value) {
                if(value!.isEmpty){
          
          
                  return "feild is required";
                }
              },
                      decoration: const InputDecoration(border: OutlineInputBorder(),labelText: "Email",labelStyle: TextStyle(fontSize: 20),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.email),
                      )
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    color: Colors.white,
                    child: TextFormField(
            onFieldSubmitted: (value) {
                        p=value;
                      },
                   validator: (value) {
                if(value!.isEmpty){
          
          
                  return "feild is required";
                }
              },
                      
                      decoration: const InputDecoration(border: OutlineInputBorder(),
                    labelText: "Password",labelStyle: TextStyle(fontSize: 20),
                            prefixIcon:   Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.lock,
                      
                      ),
                      
                            ),
                            suffixIcon: Icon(Icons.visibility)
                    )
                    ,
                    
                  
                  ),
                  ),
                
                
                
                SizedBox(height: 15.0,),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   MaterialButton(onPressed: ()async{
            if (k.currentState!.validate()) {
            try {
            // ignore: unused_local_variable
            await logimethod(p:p,E:E);
                        Navigator.push(context,MaterialPageRoute(builder: (context) => MyWidget(E:E),));

                  } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
snacshow(context, "No user found for that email")   ;
         } else if (e.code == 'wrong-password') {
snacshow(context, "Wrong password provided for that user") ;           }
                  }
          }
                  },
                  
                  child: Container(child: Text("Login",style: TextStyle(fontSize: 20),
                  ),
                  ),
                  
                  color: Colors.amber,height: 40,minWidth: 400,
                  
                  
                  
                  ),
                ),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Don't have an account ?",style: TextStyle(fontSize: 18),),
            ),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => sign_up(),));
                
                }, child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   Text("Register Now",style: TextStyle(fontSize: 15),),
                ))
                  ],
                )
                   ],
                  
                  
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 131, 23, 15),
    );
  }

 
}