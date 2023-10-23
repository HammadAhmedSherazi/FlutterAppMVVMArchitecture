import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:mvvm_project/src/view/tode_list.dart';

import 'export_all.dart';


void main() {
  runApp(const  MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,

      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
        return Platform.isIOS ? CupertinoApp(
          debugShowCheckedModeBanner: false,
            
      title: 'Flutter Demo',
      navigatorKey: NavigationService.navigationKey,
      
     home: const TodoList(),
    ) : const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoList(),
    );
      },
     
    ) ;
  }
}

