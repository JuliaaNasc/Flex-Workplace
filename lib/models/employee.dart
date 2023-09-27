import 'package:flex_workplace/models/quafication.dart';
import 'package:flex_workplace/models/sector.dart';
import 'package:flex_workplace/models/subsector.dart';

class Employee {
  String? photo;
  String name;
  String id;
  String email;
  String description;
  String discord;
  String linkedin;
  List<Sector> sectors;
  List<Subsector> subsectors;
  List<Qualification> qualification;

  Employee({
    this.photo,
    required this.name,
    required this.id,
    required this.email,
    required this.description,
    required this.discord,
    required this.linkedin,
    required this.sectors,
    required this.subsectors,
    required this.qualification,
  });
}
