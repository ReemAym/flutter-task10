class TaskModel {
  final String task;
  bool isDone;

  TaskModel({
    required this.task,
    this.isDone = false,
  });

  void changeDone() {
    isDone = !isDone;
  }
}
