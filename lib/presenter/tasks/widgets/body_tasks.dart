import 'package:escola/presenter/tasks/widgets/task_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../tasks_controller.dart';

class BodyTasks extends StatelessWidget {
  const BodyTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GetBuilder<TasksController>(
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.tasks.length,
            itemBuilder: (context, index) {
              final task = controller.tasks[index];
              return TaskItemWidget(
                title: task.title,
                description: task.description,
                isComplete: task.isComplete,
                deleteTask: () => controller.deleteTask(index),
                setIsComplete: () => controller.setIsComplete(index),
              );
            },
          );
        },
      ),
    );
  }
}
