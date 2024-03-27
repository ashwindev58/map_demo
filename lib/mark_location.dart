// MapScreen.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_in/addcity.dart';

class MarkLocation extends StatelessWidget {

  const MarkLocation({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(20.5937, 78.9629),
          zoom: 6,
        ),
        onTap: (l){

          showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AddCityPopup(lat: l,);
                },
              );
        },
        // markers: {
        //   Marker(
        //     markerId: MarkerId('selected-location'),
        //     position: LatLng(35.8617, 104.1954),
        //     infoWindow: InfoWindow(title: 'Selected Location'),
        //   ),
        // },
      ),
    );
  }
}
