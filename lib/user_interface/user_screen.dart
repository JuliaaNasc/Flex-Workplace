import 'package:flex_workplace/user_interface/change_password_creen.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 74,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          child: Icon(
                            Icons.person,
                            color: Colors.green,
                            size: 90,
                          ),
                          backgroundColor: Colors.white,
                          radius: 70,
                        ),
                      ),
                      Positioned(
                        child: InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            child: Icon(Icons.camera_alt),
                            backgroundColor: Colors.grey.shade500,
                          ),
                        ),
                        right: 0,
                        bottom: 0,
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      size: 25,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (c) {
                            return AlertDialog(
                              actions: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'CONFIRMAR   ',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('CANCELAR',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      )),
                                )
                              ],
                              title: Text(
                                'Atualizar do nome de usuário: ',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              content: TextField(),
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.edit),
                    ),
                    title: Text(
                      'Nome',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Júlia Vitória Costa do Nascimento'),
                  ),
                  const SizedBox(height: 10),
                  const ListTile(
                    leading: Icon(
                      Icons.email_rounded,
                      size: 25,
                    ),
                    title: Text(
                      'E-mail',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('julia.nascimneto@g4flex'),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: Icon(
                      Icons.lock,
                      size: 25,
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (c) {
                            return ChangePasswordScreen();
                          }),
                        );
                      },
                      icon: Icon(Icons.edit),
                    ),
                    title: Text(
                      'Alterar Senha',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListTile(
                    leading: const Icon(
                      Icons.exit_to_app_outlined,
                      size: 25,
                    ),
                    title: const Text(
                      'Sair da Conta',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (c) {
                          return AlertDialog(
                            title: const Text(
                              'Você deseja sair? ',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            actions: [
                              Text(
                                'SIM      ',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'NÃO',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Expanded(child: SizedBox()),
            Align(
              child: Image.asset('assets/g4.png', width: 100),
              alignment: Alignment.centerLeft,
            ),
            Image.asset('assets/wave_green.png'),
          ],
        ),
      ),
    );
  }
}
