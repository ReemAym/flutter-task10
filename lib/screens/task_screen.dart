import 'package:flutter/material.dart';
import 'package:to_do_list/models/task_data.dart';
import 'package:to_do_list/widgets/add_task.dart';
import 'package:to_do_list/widgets/custom_appbar.dart';
import 'package:to_do_list/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: Container(
                        child: AddTask(),
                      )),
                );
              });
        },
        backgroundColor: Colors.indigoAccent[400],
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue[700]!, Colors.indigo[900]!],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 16,
            left: 16,
            top: 24,
            bottom: 32,
          ),
          child: Column(
            children: [
              CustomAppBar(
                numTasks: Provider.of<TaskData>(context).tasks?.length ?? 0,
              ),
              const SizedBox(
                height: 20,
              ),
              TasksList(),
            ],
          ),
        ),
      ),
    );
  }
}
