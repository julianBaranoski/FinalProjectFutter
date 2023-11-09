import 'package:flutter/material.dart';

import 'Screens/parking_record_form.dart';
import 'Screens/parking_record_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Parking Spot')),
        body: ParkingRecordForm(),
        drawer: Drawer(
          child: Drawer(
            child: ListView(

              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('O que deseja fazer?',
                    style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
                  ),
                ),
                ListTile(
                  title: const Text('Insert'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ParkingRecordForm()),
                      //ParkingRecordList
                    );
                  },
                ),
                ListTile(
                  title: const Text('Delete'),
                  onTap: () {


                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
