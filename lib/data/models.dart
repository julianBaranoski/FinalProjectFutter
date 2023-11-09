class ParkingRecord {
  final String id;
  final String parkingSpotNumber;
  final String licensePlateCar;
  final String brandCar;
  final String modelCar;
  final String colorCar;
  final String registrationDate;
  final String responsibleName;
  final String apartment;
  final String block;

  ParkingRecord({
    required this.id,
    required this.parkingSpotNumber,
    required this.licensePlateCar,
    required this.brandCar,
    required this.modelCar,
    required this.colorCar,
    required this.registrationDate,
    required this.responsibleName,
    required this.apartment,
    required this.block,
  });

  factory ParkingRecord.fromJson(Map<String, dynamic> json) {
    return ParkingRecord(
      id: json['id'],
      parkingSpotNumber: json['parkingSpotNumber'],
      licensePlateCar: json['licensePlateCar'],
      brandCar: json['brandCar'],
      modelCar: json['modelCar'],
      colorCar: json['colorCar'],
      registrationDate: json['registrationDate'],
      responsibleName: json['responsibleName'],
      apartment: json['apartment'],
      block: json['block'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'parkingSpotNumber': parkingSpotNumber,
      'licensePlateCar': licensePlateCar,
      'brandCar': brandCar,
      'modelCar': modelCar,
      'colorCar': colorCar,
      'registrationDate': registrationDate,
      'responsibleName': responsibleName,
      'apartment': apartment,
      'block': block,
    };
  }
}
