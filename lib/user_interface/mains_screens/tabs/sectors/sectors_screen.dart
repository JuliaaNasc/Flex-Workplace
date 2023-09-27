import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SectorsScreen extends StatefulWidget {
  const SectorsScreen({super.key});

  @override
  State<SectorsScreen> createState() => _SectorsScreenState();
}

class _SectorsScreenState extends State<SectorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      const ListTile(
                        leading: Icon(
                          Icons.contact_emergency_rounded,
                          size: 35,
                        ),
                        title: Text(
                          ' COMERCIAL',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const ListTile(
                        leading: Icon(
                          FontAwesomeIcons.computer,
                          size: 35,
                        ),
                        title: Text(
                          ' DESENVOLVIMENTO',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const ListTile(
                        leading: Icon(
                          Icons.support_agent_outlined,
                          size: 35,
                        ),
                        title: Text(
                          ' SUPORTE',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const ListTile(
                        leading: Icon(
                          Icons.attach_money,
                          size: 35,
                        ),
                        title: Text(
                          ' FINANCEIRO',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              const SizedBox(height: 100),
              Align(
                child: Image.asset('assets/g4.png', width: 100),
                alignment: Alignment.centerLeft,
              ),
              Image.asset('assets/wave_green.png'),
            ],
          ),
        ),
      ),
    );
  }
}
