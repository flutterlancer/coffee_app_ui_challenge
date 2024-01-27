import 'package:flutter/material.dart';

class Assets {
  final String _homeAssets = "assets/images/home";
  final String _onboardingAssets = "assets/images/onboarding";

  // onboarding
  String get onboardingBg => "$_onboardingAssets/onboarding.png";

  // home
  String get filterIcon => "$_homeAssets/filter_icon.svg";
  String get searchIcon => "$_homeAssets/search_icon.svg";

  String get gridImage1 => "$_homeAssets/grid_image1.png";
  String get gridImage2 => "$_homeAssets/grid_image2.png";
  String get gridImage3 => "$_homeAssets/grid_image3.png";
  String get gridImage4 => "$_homeAssets/grid_image4.png";
}

extension AssetsExt on BuildContext {
  Assets get assets => Assets();
}
