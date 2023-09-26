import 'package:flex_workplace/models/quafication.dart';

class Employee {
  String? photo;
  String name;
  String id;
  String email;
  String description;
  String discord;
  String linkedin;
  String sector;
  String subSector;
  List<Qualification> qualification;

  Employee({
    this.photo,
    required this.name,
    required this.id,
    required this.email,
    required this.description,
    required this.discord,
    required this.linkedin,
    required this.sector,
    required this.subSector,
    required this.qualification,
  });
}
