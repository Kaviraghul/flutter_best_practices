import 'package:flutter/cupertino.dart';
import 'package:flutter_best_practices/app/utils/platform_info.dart';

class AppScrollBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const BouncingScrollPhysics();

  @override
  Widget buildScrollbar(
      BuildContext context, Widget child, ScrollableDetails details) {
    return PlatformInfo.isAndroid
        ? RawScrollbar(controller: details.controller, child: child)
        : CupertinoScrollbar(controller: details.controller, child: child);
  }
}
