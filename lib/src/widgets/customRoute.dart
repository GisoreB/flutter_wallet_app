import 'package:flutter/material.dart';

class CustomRoute<T> extends MaterialPageRoute<T> {
  CustomRoute({WidgetBuilder? builder, super.settings})
      : super(builder: builder!);
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.name != null) {
      return child;
    }
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}