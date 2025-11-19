import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lets_eat/data/api/endpoints.dart';
import 'package:lets_eat/data/api/rest_client.dart';
import 'package:lets_eat/data/models/place.dart';

class API {
  API([RestClient? client]) : _client = client ?? RestClient();
  final RestClient _client;

  Future<List<Place>> getNearbyRestaurants({required LatLng latLng, required double radius}) async {
    final places = <Place>[];
    String? pageToken;

    while (true) {
      final body = pageToken == null
          ? {
              'includedTypes': ['restaurant'],
              'maxResultCount': 20,
              'locationRestriction': {
                'circle': {
                  'center': {
                    'latitude': latLng.latitude,
                    'longitude': latLng.longitude,
                  },
                  'radius': 10000,
                },
              },
            }
          : {
              'pagetoken': pageToken,
            };

      final res = await _client.post(
        Endpoints.searchNearby,
        headers: {
          'X-Goog-FieldMask': 'places.id,places.displayName,places.location,nextPageToken',
        },
        data: body,
      );

      final placesJson = (res.data['places'] as List?)?.cast<Map<String, dynamic>>() ?? [];
      places.addAll(placesJson.map(Place.fromJson));

      pageToken = res.data['nextPageToken'] as String?;
      if (pageToken == null) break;
    }

    return places;
  }
}
