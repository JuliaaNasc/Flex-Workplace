import 'package:dio/dio.dart';
import 'package:flex_workplace/models/user.dart';
import 'package:flex_workplace/repositories/i_create_account.dart';

class CreateAccount implements ICreateAccount {
  @override
  Future<User> createAccount({
    required String name,
    required String email,
    required String password,
    required String confirmationPassword,
    required String securityQuestion,

  }) async {
    Dio dio = Dio();

    Map<String, dynamic> body = <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'confirmPassword': confirmationPassword,
      'securityquestion': securityQuestion,

    };
    Response response = await dio.post(
      'http://10.8.20.61:4000/registerUser',
      data: body,
    );
    return User(
      photo: response.data['photo'],
      name: response.data['name'],
      email: response.data['email'],
      id: response.data['id'],
    
    );
  }
}
