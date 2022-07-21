import 'package:flutter/material.dart';
import 'package:weather/screens/location.dart';

import '../widgets/sunposition.dart';
import '../widgets/weathertile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: SafeArea(
          minimum: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on_sharp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Lagos",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Alagbado",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Sunday 10 October",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: const [
                      Text(
                        "30'C",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 150,
                            fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        top: 150,
                        child: SizedBox(
                          // color: Colors.blueGrey,
                          child: Icon(Icons.sunny,size: 200,color: Colors.amber,),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 190,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          sunPosition(
                              Icons.nightlight_round, "19:00", "Sunset"),
                          sunPosition(Icons.sunny, "10:00", "Sunrise"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  [
                        const Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LocationPage()));
                          },
                          child: const Text(
                            "See All",
                            style:  TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        weatherTile("11:00", Icons.sunny, "30'C"),
                        weatherTile("12:00", Icons.sunny, "30'C"),
                        weatherTile("13:00", Icons.sunny, "30'C"),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
