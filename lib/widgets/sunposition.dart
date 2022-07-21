import 'package:flutter/material.dart';

Widget sunPosition (icon, time, position){
  return Column(
    children: [
      SizedBox(
        width: 50,
        height: 50,
        child: Icon(
          icon,
          size: 50,
        ),
      ),
      Text(
        position,
        style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(time)
    ],
  );
}