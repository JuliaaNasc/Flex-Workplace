import 'package:flex_workplace/user_interface/components/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'mains_screens/main_screen.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(50),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 10),
                Text(
                  'Esqueceu sua senha?',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 0),
                Text(
                  'Vamos recuperalá e redefinilá!',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Informe o seu e-mail',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 0),
                CustomTextField(hint: 'Digite seu e-mail aqui...', controller: TextEditingController(),),
                const SizedBox(height: 20),
                Text(
                  'Qual sua cor favorita? (Pergunta de segurança)',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 0),
               CustomTextField(hint: 'Digite aqui a sua resposta de segurança...', controller: TextEditingController(),),
                const SizedBox(height: 20),
                Text(
                  'Digite sua nova senha',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 0),
                CustomTextField(hint: 'Digite aqui a sua nova senha...', controller: TextEditingController(),),
                const SizedBox(height: 20),
                Text(
                  'Confirme a sua nova senha definida',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 0),
               CustomTextField(hint: 'Digite a sua confirmação de senha aqui...', controller: TextEditingController(),),
                const SizedBox(height: 20),
                const SizedBox(height: 50),
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
              ]),
            )));
  }
}
