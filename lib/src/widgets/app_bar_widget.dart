import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../../export_all.dart';

class CustomAppBar{

  static ObstructingPreferredSizeWidget  buildCupertinoNavigationBar({
  String? title,
  Color? backgroundColor,
  bool? automaticallyImplyLeading,
  bool? centerTitle,
  
  Widget? action,
}) {
  return CupertinoNavigationBar(
    middle: Text(title ?? ""),
    backgroundColor: backgroundColor ?? AppColors.kappBarBgColor, // Change to your desired color
    automaticallyImplyLeading: automaticallyImplyLeading ?? true,
    automaticallyImplyMiddle: centerTitle ?? true,
    trailing: action,
  );
}
static PreferredSizeWidget buildAppBar({
  String? title,
  TextStyle? titleStyle,
  Color? backgroundColor,
  double? elevation,
  bool? automaticallyImplyLeading,
  bool? centerTitle,
  List<Widget>? action, 
  
}) {
  return AppBar(
    
    backgroundColor: backgroundColor ?? AppColors.kappBarBgColor, // Change to your desired color
    elevation: elevation,
    automaticallyImplyLeading: automaticallyImplyLeading ?? true,
    centerTitle: centerTitle ?? false,
    title: Text(title ?? ""),
    titleTextStyle: titleStyle ?? const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Adjust to your style
    actions: action,
    
  );
}

static appBar(
  String? title,
  TextStyle? titleStyle,
  Color? backgroundColor,
  double? elevation,
  bool? automaticallyImplyLeading,
  bool? centerTitle,
  Widget? action,){
  Platform.isIOS
    ? CustomAppBar.buildCupertinoNavigationBar(
        title: title,
        backgroundColor: backgroundColor ?? Colors.red,
        automaticallyImplyLeading: automaticallyImplyLeading ?? true,
        centerTitle : centerTitle ?? false,
        action: action 
      )
    : CustomAppBar.buildAppBar(
        backgroundColor: backgroundColor ?? AppColors.kappBarBgColor, // Change to your desired color
    elevation: elevation,
    automaticallyImplyLeading: automaticallyImplyLeading ?? true,
    centerTitle: centerTitle ?? false,
    title: title ,
    titleStyle: titleStyle ?? const TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Adjust to your style
    action: [action ?? const SizedBox.shrink()]
        
      );
}
}