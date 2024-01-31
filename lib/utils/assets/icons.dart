import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcons {
  final addIcon = const Icon(Icons.add, color: Colors.white);
  final addIconBlack = const Icon(Icons.add);
  final minusIcon = const Icon(CupertinoIcons.minus);
  final cupertinoForwardIcon = const Icon(CupertinoIcons.forward);
}

extension IconsExt on BuildContext {
  AppIcons get icons => AppIcons();
}
