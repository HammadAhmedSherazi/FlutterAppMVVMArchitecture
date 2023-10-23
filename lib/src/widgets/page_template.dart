import 'dart:io';
import 'package:mvvm_project/export_all.dart';


class PageTemplate extends StatelessWidget {
  final String title;
  final Widget widget;
  final Widget ? action;


  const PageTemplate({
  super.key, 
  required this.title , 
  required this.widget,
  this.action
  });

  @override
  Widget build(BuildContext context) {
    return   CustomScaffoldWidget(
      
      
      appBar:Platform.isAndroid ? CustomAppBar.buildAppBar(
        title: title,
        backgroundColor: Colors.red,
        centerTitle: true,
        action:[action ?? const SizedBox.shrink()]
      ): null,
      navigationBar: Platform.isIOS ? CustomAppBar.buildCupertinoNavigationBar(
        backgroundColor: Colors.red,
        centerTitle: true
        
      ) : null,
      body: widget,
                 );
  }
}