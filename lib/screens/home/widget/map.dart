import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mobile/screens/home/controller/home.dart';
import "package:latlong2/latlong.dart" as latlng;
import 'package:mobile/screens/home/widget/my_location_active.dart';
import 'package:mobile/screens/home/widget/my_location_marker.dart';

const MAPBOX_ACCESS_TOKEN =
    'pk.eyJ1IjoiYjE3MDY1OTEiLCJhIjoiY2t6c2I1ZHdjMDNxdTJubWhuODZkempuMSJ9.KHzI0ukWU4bqpNXbZE-eXw';
const MAPBOX_STYLE = 'mapbox.mapbox-streets-v8';
const MAPBOX_URL =
    'https://api.mapbox.com/styles/v1/b1706591/ckztm5mcv000o14o3ie0tj3s9/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYjE3MDY1OTEiLCJhIjoiY2t6c2I1ZHdjMDNxdTJubWhuODZkempuMSJ9.KHzI0ukWU4bqpNXbZE-eXw';

const MAPBOX_URL1 =
    'https://api.mapbox.com/styles/v1/b1706591/ckztlmaz6002v14qmwu2bt4ju/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYjE3MDY1OTEiLCJhIjoiY2t6c2I1ZHdjMDNxdTJubWhuODZkempuMSJ9.KHzI0ukWU4bqpNXbZE-eXw';

const MAPBOX_URL2 =
    "https://api.mapbox.com/styles/v1/b1706591/ckztm37mv002014o6o9ne7vyo/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYjE3MDY1OTEiLCJhIjoiY2t6c2I1ZHdjMDNxdTJubWhuODZkempuMSJ9.KHzI0ukWU4bqpNXbZE-eXw";
const MAPBOX_URL3 =
    "https://api.mapbox.com/styles/v1/b1706591/ckzscv73o004314jyof659dcu/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYjE3MDY1OTEiLCJhIjoiY2t6c2I1ZHdjMDNxdTJubWhuODZkempuMSJ9.KHzI0ukWU4bqpNXbZE-eXw";

class CustomMap extends StatelessWidget {
  const CustomMap({Key? key, required this.controller}) : super(key: key);
  final HomeController controller;
  //130

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: latlng.LatLng(
          controller.model.currentPosition?.latitude ?? 51.5,
          controller.model.currentPosition?.longitude ?? -0.09,
        ),
        // zoom: 6.0,
        zoom: 14,
        interactiveFlags: InteractiveFlag.drag |
            InteractiveFlag.flingAnimation |
            InteractiveFlag.pinchZoom,
        onTap: controller.onMapTap,
      ),
      layers: [
        TileLayerOptions(
          urlTemplate: MAPBOX_URL2,
          additionalOptions: {
            'accessToken': MAPBOX_ACCESS_TOKEN,
            'id': MAPBOX_STYLE,
          },
          // fastReplace: true,
          // backgroundColor: hexToColor('#919191'),
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 200.0,
              height: 200.0,
              point: latlng.LatLng(
                controller.model.currentPosition?.latitude ?? 51.5,
                controller.model.currentPosition?.longitude ?? -0.09,
              ),
              builder: (ctx) => MyLocationMarkerActive(
                controller.animationController,
                controller: controller,
              ),
            ),
          ],
        ),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 100.0,
              height: 100.0,
              point: latlng.LatLng(
                controller.model.currentPosition?.latitude ?? 51.5,
                controller.model.currentPosition?.longitude ?? -0.09,
              ),
              builder: (ctx) => MyLocationMarker(controller: controller),
            ),
          ],
        ),
        // MarkerLayerOptions(
        //   markers: [
        //     Marker(
        //       width: 130.0,
        //       height: 130.0,
        //       point: latlng.LatLng(
        //         controller.model.currentPosition?.latitude ?? 51.5,
        //         controller.model.currentPosition?.longitude ?? -0.09,
        //       ),
        //       builder: (ctx) => _UserLocationMarker(controller: controller,),
        //     ),
        //   ],
        // )
      ],
    );
  }
}
