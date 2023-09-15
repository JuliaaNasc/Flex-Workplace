import 'package:flex_workplace/models/quafication.dart';

class Employee {
  String photo;
  String name;
  String id;
  String email;
  String description;
  String discord;
  String linkedin;
  List<Qualification> qualification;

  Employee({
    required this.photo,
    required this.name,
    required this.id,
    
    required this.email,
    required this.description,
    required this.discord,
    required this.linkedin,
    required this.qualification,
  });
}
