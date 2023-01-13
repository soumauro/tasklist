import 'package:escola/infra/usecases/tasks_usecase.dart';
import 'package:get/get.dart';

import '../../infra/models/task_model.dart';

class TasksController extends GetxController {
  final TasksUsecase _tasksUsecase;
  TasksController(this._tasksUsecase);

  @override
  void onReady() {
    super.onReady();

    getAllTasks();
  }

  List<TaskModel> tasks = [];
  Future<void> getAllTasks() async {
    final response = await _tasksUsecase.getAllTasks();

    if (response.isSuccess) {
      tasks = response.data ?? [];
    } else {
      Get.snackbar("Não deu certo", response.message);
    }

    update();
  }

  void setIsComplete(int index) {
    tasks[index].isComplete = !tasks[index].isComplete;
    update();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    update();
  }
}
