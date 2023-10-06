import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
                      const ListTile(
                        leading: Icon(
                          FontAwesomeIcons.instagram,
                          size: 35,
                        ),
                        title: Text(
                          'INSTAGRAM ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('@G4FLEX_OFICIAL'),
                      ),
                      const SizedBox(height: 10),
                      const ListTile(
                        leading: Icon(
                          FontAwesomeIcons.whatsapp,
                          size: 35,
                        ),
                        title: Text(
                          'WHATSAPP ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('(85) 3033 1777'),
                      ),
                      const SizedBox(height: 10),
                      const ListTile(
                        leading: Icon(
                          FontAwesomeIcons.telegram,
                          size: 35,
                        ),
                        title: Text(
                          'TELEGRAM ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('FLEXUC_OMNI'),
                      ),
                      const SizedBox(height: 10),
                      const ListTile(
                        leading: Icon(
                          Icons.phone_rounded,
                          size: 35,
                        ),
                        title: Text(
                          'TELEFONE ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('(85) 3033 1777'),
                      ),
                       const SizedBox(height: 10),
                      const ListTile(
                        leading: Icon(
                          Icons.email,
                          size: 35,
                        ),
                        title: Text(
                          'E-MAIL ',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text('COMERCIAL@G4FLEX.COM.BR'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              const SizedBox(height: 30),
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
