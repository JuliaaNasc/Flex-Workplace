abstract class IUpdatePassword {
  void updatePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmationPassword,
  });
}
