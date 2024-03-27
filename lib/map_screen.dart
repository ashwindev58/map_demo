// MapScreen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'City.dart';

class MapScreen extends StatelessWidget {
  final double latitude;
  final double longitude;
  final City? city;

  const MapScreen(
      {Key? key, required this.latitude, required this.longitude, this.city})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(latitude, longitude),
              zoom: 12,
            ),
            markers: {
              Marker(
                markerId: MarkerId('selected-location'),
                position: LatLng(latitude, longitude),
                infoWindow: InfoWindow(title: 'Selected Location'),
              ),
            },
          ),
          
        ],
      ),
    );
  }
}
