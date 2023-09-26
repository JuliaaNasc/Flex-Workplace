import 'package:flex_workplace/user_interface/mains_screens/tabs/contact/contact_screen.dart';
import 'package:flex_workplace/user_interface/mains_screens/tabs/customers/customers_screen.dart';
import 'package:flex_workplace/user_interface/mains_screens/tabs/employees/employees_screen.dart';
import 'package:flex_workplace/user_interface/mains_screens/tabs/sectors/sectors_screen.dart';
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
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Container(
                color: Colors.green,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (c) {
                                    return UserScreen();
                                  },
                                ));
                              },
                              icon: Icon(
                                Icons.person_pin,
                                size: 50,
                              ),
                            ),
                            Text(
                              ' Olá, Usuário',
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
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (c) {
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
                              child: Image.asset('assets/g4.png', width: 40),
                            ),
                            suffixIcon: Icon(Icons.search, size: 30),
                            hintText: 'Pesquise algo aqui...',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fillColor: Colors.white,
                            filled: true,
                            isDense: true,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      TabBar(
                        isScrollable: true,
                        dividerColor: Colors.green,
                        indicatorColor: Colors.black,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Text(
                            'Funcionários',
                            style: TextStyle(
                              fontFamily: 'Monserrat',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Clientes',
                            style: TextStyle(
                              fontFamily: 'Monserrat',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Setores',
                            style: TextStyle(
                              fontFamily: 'Monserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Contato',
                            style: TextStyle(
                              fontFamily: 'Monserrat',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: Colors.black,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    EmployeesScreen(),
                    CustomersScreen(),
                    SectorsScreen(),
                    ContactScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
