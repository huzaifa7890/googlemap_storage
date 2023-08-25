import 'package:flutter/material.dart';
import './screens/add_place.dart';
import './providers/great_places.dart';
import 'package:provider/provider.dart';
import './screens/place_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (cv) => AddPlaceScreen(),
        },
      ),
    );
  }
}
