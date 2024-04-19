import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



class maintance extends StatefulWidget {
  const maintance({super.key});

  @override
  State<maintance> createState() => _maintanceState();
}


class _maintanceState extends State<maintance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maintenance and "
            "TroubleShooting Guides",style: TextStyle(
          fontSize:20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.
        collection('maintance').snapshots(),
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
