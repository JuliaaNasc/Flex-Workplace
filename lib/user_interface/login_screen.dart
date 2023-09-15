import 'package:flex_workplace/user_interface/main_screen.dart';
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
            const SizedBox(height: 30),
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
            const SizedBox(height: 30),
            Text(
              'Digite seu e-mail',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Digite seu e-mail aqui...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  fillColor: Colors.green,
                  filled: true,
                  isDense: true,
                ),
              ),
            ),
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
            SizedBox(
              height: 35,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Digite a sua senha aqui...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8)),
                  fillColor: Colors.green,
                  filled: true,
                  isDense: true,
                ),
              ),
            ),
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
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
