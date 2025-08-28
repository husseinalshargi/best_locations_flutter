import 'package:flutter/material.dart';
import 'package:save_locations/screens/places_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  // void addPlace() {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (builder) {return }));
  // }

  @override
  Widget build(BuildContext context) {
    return PlacesList();
  }
}
