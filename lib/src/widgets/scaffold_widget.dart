import 'dart:io';
import 'package:flutter/cupertino.dart';

import '../../export_all.dart';


class CustomScaffoldWidget extends StatefulWidget {
  final Widget ? body;
  final Color? backgroundColor;
  
  final bool extendBodyBehindAppBar;
  final dynamic appBar;
  const CustomScaffoldWidget({super.key, this.body, this.backgroundColor, this.appBar, this.extendBodyBehindAppBar = true});
  @override
  State<CustomScaffoldWidget> createState() => _CustomScaffoldWidgetState();
}

class _CustomScaffoldWidgetState extends State<CustomScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? Scaffold(
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      backgroundColor: widget.backgroundColor,
      appBar:widget.appBar ,
      body: RemoveScrollGesture(child: widget.body ?? const SizedBox.shrink()) ,
    ) : CupertinoPageScaffold(
      backgroundColor: widget.backgroundColor,
      navigationBar:  widget.appBar ,
      child: RemoveScrollGesture(child: widget.body ?? const SizedBox.shrink()),
      
    );
  }
}