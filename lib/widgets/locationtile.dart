import 'package:flutter/material.dart';

Widget locationTile(){
  return Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
        color: Colors.lightBlue.shade200,
        borderRadius: BorderRadius.circular(50)),
    child: Row(
      children: [
        Column(
          children: const [
            Icon(
              Icons.sunny,
              color: Colors.amber,
              size: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "30'C",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Ibadan City",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Ibadan, Nigeria",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Wednesday, 19 June 19:00",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        )
      ],
    ),
  );
}