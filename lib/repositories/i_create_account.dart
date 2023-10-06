import '../models/user.dart';

abstract class ICreateAccount {
  Future<User> createAccount({
    required String name,
    required String email,
    required String password,
    required String confirmationPassword,
    required String securityQuestion,
  });
}
