import 'dart:io';
import 'package:flutter/cupertino.dart';

import '../../export_all.dart';


class CustomScaffoldWidget extends StatefulWidget {
  final Widget ? body;
  final Color? backgroundColor;
  final String? title;
  final TextStyle? titleStyle;
  final double? elevation;
  final bool? centerTitle;
  final Color? appBarbackgroundColor;
  final bool ? automaticallyImplyLeading;
  final bool? automaticallyImplyMiddle ;
  final Widget? leading;
  final Widget? action;
  final bool extendBodyBehindAppBar;
  final PreferredSizeWidget? appBar;
  const CustomScaffoldWidget({super.key, this.body, this.backgroundColor, this.action, this.appBarbackgroundColor, this.automaticallyImplyLeading, this.automaticallyImplyMiddle, this.centerTitle, this.elevation, this.title, this.titleStyle,this.leading, this.appBar, this.extendBodyBehindAppBar = false});

  @override
  State<CustomScaffoldWidget> createState() => _CustomScaffoldWidgetState();
}

class _CustomScaffoldWidgetState extends State<CustomScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? Scaffold(
      extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
      backgroundColor: widget.backgroundColor,
      appBar:widget.appBar ?? AppBar(
      leading: widget.leading,
      backgroundColor: widget.appBarbackgroundColor ?? AppColors.kappBarBgColor,
      elevation: widget.elevation,
      automaticallyImplyLeading: widget.automaticallyImplyLeading ?? true,
      centerTitle: widget.centerTitle ?? false,
      title: Text(widget.title ?? "") ,
      titleTextStyle: widget.titleStyle ?? AppStyle.titleStyle,
      actions:  [widget.action ?? const SizedBox.shrink()],

    ),
      body: RemoveScrollGesture(child: widget.body ?? const SizedBox.shrink()) ,
    ) : CupertinoPageScaffold(
      backgroundColor: widget.backgroundColor,
      navigationBar:  CupertinoNavigationBar(
      middle:Text(widget.title ?? "",style: widget.titleStyle ?? AppStyle.titleStyle,) ,
      leading: widget.leading,
      backgroundColor:widget.backgroundColor ?? AppColors.kappBarBgColor,
      automaticallyImplyLeading: widget.automaticallyImplyLeading ?? true,
      automaticallyImplyMiddle: widget.automaticallyImplyMiddle ?? true,
      trailing: widget.action ,

    ),
      child: RemoveScrollGesture(child: widget.body ?? const SizedBox.shrink()),
      
    );
  }
}