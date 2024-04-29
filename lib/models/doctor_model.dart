import 'package:alohewan/models/service_model.dart';

class DoctorModel {
  String name;
  String image;
  List<String> service;
  String distance;

  DoctorModel({
    required this.name,
    required this.image,
    required this.service,
    required this.distance,
  });

}

  var doctors = [
    DoctorModel(
      name: 'Dr. Strage',
      image: 'assets/images/doctor1.jpg',
      service: [Service.vaccine, Service.surgery],
      distance: '2.6 km',
    ),
    DoctorModel(
      name: 'Dr. Bahari Idris',
      image: 'assets/images/jhony.jpg',
      service: [Service.consultation ],
      distance: '5 km',
    ),
    DoctorModel(
      name: 'Dr. John Doe',
      image: 'assets/images/doctor1.jpg',
      service: [Service.vaccine, Service.surgery],
      distance: '3.2 km',
    ),
    DoctorModel(
      name: 'Dr. Jane Doe',
      image: 'assets/images/jhony.jpg',
      service: [Service.consultation ],
      distance: '4.5 km',
    ),
  ];
