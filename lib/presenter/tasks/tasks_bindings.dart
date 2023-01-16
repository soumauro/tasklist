import 'package:escola/infra/repositories/tasks_repository.dart';
import 'package:escola/infra/usecases/tasks_usecase.dart';
import 'package:escola/presenter/tasks/tasks_controller.dart';
import 'package:get/get.dart';

class TasksBindings implements Bindings {
  @override
  void dependencies() {
    // Sempre depender de uma abstração ( abstract class )
    // E não de uma implementação ( class )

    Get.lazyPut<TasksRepository>(
      () => TasksRepositoryImpl(
        Get.find(),
      ),
    );

    Get.lazyPut<TasksUsecase>(
      () => TasksUsecaseImpl(
        Get.find(),
      ),
    );

    Get.put(
      TasksController(
        Get.find(),
      ),
    );
  }
}
