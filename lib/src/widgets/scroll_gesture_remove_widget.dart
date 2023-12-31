import 'package:flutter/material.dart';

class RemoveScrollGesture extends StatelessWidget {
  final Widget child;
  const RemoveScrollGesture({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: child);
  }
}
