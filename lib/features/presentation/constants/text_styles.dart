import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle contextTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    // fontFamily: "Poppins",
    color: Colors.white,
  );
}

final TextStyle contextTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    fontFamily: "Poppins",
    color: Colors.grey.shade700);
TextStyle tranformTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontFamily: "Poppins",
    color: Colors.white);

Text boldText({
  required String text,
  double fontSize = 16,
  Color color = Colors.black,
}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
      fontFamily: "Poppins",
      color: color,
    ),
  );
}
