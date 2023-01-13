import 'package:escola/infra/repositories/tasks_repository.dart';
import 'package:escola/infra/usecases/tasks_usecase.dart';
import 'package:escola/presenter/tasks/tasks_controller.dart';
import 'package:get/get.dart';

class TasksBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TasksRepository(Get.find()));
    Get.lazyPut(() => TasksUsecase(Get.find()));
    Get.put(TasksController(Get.find()));
  }
}
