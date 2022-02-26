import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskdata, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TasksTile(
              tasktitle: taskdata.tasks[index].name,
              isChecked: taskdata.tasks[index].isDone,
              CheckBoxCallBack: (checkBoxState) {
                taskdata.updateTask(taskdata.tasks[index]);
              });
        },
        itemCount: taskdata.taskCount,
      );
    });
  }
}
