import 'package:final_project_flutter/views/home_page.dart';
import 'package:flutter/material.dart';

import 'Views/parking_record_form.dart';
import 'Views/parking_record_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Parking Spot')),
        body: HomePage(),
      ),
    );
  }
}
