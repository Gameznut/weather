import 'package:flutter/material.dart';
import 'package:weather/widgets/locationtile.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(200)),
                      child: GestureDetector(onTap: (){
                        Navigator.pop(context);
                      },child: Icon(Icons.arrow_back)),
                    ),
                    const Text(
                      "Locations",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(200)),
                      child: const Icon(Icons.more_horiz),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                locationTile(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "Other Locations",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                locationTile(),
                const SizedBox(
                  height: 20,
                ),
                locationTile(),
                const SizedBox(
                  height: 20,
                ),
                locationTile(),
                const SizedBox(
                  height: 20,
                ),
                locationTile(),
                const SizedBox(
                  height: 20,
                ),
                locationTile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
