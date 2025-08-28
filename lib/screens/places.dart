import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:save_locations/providers/user_places.dart';
import 'package:save_locations/screens/add_place.dart';
import 'package:save_locations/widgets/places_list.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()),
              );
            },
            icon: Icon(Icons.add_rounded),
          ),
        ],
      ),
      body: PlacesList(places: userPlaces),
    );
  }
}
