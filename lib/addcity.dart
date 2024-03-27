import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_in/city.dart';

class AddCityPopup extends StatefulWidget {
  final LatLng lat;
  AddCityPopup({super.key, required this.lat}) {
   
  }

  @override
  State<AddCityPopup> createState() => _AddCityPopupState();
}

class _AddCityPopupState extends State<AddCityPopup> {
  final TextEditingController cityNameController = TextEditingController();

  final TextEditingController latitudeController = TextEditingController();

  final TextEditingController longitudeController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
     print(widget.lat.toString());
    latitudeController.text = widget.lat.latitude.toString();
    longitudeController.text = widget.lat.longitude.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Add City'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: cityNameController,
              decoration: InputDecoration(labelText: 'City Name'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: latitudeController,
              decoration: InputDecoration(labelText: 'Latitude'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: longitudeController,
              decoration: InputDecoration(labelText: 'Longitude'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            // You can handle saving the city data here
            String cityName = cityNameController.text;
            double latitude = double.tryParse(latitudeController.text) ?? 0.0;
            double longitude = double.tryParse(longitudeController.text) ?? 0.0;

             log(cities.length.toString());
                setState(() {
                  cities.add(
                City(name: cityName, latitude: latitude, longitude: longitude));
                });

                log(cities.length.toString());
            // Perform any necessary validation before saving
            // You can also pass the entered data back to the caller if needed

            // After saving, close the dialog
            Navigator.of(context).pop();
          },
          child: Text('Save'),
        ),
      ],
    );
  }
}
