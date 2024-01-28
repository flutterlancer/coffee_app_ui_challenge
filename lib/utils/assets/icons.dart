import 'package:flutter/material.dart';

class AppIcons {
  final addIcon = const Icon(Icons.add, color: Colors.white);
}

extension IconsExt on BuildContext {
  AppIcons get icons => AppIcons();
}
