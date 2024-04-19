

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class solarIndustry extends StatefulWidget {
  const solarIndustry({super.key});

  @override
  State<solarIndustry> createState() => _solarIndustryState();
}

class _solarIndustryState extends State<solarIndustry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Solar Industry Growth",style: TextStyle(
          fontSize:20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('industry').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text("No data available"));
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot data = snapshot.data!.docs[index];
              return ListTile(
                title: Text(data['details']),
              );
            },
          );
        },
      ),
    );
  }
}
