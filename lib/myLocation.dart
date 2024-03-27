// MyLocationScreen.dart
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'city.dart';
import 'map_screen.dart';

class MyLocationScreen extends StatefulWidget {
  @override
  _MyLocationScreenState createState() => _MyLocationScreenState();
}

class _MyLocationScreenState extends State<MyLocationScreen> {
  String _locationMessage = '';

  @override
  void initState() {
    super.initState();
    // _getCurrentLocation();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Location'),
      ),
      body: Center(
        child: Text(_locationMessage),
      ),
    );
  }
}
