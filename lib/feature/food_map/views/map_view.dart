import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lets_eat/data/models/extensions/place_list_extension.dart';
import 'package:lets_eat/data/models/place.dart';
import 'package:lets_eat/feature/food_map/bloc/food_map_cubit.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  GoogleMapController? mapController;
  LatLng? currentPosition;
  final restaurants = <Map<String, dynamic>>[];
  final markers = <Marker>{};

  late final FoodMapCubit foodMapCubit;

  @override
  void initState() {
    super.initState();
    foodMapCubit = context.read<FoodMapCubit>();
    unawaited(_init());
  }

  Future<void> _init() async {
    final pos = await Geolocator.getCurrentPosition();
    currentPosition = LatLng(pos.latitude, pos.longitude);
    unawaited(foodMapCubit.fetchNearbyRestaurants(currentPosition!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocSelector<FoodMapCubit, FoodMapState, FoodMapStatus>(
          selector: (state) => state.status,
          builder: (context, status) {
            return switch (status) {
              FoodMapStatus.success => BlocSelector<FoodMapCubit, FoodMapState, (List<Place>, double)>(
                selector: (state) => (state.places, state.radiusMeters),
                builder: (context, record) {
                  final (places, radiusMeters) = record;
                  return Column(
                    children: [
                      Expanded(
                        child: GoogleMap(
                          onMapCreated: (c) {
                            mapController = c;

                            final bounds = boundsFromCenterRadius(currentPosition!, radiusMeters);
                            unawaited(
                              mapController!.animateCamera(
                                CameraUpdate.newLatLngBounds(bounds, 40),
                              ),
                            );
                          },
                          initialCameraPosition: CameraPosition(
                            target: currentPosition!,
                            zoom: 12,
                          ),
                          myLocationEnabled: true,
                          markers: places.markers,
                          circles: {
                            Circle(
                              circleId: const CircleId('radius'),
                              center: currentPosition!,
                              radius: radiusMeters,
                              strokeWidth: 2,
                              strokeColor: Colors.blue,
                              fillColor: Colors.blue.withOpacity(0.15),
                            ),
                          },
                        ),
                      ),
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          itemCount: places.length,
                          itemBuilder: (context, index) => ListTile(
                            title: Text('${places[index].displayName}'),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              FoodMapStatus.error => const Center(child: Text('failed to load')),
              _ => const Center(child: CircularProgressIndicator()),
            };
          },
        ),
      ),
    );
  }
}

// Expanded(
//   flex: 3,
//   child: ListView.builder(
//     itemCount: restaurants.length,
//     itemBuilder: (context, i) {
//       final r = restaurants[i];
//       return ListTile(
//         title: Text(r['name'] ?? ''),
//         subtitle: Text(r['vicinity'] ?? ''),
//         trailing: Text(
//           r['rating'] != null ? r['rating'].toString() : '-',
//         ),
//       );
//     },
//   ),
// ),

LatLngBounds boundsFromCenterRadius(LatLng center, double radiusMeters) {
  // Earth's radius in meters
  const earthRadius = 6378137.0;

  // Angular distances in radians
  final latDelta = radiusMeters / earthRadius;
  final lngDelta = radiusMeters / (earthRadius * math.cos(center.latitude * math.pi / 180));

  final minLat = center.latitude - (latDelta * 180 / math.pi);
  final maxLat = center.latitude + (latDelta * 180 / math.pi);
  final minLng = center.longitude - (lngDelta * 180 / math.pi);
  final maxLng = center.longitude + (lngDelta * 180 / math.pi);

  return LatLngBounds(
    southwest: LatLng(minLat, minLng),
    northeast: LatLng(maxLat, maxLng),
  );
}
