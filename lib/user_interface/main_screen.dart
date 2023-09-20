import 'package:flex_workplace/user_interface/settings_screen.dart';
import 'package:flex_workplace/user_interface/user_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(children: [
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (c){
                      return UserScreen();
                    },));
                  },
                  icon: Icon(
                    Icons.person_pin,
                    size: 35,
                  ),
                ),
                Text(
                  '  Olá, Usuário',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: SizedBox()),
                PopupMenuButton(itemBuilder: (c) {
                  List<PopupMenuItem> options = [
                    PopupMenuItem(
                        child: Text('Configurações'),
                        onTap: () {
                          WidgetsBinding.instance
                              .addPostFrameCallback((timeStamp) {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (c) {
                              return const SettingsScreen();
                            }));
                          });
                        })
                  ];
                  return options;
                })
              ],
            ),
          ),
          const SizedBox(height: 28),
          SizedBox(
            height: 35,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('g4.png', width: 40),
                ),
                suffixIcon: Icon(Icons.search, size: 25),
                hintText: 'Pesquise algo aqui...',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                fillColor: Colors.white,
                filled: true,
                isDense: true,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
