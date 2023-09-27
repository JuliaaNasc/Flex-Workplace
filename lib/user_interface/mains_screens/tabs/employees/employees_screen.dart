import 'package:flex_workplace/models/employee.dart';
import 'package:flex_workplace/models/sector.dart';
import 'package:flex_workplace/user_interface/components/employee_layout.dart';
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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    SectorTitle(title: '  COMERCIAL  '),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: controller.employeesComercial.length,
                        itemBuilder: (context, index) {
                          Employee employee =
                              controller.employeesComercial[index];
                          return EmployeeLayout(employee: employee);
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    SectorTitle(title: '  DESENVOLVIMENTO  '),
                    const SizedBox(height: 10),
                    Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: controller.employeesDesenvolvimento.length,
                          itemBuilder: (context, index) {
                            Employee employee =
                                controller.employeesDesenvolvimento[index];
                            return EmployeeLayout(employee: employee);
                          },
                        )),
                    const SizedBox(height: 10),
                    SectorTitle(title: '  SUPORTE  '),
                    const SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: controller.employeesSuporte.length,
                        itemBuilder: (context, index) {
                          Employee employee =
                              controller.employeesSuporte[index];
                          return EmployeeLayout(employee: employee);
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    SectorTitle(title: '  FINANCEIRO  '),
                    const SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: controller.employeesFinanceiro.length,
                        itemBuilder: (context, index) {
                          Employee employee =
                              controller.employeesFinanceiro[index];
                          return EmployeeLayout(employee: employee);
                        },
                      ),
                    ),
                    const SizedBox(height: 40),
                    Align(
                      child: Image.asset('assets/g4.png', width: 100),
                      alignment: Alignment.centerLeft,
                    ),
                    Image.asset('assets/wave_green.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
