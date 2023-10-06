class User {
  String name;
  String email;
  String? photo;
  int id;

  User({
    required this.name,
    required this.email,
    required this.id,
    this.photo,
  });
}
