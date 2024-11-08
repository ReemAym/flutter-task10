import 'package:flutter/material.dart';

import 'custom_check_box.dart';

class TaskItem extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final void Function(bool?) checkBoxChange;
  final void Function() deleteTask;

  const TaskItem({
    super.key,
    required this.isChecked,
    required this.taskName,
    required this.checkBoxChange,
    required this.deleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        deleteTask();
      },
      background: Container(
        color: Colors.redAccent,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Icon(
          Icons.delete_forever,
          color: Colors.white,
          size: 30,
        ),
      ),
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          title: Text(
            taskName,
            style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: CustomCheckBox(
            onChanged: checkBoxChange,
            checkedBoxState: isChecked,
          ),
        ),
      ),
    );
  }
}
