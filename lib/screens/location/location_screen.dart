import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
//import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class LocationScreen extends StatelessWidget {
  static const String routeName = '/location';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => LocationScreen(), 
      settings: RouteSettings(name: routeName),
      );
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: const GoogleMap(
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                10, 
                10,
              ), 
              zoom: 10),
          ),
          ),
        ],
      ),
      //appBar: AppBar(title: Text('Location')),
      //body: Center(
      //  child: ElevatedButton(
      //    child: Text('Home Screen'),
      //    onPressed: () {
      //      Navigator.pushNamed(context, '/');
      //    },
      //  ),
      //),
    );
  }
}