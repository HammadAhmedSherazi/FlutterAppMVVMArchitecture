import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../../export_all.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String? title;
  final TextStyle? titleStyle;
  final double? elevation;
  final bool? centerTitle;
  final Color? backgroundColor;
  final bool ? automaticallyImplyLeading;
  final Widget? action;
  const CustomAppBarWidget({super.key, this.title, this.automaticallyImplyLeading,  this.centerTitle, this.titleStyle, this.action, this.backgroundColor, this.elevation});

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ? AppBar(
      backgroundColor: backgroundColor ?? AppColors.kappBarBgColor,
      elevation: elevation,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      centerTitle: centerTitle ?? false,
      title: Text(title ?? "") ,
      titleTextStyle: titleStyle ?? AppStyle.titleStyle,
      actions:  [action ?? const SizedBox.shrink()],

    ) :  CupertinoNavigationBar(
      middle:Text(title ?? "") , 
      backgroundColor:backgroundColor ?? AppColors.kappBarBgColor,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      automaticallyImplyMiddle: centerTitle ?? false,
      trailing: action ,

    );
  }
}