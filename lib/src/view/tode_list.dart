import 'package:flutter/material.dart';
import 'package:mvvm_project/src/widgets/page_template.dart';
 

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {

    return PageTemplate(
        title: 'Todo list'.toUpperCase(),
        widget: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) =>   ListTile(
              title: const  Text('title'),
              subtitle: const  Text('Subtitle'),
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                 const  PopupMenuItem(
                    value: 'edit',
                    child: Text('EDIT')),
                  const  PopupMenuItem(
                    value: 'delete',
                    child: Text('DELETE'))
                ],
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(
              height: 10,
            ),
            itemCount: 3));
  }
}
