import 'package:flutter/material.dart';

Widget weatherTile(time, icon, degree) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
    child: Column(
      children:  [
        Text(
          time,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 80,
          width: 80,
          child: Icon(
            icon,
            size: 80,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          degree,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        )
      ],
    ),
  );
}
