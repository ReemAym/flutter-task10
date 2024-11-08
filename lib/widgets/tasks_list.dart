import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_data.dart';
import 'package:to_do_list/widgets/task_item.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Consumer<TaskData>(
          builder: (context, value, child) {
            return ListView.builder(
                itemCount: value.tasks?.length ?? 0,
                itemBuilder: (context, index) {
                  return TaskItem(
                    isChecked: value.tasks?[index].isDone ?? false,
                    taskName: value.tasks?[index].task ?? '',
                    checkBoxChange: (newvalue) {
                      value.updateTask(value.tasks![index]);
                    },
                    deleteTask: () {
                      value.deleteTask(value.tasks![index]);
                    },
                  );
                });
          },
        ),
      ),
    );
  }
}
