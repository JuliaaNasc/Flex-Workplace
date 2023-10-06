import 'dart:convert';

import 'package:flex_workplace/implementations/create_account.dart';
import 'package:flex_workplace/models/user.dart';
import 'package:flex_workplace/repositories/i_create_account.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController {
  TextEditingController userName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();
  TextEditingController favoriteColor = TextEditingController();

  ICreateAccount createAccountRepository = CreateAccount();

  Future<User?> createAccount() async {
    try {
      User user = await createAccountRepository.createAccount(
        name: userName.text,
        email: email.text,
        password: password.text,
        confirmationPassword: passwordConfirmation.text,
        securityQuestion: favoriteColor.text,
      );

      String userJson = jsonEncode({
        'name': user.name,
        'email': user.email,
        'photo': user.photo,
        'id': user.id,
      });
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString('user', userJson);
      return user;
      
    } catch (e) {
      return null;
    }
  }
}
