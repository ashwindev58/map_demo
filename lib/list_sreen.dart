// SelectScreen.dart
import 'package:flutter/material.dart';
import 'map_screen.dart';

class SelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Location 1'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapScreen(
                    latitude: 40.7128, // Example latitude
                    longitude: -74.0060, // Example longitude
                  ),
                ),
              );
            },
          ),
          // Add more ListTile for other locations
        ],
      ),
    );
  }
}
