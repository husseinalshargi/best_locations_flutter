import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_locations/providers/places_provider.dart';
import 'package:save_locations/screens/add_place.dart';
import 'package:save_locations/screens/place_screen.dart';

class PlacesList extends ConsumerStatefulWidget {
  const PlacesList({super.key});

  @override
  ConsumerState<PlacesList> createState() {
    return _PlacesListState();
  }
}

class _PlacesListState extends ConsumerState<PlacesList> {
  void addPlace() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return AddPlace();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var placesList = ref.watch(placesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your places",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        actions: [
          IconButton(
            icon: Icon(Icons.add_rounded),
            onPressed: () {
              addPlace();
            },
          ),
        ],
      ),
      body: placesList.length < 1
          ? Center(
              child: Text(
                'No places found.',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          : ListView.builder(
              itemCount: placesList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return PlaceScreen(place: placesList[index]);
                        },
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(
                      placesList[index].title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).secondaryHeaderColor,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
