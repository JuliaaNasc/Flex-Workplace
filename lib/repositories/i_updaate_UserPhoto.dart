import 'dart:io';

abstract class IUpdateUserphoto {
  void updateUserPhoto({
    required String userId,
    required File photo,
  });
}
