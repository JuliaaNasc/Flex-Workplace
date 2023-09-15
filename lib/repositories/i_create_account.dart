import '../models/user.dart';

abstract class ICreateAccount {
  User createAccount({
    required String name,
    required String email,
    required String password,
    required String confirmationPassword,
  });
}
