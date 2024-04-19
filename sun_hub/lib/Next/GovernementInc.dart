import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GovernmentIn extends StatefulWidget {
  const GovernmentIn({Key? key}) : super(key: key);

  @override
  State<GovernmentIn> createState() => _GovernmentInState();
}

class _GovernmentInState extends State<GovernmentIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Government Incentives",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('givornment').snapshots(),
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
