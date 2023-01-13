import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({
    Key? key,
    required this.deleteTask,
    required this.setIsComplete,
    required this.title,
    required this.description,
    required this.isComplete,
  }) : super(key: key);

  final Function() deleteTask;
  final Function() setIsComplete;
  final String title;
  final String description;
  final bool isComplete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: deleteTask,
        icon: const Icon(
          Icons.delete,
          color: Colors.red,
        ),
      ),
      title: Text(title),
      subtitle: Text(description),
      trailing: Checkbox(
        value: isComplete,
        onChanged: (val) => setIsComplete(),
      ),
    );
  }
}
