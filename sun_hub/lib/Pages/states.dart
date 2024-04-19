

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sun_hub/States/Goa.dart';
import 'package:sun_hub/States/Gujrat.dart';
import 'package:sun_hub/States/Haryana.dart';
import 'package:sun_hub/States/Raj.dart';
import 'package:sun_hub/States/andhra.dart';
import 'package:sun_hub/States/assam.dart';
import 'package:sun_hub/States/bengal.dart';
import 'package:sun_hub/States/bihar.dart';
import 'package:sun_hub/States/chandi.dart';
import 'package:sun_hub/States/chhattisgarh.dart';
import 'package:sun_hub/States/delhi.dart';
import 'package:sun_hub/States/himachal.dart';
import 'package:sun_hub/States/jammu.dart';
import 'package:sun_hub/States/jharkhand.dart';
import 'package:sun_hub/States/karnataka.dart';
import 'package:sun_hub/States/kerala.dart';
import 'package:sun_hub/States/madhya.dart';
import 'package:sun_hub/States/maha.dart';
import 'package:sun_hub/States/odisha.dart';
import 'package:sun_hub/States/punjab.dart';
import 'package:sun_hub/States/tamil.dart';
import 'package:sun_hub/States/telan.dart';
import 'package:sun_hub/States/uttarPradesh.dart';

class state extends StatelessWidget {
  const state({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("States",style: TextStyle(
          fontSize:20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      InkWell(
                        onTap:(){
                          Navigator.push(context,
                              MaterialPageRoute(builder:
                                  (context)=>andhra()));
                        },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/two.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                              child: Center(
                                child: Text("Andhra Pradesh",style:
                                TextStyle(color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>assam()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Assam",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>bihar()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Bihar",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>chandigarh()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Chandigarh",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>chhattisgarh()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n4.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Chhattisgarh",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>delhi()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n4.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Delhi",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>Goa()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n5.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Goa",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Gujrat()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n6.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Gujarat",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>Haryana()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n7.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Haryana",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>himachal()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n8.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Himachal Pradesh",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Jammu()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n9.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Jammu and Kashmir",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>jharKhand()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n10.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Jharkhand",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>karnataka()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n11.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Karnataka",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>Kerala()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n12.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Kerala",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>Madhya()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n12.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Madhya Pradesh",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap:(){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>maha()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n13.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Maharashtra",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>odisha()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n14.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Odisha",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>Punjab()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n15.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Punjab",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage("Assets/n17.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(// You can change the opacity here if needed
                        child: Center(
                          child: Text("Nagaland",style:
                          TextStyle(color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage("Assets/n18.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(// You can change the opacity here if needed
                        child: Center(
                          child: Text("Odisha",style:
                          TextStyle(color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage("Assets/n19.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(// You can change the opacity here if needed
                        child: Center(
                          child: Text("Punjab",style:
                          TextStyle(color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>Raj()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n20.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Rajasthan",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                                (context)=>tamil()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n21.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Tamil Nadu",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>
                            telan()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n23.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Telangana",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                   InkWell(
                     onTap: (){
                       Navigator.push(context,
                           MaterialPageRoute(builder:
                           (context)=>uttarPradesh()));
                     },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n25.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("Uttar Pradesh",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder:
                            (context)=>bengal()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("Assets/n27.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(// You can change the opacity here if needed
                          child: Center(
                            child: Text("West Bengal",style:
                            TextStyle(color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
