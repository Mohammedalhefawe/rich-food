// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:latlong2/latlong.dart';

// class MyMapScreen extends StatefulWidget {
//   const MyMapScreen({super.key});

//   @override
//   _MyMapScreenState createState() => _MyMapScreenState();
// }

// class _MyMapScreenState extends State<MyMapScreen> {
//   late MapController mapController;
//   LatLng currentPoint =
//       const LatLng(50.110936, 8.682159); // Initial current location
//   LatLng startPoint = const LatLng(52.520008, 13.405007); // Start point
//   LatLng endPoint = const LatLng(48.856614, 2.352222); // End point
//   List<LatLng> path = []; // List to hold the path

//   @override
//   void initState() {
//     super.initState();
//     mapController = MapController();
//     _getCurrentLocation();
//     _setPath(); // Set the path for the polyline
//   }

//   Future<void> _getCurrentLocation() async {
//     // Request location permission
//     await Geolocator.requestPermission();

//     // Listen for location changes
//     Geolocator.getPositionStream().listen((Position position) {
//       setState(() {
//         currentPoint = LatLng(position.latitude, position.longitude);
//         mapController.move(currentPoint, mapController.camera.zoom);
//       });
//     });
//   }

//   void _setPath() {
//     // Define a realistic path (you can replace this with actual routing data)
//     path = [
//       startPoint,
//       const LatLng(51.1657, 10.4515), // Intermediate point
//       const LatLng(50.9375, 6.9603), // Another intermediate point
//       endPoint,
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Leaflet Map'),
//       ),
//       body: FlutterMap(
//         mapController: mapController,
//         options: MapOptions(
//           initialCenter: currentPoint,
//           initialZoom: 6,
//         ),
//         children: [
//           TileLayer(
//             urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//             userAgentPackageName: 'com.example.app',
//           ),
//           MarkerLayer(
//             markers: [
//               Marker(
//                 point: startPoint,
//                 child: const Icon(Icons.place, color: Colors.green),
//               ),
//               Marker(
//                 point: endPoint,
//                 child: const Icon(Icons.location_on, color: Colors.red),
//               ),
//               Marker(
//                 point: currentPoint,
//                 child: const Icon(Icons.car_crash, color: Colors.blue),
//               ),
//             ],
//           ),
//           PolylineLayer(
//             polylines: [
//               Polyline(
//                 points: path,
//                 strokeWidth: 4.0,
//                 color: Colors.amber,
//               ),
//             ],
//           ),
//         ],
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               mapController.move(currentPoint, mapController.camera.zoom + 1);
//             },
//             child: const Icon(Icons.add),
//           ),
//           const SizedBox(width: 16),
//           FloatingActionButton(
//             onPressed: () {
//               mapController.move(currentPoint, mapController.camera.zoom - 1);
//             },
//             child: const Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }
