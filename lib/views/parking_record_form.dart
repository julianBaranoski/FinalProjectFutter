import 'package:flutter/material.dart';
import '../data/api.dart';
import '../data/models.dart';

class ParkingRecordForm extends StatefulWidget {
  ParkingRecordForm({
    Key? key,
  }) : super(key: key);

  @override
  _ParkingRecordFormState createState() => _ParkingRecordFormState();
}

class _ParkingRecordFormState extends State<ParkingRecordForm> {
  final TextEditingController parkingSpotController = TextEditingController();
  final TextEditingController licensePlateController = TextEditingController();
  final TextEditingController brandController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController colorController = TextEditingController();
  final TextEditingController responsibleNameController = TextEditingController();
  final TextEditingController apartmentController = TextEditingController();
  final TextEditingController blockController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: parkingSpotController,
              decoration: InputDecoration(labelText: 'Número da Vaga'),
            ),
            TextField(
              controller: licensePlateController,
              decoration: InputDecoration(labelText: 'Placa do Carro'),
            ),
            TextField(
              controller: brandController,
              decoration: InputDecoration(labelText: 'Marca do Carro'),
            ),
            TextField(
              controller: modelController,
              decoration: InputDecoration(labelText: 'Modelo do Carro'),
            ),
            TextField(
              controller: colorController,
              decoration: InputDecoration(labelText: 'Cor do Carro'),
            ),
            TextField(
              controller: responsibleNameController,
              decoration: InputDecoration(labelText: 'Nome do Responsável'),
            ),
            TextField(
              controller: apartmentController,
              decoration: InputDecoration(labelText: 'Apartamento'),
            ),
            TextField(
              controller: blockController,
              decoration: InputDecoration(labelText: 'Bloco'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newRecord = ParkingRecord(
                  id: '', // O ID será gerado pelo servidor
                  parkingSpotNumber: parkingSpotController.text,
                  licensePlateCar: licensePlateController.text,
                  brandCar: brandController.text,
                  modelCar: modelController.text,
                  colorCar: colorController.text,
                  registrationDate: '', // Pode ser gerado automaticamente no servidor
                  responsibleName: responsibleNameController.text,
                  apartment: apartmentController.text,
                  block: blockController.text,
                );

                createParkingRecord(newRecord); // Chame a função para enviar o novo registro para a API

                Navigator.pop(context); // Volte para a tela anterior após a inserção
              },
              child: Text('Adicionar Registro'),
            ),
          ],
        ),
      ),
    );
  }
}
