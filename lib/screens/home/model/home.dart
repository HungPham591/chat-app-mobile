import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobile/screens/base/model/base_model.dart';

class HomeModel extends BaseModel {
  List<Marker>? listMarker;
  Position? currentPosition;
  double maximumZoom = 14;
  double minimumZoom = 6;
  bool isMaximumZoom = false;
  bool isMapReady = false;
  Set<Marker> markers = {};
}
