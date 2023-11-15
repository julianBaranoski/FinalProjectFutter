import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models.dart';

Future<List<ParkingRecord>> getParkingRecords() async {
  final response = await http.get(
      Uri.parse('https://parking-spot-238adfbb7467.herokuapp.com/parking-spot/list'));

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);
    return data.map((record) => ParkingRecord.fromJson(record)).toList();
  } else {
    throw Exception('Falha ao carregar os registros de estacionamento');
  }
}


Future<void> createParkingRecord(ParkingRecord record) async {
  final response = await http.post(
    Uri.parse('https://parking-spot-238adfbb7467.herokuapp.com/parking-spot/save'),
    headers: <String, String>{
      'Content-Type': 'application/json',
    },
    body: jsonEncode(record.toJson()),
  );

  if (response.statusCode == 201) {
  } else {
    throw Exception('Falha ao criar o registro de estacionamento');
  }
}
