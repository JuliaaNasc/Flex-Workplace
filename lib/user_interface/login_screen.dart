import 'package:flex_workplace/user_interface/components/custom_text_field.dart';
import 'package:flex_workplace/user_interface/mains_screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Text(
              'Acesse',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Com e-mail e senha para entrar',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 60),
            Text(
              'Digite seu e-mail',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            CustomTextField(hint: 'Digite seu e-mail aqui...', controller: TextEditingController(),),
            const SizedBox(height: 20),
            Text(
              'Digite sua senha',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            CustomTextField(hint: 'Digite a sua senha aqui...', controller: TextEditingController(),),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return const ForgotPassword();
                }));
              },
              child: Text(
                'Esqueceu sua senha?',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return const MainScreen();
                }));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Monserrat',
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
