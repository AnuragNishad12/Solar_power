

import 'package:flutter/material.dart';
import 'package:sun_hub/Next/benefits.dart';
import 'package:sun_hub/Next/solar.dart';
import 'package:sun_hub/Next/solarIndutryGrowth.dart';

import 'impactEnvironmet.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About",style: TextStyle(
          fontSize:20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             InkWell(
               onTap: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder:
                         (context)=>solar()));
               },
               child: Material(
                 borderRadius: BorderRadius.circular(15.0),
                 elevation: 5.0,
                 child: Container(
                   height: 150.0,
                   width: 150.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15.0),
                     image: DecorationImage(
                       image: AssetImage("Assets/one.jpg"),
                       fit: BoxFit.cover,
                     ),
                   ),
                   child: Center(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0),
                         color: Colors.grey,
                       ),
                       padding: EdgeInsets.all(8.0),
                       child: Text("Solar Energy Overview",style: TextStyle(
                         fontStyle: FontStyle.italic,
                         fontWeight: FontWeight.bold,
                         fontSize: 10.0,
                       ),),
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(
               width: 10.0,
             ),
             InkWell(
               onTap: () {
                 Navigator.push(context,
                 MaterialPageRoute(builder:
                 (context)=>benefits()));
               },
               child: Material(
                 borderRadius: BorderRadius.circular(15.0),
                 elevation: 5.0,
                 child: Container(
                   height: 150.0,
                   width: 150.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15.0),
                     image: DecorationImage(
                       image: AssetImage("Assets/two.jpg"),
                       fit: BoxFit.cover,
                     ),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Center(
                       child: Container(
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15.0),
                           color: Colors.grey,
                         ),
                         padding: EdgeInsets.all(8.0),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Benefits of Solar Energy",style: TextStyle(
                             fontStyle: FontStyle.italic,
                             fontWeight: FontWeight.bold,
                             fontSize: 10.0,
                           ),),
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ),
         SizedBox(height: 20),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             InkWell(
               onTap: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder:
                         (context)=>Imapct()));
               },
               child: Material(
                 borderRadius: BorderRadius.circular(15.0),
                 elevation: 5.0,
                 child: Container(
                   height: 150.0,
                   width: 150.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15.0),
                     image: DecorationImage(
                       image: AssetImage("Assets/three.jpg"),
                       fit: BoxFit.cover,
                     ),
                   ),
                   child: Center(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0),
                         color: Colors.grey,
                       ),
                       padding: EdgeInsets.all(8.0),
                       child: Text("Environment Impact",style: TextStyle(
                         fontStyle: FontStyle.italic,
                         fontWeight: FontWeight.bold,
                         fontSize: 10.0,
                       ),),
                     ),
                   ),
                 ),
               ),
             ),
             SizedBox(
               width: 10.0,
             ),
             InkWell(
               onTap: () {
                 Navigator.push(context,
                     MaterialPageRoute(builder:
                         (context)=>solarIndustry()));
               },
               child: Material(
                 borderRadius: BorderRadius.circular(15.0),
                 elevation: 5.0,
                 child: Container(
                   height: 150.0,
                   width: 150.0,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15.0),
                     image: DecorationImage(
                       image: AssetImage("Assets/four.jpg"),
                       fit: BoxFit.cover,
                     ),
                   ),
                   child: Center(
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15.0),
                         color: Colors.grey,
                       ),
                       padding: EdgeInsets.all(8.0),
                       child: Text("Solar Industry Growth",style: TextStyle(
                         fontStyle: FontStyle.italic,
                         fontWeight: FontWeight.bold,
                         fontSize: 10.0,
                       ),),
                     ),
                   ),
                 ),
               ),
             ),
           ],
         ),
         SizedBox(
           height: 10.0,
         ),
       ],
     ),
    );
  }
}
