import 'package:flex_workplace/models/employee.dart';
import 'package:flex_workplace/models/sector.dart';
import 'package:flex_workplace/user_interface/components/sector_title.dart';
import 'package:flex_workplace/user_interface/mains_screens/tabs/employees/employees_controller.dart';
import 'package:flutter/material.dart';

class EmployeesScreen extends StatefulWidget {
  const EmployeesScreen({super.key});

  @override
  State<EmployeesScreen> createState() => _EmployeesScreenState();
}

class _EmployeesScreenState extends State<EmployeesScreen> {
  EmployeesController controller = EmployeesController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Container(
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    SectorTitle(title: '  Comercial  '),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: controller.employeesComercial.length,
                        itemBuilder: (context, index) {
                          Employee employee =
                              controller.employeesComercial[index];
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    SectorTitle(title: '  Desenvolvimento  '),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: controller.employeesDesenvolvimento.length,
                          itemBuilder: (context, index) {
                            Employee employee =
                                controller.employeesDesenvolvimento[index];
                            return Text(employee.name);
                          },
                        )),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              const SizedBox(height: 10),
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
