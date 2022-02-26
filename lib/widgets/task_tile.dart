import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final void Function(bool?)? CheckBoxCallBack;
  TasksTile(
      {required this.tasktitle,
      required this.isChecked,
      required this.CheckBoxCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: CheckBoxCallBack,
      ),
    );
  }
}
