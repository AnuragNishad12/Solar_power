

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class solar extends StatefulWidget {
  const solar({super.key});

  @override
  State<solar> createState() => _solarState();
}

class _solarState extends State<solar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Solar Energy Overview",style: TextStyle(
            fontSize:20.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('nextAbout').snapshots(),
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
