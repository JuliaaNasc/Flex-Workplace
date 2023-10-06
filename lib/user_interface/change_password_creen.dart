import 'package:flex_workplace/user_interface/components/custom_text_field.dart';
import 'package:flex_workplace/user_interface/forgot_password.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new_outlined)),
                  Text(
                    '  Alterar Senha',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Text(
              'Digite a sua senha antiga',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 0),
            CustomTextField(hint: 'Digite aqui a sua senha antiga...', controller: TextEditingController(),),
            const SizedBox(height: 0),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) {
                    return ForgotPassword();
                  }),
                );
              },
              child: Text(
                'Esqueceu a senha?',
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Informe sua nova senha',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 0),
            CustomTextField(hint: 'Digite aqui sua nova senha...', controller: TextEditingController(),),
            const SizedBox(height: 30),
            Text(
              'Digite novamente a sua nova senha',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 0),
            CustomTextField(hint: 'Digite aqui novamente a sua nova senha...', controller: TextEditingController(),),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              child: const Text(
                'ALTERAR SENHA',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
