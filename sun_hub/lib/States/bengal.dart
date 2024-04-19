import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class bengal extends StatelessWidget {
  const bengal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("West Bengal",style: TextStyle(
          fontSize:20.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('bengal').snapshots(),
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
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 4,
                    color: Colors.lightGreenAccent,// Adjust elevation as needed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          title: Text("Company:"),
                          subtitle: Text(data['title'],style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text("Phone No:"),
                          subtitle: Text(data['number'],style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_city),
                          title: Text("Locations:"),
                          subtitle: Text(data['locations'],style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        ListTile(
                          leading: Icon(Icons.web),
                          title: Text("Website:"),
                          subtitle: Text(data['website'],style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
