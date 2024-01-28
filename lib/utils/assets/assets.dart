import 'package:flutter/material.dart';

class Assets {
  final String _homeAssets = "assets/images/home";
  final String _onboardingAssets = "assets/images/onboarding";
  final String _orderPageAssets = "assets/images/product";
  final String _globalAssets = "assets/images/global";

  // onboarding
  String get onboardingBg => "$_onboardingAssets/onboarding.png";

  // home
  String get arrowDownIcon => "$_homeAssets/arrow_down_icon.svg";
  String get filterIcon => "$_homeAssets/filter_icon.svg";
  String get searchIcon => "$_homeAssets/search_icon.svg";

  String get profileImage => "$_homeAssets/profile_image.png";
  String get homePromoImage => "$_homeAssets/home_promo.png";
  String get gridImage1 => "$_homeAssets/grid_image1.png";
  String get gridImage2 => "$_homeAssets/grid_image2.png";
  String get gridImage3 => "$_homeAssets/grid_image3.png";
  String get gridImage4 => "$_homeAssets/grid_image4.png";

  // order page
  String get editIcon => "$_orderPageAssets/edit_icon.svg";
  String get noteIcon => "$_orderPageAssets/note_icon.svg";

  // global
  String get backIcon => "$_globalAssets/back_icon.svg";
  String get wishlistIcon => "$_globalAssets/wishlist_icon.svg";
  String get coffeeBean => "$_globalAssets/coffee_bean.png";
  String get milk => "$_globalAssets/milk.png";
}

extension AssetsExt on BuildContext {
  Assets get assets => Assets();
}
