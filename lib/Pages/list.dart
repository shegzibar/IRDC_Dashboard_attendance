import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:irdc__attend/services/database.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  List userlist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  fetchdata() async {
    dynamic result = await database().getUserList();
    if (result == null) {
      print('unable to retrieve');
    } else {
      setState(() {
        userlist = result;
      });
    }
  }

  Color _indic = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: userlist.length,
            itemBuilder: (context, index) {
              if (userlist[index]['attend'] == 0) {
                _indic = Colors.red;
              }
              return Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text(userlist[index]['name']),
                  trailing: Icon(
                    Icons.circle,
                    color: _indic,
                  ),
                ),
              );
            }));
  }
}
