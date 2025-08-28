import 'package:flutter/material.dart';
import 'package:save_locations/models/place.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({super.key, required this.place});
  final Place place;

  @override
  State<PlaceScreen> createState() {
    return _PlacesListState();
  }
}

class _PlacesListState extends State<PlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.place.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Center(
        child: Text(
          widget.place.title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
