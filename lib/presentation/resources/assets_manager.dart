// predefined paths
import 'package:flutter_best_practices/data/local/app_types.dart';

const String _common = 'assets/png';
const String _marvel = '$_common/marvel';
const String _pokemon = '$_common/pokemon';
const String _powerRangers = '$_common/power_rangers';

// Png Image paths
class PngImage {
  //onboarding assets
  static String ironMan = '$_marvel/iron_man.png';
  static String ashPikachu = '$_pokemon/ash_pikachu.png';
  static String redRanger = '$_powerRangers/red_ranger.png';
}

// Svg Image paths
class SvgImage {}

/// for app specific asset we add extension to [AppType] for easy look up

extension AppAssetExtension on AppType {
  String get assetPath {
    switch (this) {
      case AppType.marvel:
        return _marvel;
      case AppType.pokemon:
        return _pokemon;
      case AppType.powerRanger:
        return _powerRangers;
    }
  }
}
