import 'package:flex_workplace/models/employee.dart';
import 'package:flutter/material.dart';

class EmployeeLayout extends StatelessWidget {
  EmployeeLayout({
    required this.employee,
    super.key,
  });
  Employee employee;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: (Colors.black),
          radius: 27,
          child: CircleAvatar(
            radius: 25,
            child: Icon(
              Icons.person,
              size: 30,
            ),
            backgroundColor: (Colors.green),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black, width: 2),
            ),
            height: 45,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
              child: Text(
                employee.name,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Monteserrat',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
