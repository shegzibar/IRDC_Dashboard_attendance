import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:irdc__attend/services/database.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("attend").snapshots(),
          builder: (context, snapshot) {
            // added a print statement here to show that the snapshot is not from 'stream1' but 'stream2' and vice versa.
            if (snapshot.hasError) {
              return Center(
                child: Text('error'),
              );
            }
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }

            return Container(
              child: ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  if (snapshot.data!.docs[index]['attend'] == 0) {
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title:
                            Text(snapshot.data!.docs[index]['name'].toString()),
                        trailing: Icon(
                          Icons.circle,
                          color: Colors.red,
                        ),
                      ),
                    );
                  }
                  // ignore: prefer_const_constructors
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title:
                          Text(snapshot.data!.docs[index]['name'].toString()),
                      trailing: Icon(
                        Icons.circle,
                        color: Colors.green,
                      ),
                    ),
                  );
                },
              ),
            );

            // return Center(
            //   child: CircularProgressIndicator(),
            // );
          }),
    );
  }
}
