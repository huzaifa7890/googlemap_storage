import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/places.dart';

class MapScreen extends StatefulWidget {
  final PlaceLocaion initialLocation;
  final bool isSelecting;
  MapScreen(
      {this.initialLocation =
          const PlaceLocaion(latitude: 37.432, longitude: -122.084),
      this.isSelecting});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your MAp')),
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
        target: LatLng(
          widget.initialLocation.latitude,
          widget.initialLocation.longitude,
        ),
        zoom: 16,
      )),
    );
  }
}
