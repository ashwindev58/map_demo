import 'dart:developer';

import 'package:flutter/material.dart';
import 'City.dart';
import 'map_screen.dart';

class SelectCityScreen extends StatefulWidget {

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  @override
  Widget build(BuildContext context) {
    log(cities.length.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Select City'),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cities[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapScreen(
                    latitude: cities[index].latitude,
                    longitude: cities[index].longitude,city:cities[index] ,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// MapScreen.dart remains the same as previous implementation
