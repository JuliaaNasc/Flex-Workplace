import 'package:flex_workplace/models/user.dart';
import 'package:flex_workplace/user_interface/components/custom_text_field.dart';
import 'package:flex_workplace/user_interface/mains_screens/main_screen.dart';
import 'package:flex_workplace/user_interface/register/register_controller.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterController controller = RegisterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Criar conta',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              const Text(
                'Seja muito bem - vindo!',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Informe o nome de usuario',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              CustomTextField(
                hint: 'Digite seu nome de usuário aqui...',
                controller: controller.userName,
              ),
              const SizedBox(height: 20),
              const Text(
                'Informe o e-mail',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              CustomTextField(
                hint: 'Digite seu e-mail aqui...',
                controller: controller.email,
              ),
              const SizedBox(height: 20),
              const Text(
                'Crie uma senha',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              CustomTextField(
                hint: 'Digite a sua criação de senha aqui...',
                controller: controller.password,
              ),
              const SizedBox(height: 20),
              const Text(
                'Confirme a sua senha',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              CustomTextField(
                hint: 'Digite a sua confirmação de senha aqui...',
                controller: controller.passwordConfirmation,
              ),
              const SizedBox(height: 20),
              const Text(
                'QUAL SUA COR FAVORITA? (Pergunta de segurança)',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              CustomTextField(
                hint: 'Digite aqui a sua resposta de segurança...',
                controller: controller.favoriteColor,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () async {
                  User? user = await controller.createAccount();
                  if (user != null) {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (c) {
                        return const MainScreen();
                      },
                    ));
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: const Text(
                  'CRIAR CONTA',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Monserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
