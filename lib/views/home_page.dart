import 'package:final_project_flutter/Views/parking_record_form.dart';
import 'package:final_project_flutter/Views/parking_record_list.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            onPressed: (){
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ParkingRecordList()),
              );
            },
            child: const Text('Ver lista de vagas!'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ParkingRecordForm()),
              );
            },
            child: const Text('Adicionar nova vaga!'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: null,
            child: const Text('Editar vaga'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: (

                ) {},
            child: const Text('Deletar vaga'),
          ),
        ],
      ),
    );
  }
}
