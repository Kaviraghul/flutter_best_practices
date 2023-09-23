import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlatformInfo {
  static const _mobilePlatforms = [TargetPlatform.android, TargetPlatform.iOS];

  static double get pixelRatio => WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

  static bool get isMobile => _mobilePlatforms.contains(defaultTargetPlatform) && !kIsWeb;

  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  static bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
}
