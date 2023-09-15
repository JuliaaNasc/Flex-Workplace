import 'package:flex_workplace/user_interface/main_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Text(
                'Criar conta',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              Text(
                'Seja muito bem - vindo!',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Informe o nome de usuario',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              SizedBox(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite seu nome de usuário aqui...',
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
                'Informe o e-mail',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
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
                'Crie uma senha',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              SizedBox(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite a sua criação de senha aqui...',
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
                'Confirme a sua senha',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              SizedBox(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite a sua confirmaçâo de senha aqui...',
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
                'QUAL SUA COR FAVORITA? (Pergunta de segurança)',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 0),
              SizedBox(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Digite aqui a sua resposta de segurança...',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    fillColor: Colors.green,
                    filled: true,
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (c) {
                      return const MainScreen();
                    },
                  ));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                child: const Text(
                  'CRIAR CONTA',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
