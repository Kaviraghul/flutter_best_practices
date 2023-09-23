import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_best_practices/app/behaviours/scroll_behaviour.dart';
import 'package:flutter_best_practices/app/logics/app_logic.dart';
import 'package:flutter_best_practices/main.dart';
import 'package:flutter_best_practices/presentation/resources/style_manager.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  const AppScaffold({required this.child, super.key});

  static AppStyle get style => _appStyle;
  static AppStyle _appStyle = AppStyle();

  @override
  Widget build(BuildContext context) {
    // Listen to the device size, and update AppStyle when it changes
    MediaQuery.of(context);
    AppLogic().handleAppSizeChanged();
    Animate.defaultDuration = _appStyle.times.fast;
    // Create a style object that will be passed down the widget tree
    _appStyle = AppStyle(screenSize: context.size);
    return KeyedSubtree(
      key: ValueKey($styles.scale),
      child: Theme(
        data: $styles.colors.getThemeData(),
        child: DefaultTextStyle(
          style: $styles.text.body,
          child: ScrollConfiguration(
            behavior: AppScrollBehavior(),
            child: child,
          ),
        ),
      ),
    );
  }
}
