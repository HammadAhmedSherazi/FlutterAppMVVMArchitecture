import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationService{

  static final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  // static NavigationService instance =  
  // NavigationService();

  // NavigationService(){
  //   navigationKey = GlobalKey<NavigatorState>();
  // }

  
 

  navigate(Widget page){
    return navigationKey.currentState!.push(Platform.isAndroid ? MaterialPageRoute(builder: (context)=> page): CupertinoPageRoute(builder: (context) => page,));
  }

  pushAndRemoveUntil(Widget page){
    return navigationKey.currentState!.pushAndRemoveUntil(Platform.isAndroid ? MaterialPageRoute(builder: (context)=> page): CupertinoPageRoute(builder: (context) => page,), (route) => false,);
  }
   
  back(){
    return navigationKey.currentState!.pop();
  }

}