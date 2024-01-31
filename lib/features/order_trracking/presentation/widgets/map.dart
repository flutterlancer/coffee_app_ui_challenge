import 'dart:async';
import 'dart:developer';

import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => MapWidgetState();
}

class MapWidgetState extends State<MapWidget> {
  late GoogleMapController mapController;

  // final LatLng _center = const LatLng(45.521563, -122.677433);

  // void _onMapCreated(GoogleMapController controller) async {
  //   try {
  //     mapController = controller;
  //     final mapStyle = await rootBundle.loadString(context.assets.mapStyle);
  //     await mapController.setMapStyle(mapStyle);
  //   } catch (e) {
  //     log("exp: $e");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Text(
          "My Google Map was unable to load because I have not set my API kye's pricing in Google Console since I don't have a credit card for now!",
          style: context.theme.textTheme.homeProductGridItemTitle(context),
          textAlign: TextAlign.center,
        ),
      ),
    );
    //  GoogleMap(
    //   onMapCreated: _onMapCreated,
    //   initialCameraPosition: CameraPosition(
    //     target: _center,
    //   ),
    //   onLongPress: (argument) => log("${argument.latitude}"),
    // );
  }
}
