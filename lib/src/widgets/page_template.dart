import 'dart:io';
import 'package:mvvm_project/export_all.dart';


class PageTemplate extends StatelessWidget {
  final String title;
  final Widget widget;

  const PageTemplate({
  super.key, 
  required this.title , 
  required this.widget});

  @override
  Widget build(BuildContext context) {
    return   CustomScaffoldWidget(
      
      
      appBar: CustomAppBar.appBar(title, null,Colors.red, null, null, null, null)
      // body: widget,/
    );
  }
}