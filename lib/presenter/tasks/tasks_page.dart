import 'package:escola/presenter/tasks/widgets/body_tasks.dart';
import 'package:flutter/material.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' Inicio')),
      body: const BodyTasks(),
    );
  }
}
