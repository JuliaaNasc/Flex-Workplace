import '../models/user.dart';

abstract class ILogin {
  User login ({
    required String email,
    required String password,
  });
}