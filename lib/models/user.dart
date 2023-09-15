class User {
  String name;
  String email;
  String? photo;
  String id;

  User({
    required this.name,
    required this.email,
    required this.id,
    this.photo,
  });
}
