import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lets_eat/data/models/place.dart';

extension PlaceListToMarkers on List<Place> {
  Set<Marker> get markers => map((p) {
    return Marker(
      markerId: MarkerId(p.id),
      position: LatLng(
        p.location.latitude,
        p.location.longitude,
      ),
      infoWindow: InfoWindow(
        title: p.displayName.text,
      ),
    );
  }).toSet();
}
