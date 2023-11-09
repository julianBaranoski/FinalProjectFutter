import 'package:flutter/material.dart';
import '../data/api.dart';
import '../data/models.dart';

class ParkingRecordList extends StatefulWidget {
  const ParkingRecordList({super.key});

  @override
  _ParkingRecordListState createState() => _ParkingRecordListState();
}

class _ParkingRecordListState extends State<ParkingRecordList> {
  List<ParkingRecord> records = [];

  @override
  void initState() {
    super.initState();
    fetchRecords();
  }

  Future<void> fetchRecords() async {
    records = await getParkingRecords();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: records.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Placa: ' + records[index].licensePlateCar),
          subtitle: Text('Proprietário: ' + records[index].responsibleName + ' - Apto: ' + records[index].apartment),
        );
      },
    );
  }
}
