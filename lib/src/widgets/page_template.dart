import 'package:flutter/material.dart';
import 'package:mvvm_project/export_all.dart';
import 'package:mvvm_project/src/utils/style.dart';

class PageTemplate extends StatelessWidget {
  final String title;
  final Widget widget;

  const PageTemplate({
  super.key, 
  required this.title , 
  required this.widget});

  @override
  Widget build(BuildContext context) {
    return const  CustomScaffoldWidget(
      body: Center(
        child: Text('Page'),
      ),
    );
  }
}