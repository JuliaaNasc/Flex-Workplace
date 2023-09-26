import 'package:flutter/material.dart';

class SectorTitle extends StatelessWidget {
  SectorTitle({
    required this.title,
    super.key,
  });
  String title;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          child: Divider(
            thickness: 3,
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 50,
          child: Divider(
            thickness: 3,
          ),
        ),
      ],
    );
  }
}
