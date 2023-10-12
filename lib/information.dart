import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyWidget(E: '',));
}
class MyWidget extends StatelessWidget {

late String E;
MyWidget({required this.E});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 home: Scaffold(
  backgroundColor:  Color.fromARGB(255, 103, 17, 17),
body:Column(

  mainAxisAlignment: MainAxisAlignment.center,
children: [
  

  Container(
  
child: CircleAvatar(
  backgroundImage:  NetworkImage("https://th.bing.com/th/id/OIP.yBgA-QJ1GTNSYbBik-MM6wHaHa?pid=ImgDet&w=474&h=474&rs=1"),
  radius: 66,
)
  ),
  Container(
  child: const Text("Yasmin Aslaman",
  style: 
  TextStyle(fontSize: 30,
  color: Color.fromARGB(255, 197, 110, 110),

  fontFamily:'Satisfy'
  ),
  
  ),
  
),
Container(
  child: const Text("Software Engineer",
  style: 
  TextStyle(fontSize: 40,
  color: Color.fromARGB(255, 197, 110, 110),
  fontWeight: FontWeight.w400
  ),
  
  ),
  
),

Center(
  child:   Container(
  decoration:  BoxDecoration(shape: BoxShape.rectangle,color: Colors.amber),
  padding:  EdgeInsets.all(20.0),
  margin:  EdgeInsets.all(20.0),
     child:  Center(
    
       child: Row(
         children: [
            Icon(Icons.email),
           Text(": ${E}",
           style: 
           TextStyle(color: Colors.black,
           fontSize: 30,
           
           ),
           ),
         ],
       ),
     ),
  
  ),
),

  Center(
  child:   Container(
  decoration: const BoxDecoration(shape: BoxShape.rectangle,color: Colors.amber),
  padding: const EdgeInsets.all(20.0),
  margin: const EdgeInsets.all(20.0),
     child: const Center(
       child: Row(
         children: [
            Icon(Icons.place),
           Text(": cairo, Egypt   ",
           style: 
           TextStyle(color: Colors.black,
           fontSize: 30,
           
           ),
           ),
         ],
       ),
     ),
  
  ),
),

Text("Thanks",style: TextStyle(fontSize: 30),)
],


)


 ),

    )
    ;
  }
}
