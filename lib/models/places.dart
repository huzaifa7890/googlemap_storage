import 'dart:io';

import 'package:flutter/foundation.dart';

class PlaceLocaion {
  final double latitude;
  final double longitude;
  final String address;
  const PlaceLocaion(
      {@required this.latitude, @required this.longitude, this.address});
}

class Place {
  final String id;
  final String title;
  final PlaceLocaion location;
  final File image;
  Place(
      {@required this.id,
      @required this.image,
      @required this.location,
      @required this.title});
}
