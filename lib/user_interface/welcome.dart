import 'package:flex_workplace/user_interface/login_screen.dart';
import 'package:flex_workplace/user_interface/register_screen.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/g4.png'),
            Image.asset('assets/wave_green.png'),
            const SizedBox(height: 20),
            SizedBox(
              width: 160,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                    return const LoginScreen();
                  }));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 12, 207, 18))),
                child: const Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Monserrat',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return const RegisterScreen();
                }));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 12, 207, 18))),
              child: const Text(
                'Cadastrar-se',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Monserrat',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
