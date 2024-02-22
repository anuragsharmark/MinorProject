import 'package:flutter/material.dart';

import '../screens/Calculator.dart';

Widget CalculatorButton(context) {
  return FloatingActionButton(
    backgroundColor: Color.fromRGBO(247, 164, 158, 1),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Calculator()));
    },
    child: Icon(Icons.calculate_outlined),
  );
}
