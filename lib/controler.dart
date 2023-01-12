import 'package:escola/presenter/api_endpoits.dart';
import 'package:escola/presenter/modele_controler.dart';
import 'package:get/get.dart';

class Controler extends GetxController {
  final taskList = <TaskModel>[];

  void adiccionar(int index) {
    taskList[index].isComplete = !taskList[index].isComplete!;
    update();
  }

  callGetTaskes() {
    GetTaskes().gettallTaskes().then((value) => {
          for (var i in value) {taskList.add(TaskModel.fromMap(i))},
        });
    update();
  }

  void deleteTask(int index) {
    taskList.removeAt(index);
    //GetTaskes().delete("$getTaskes/$index");
    update();
  }
}

class GetTaskes extends GetConnect {
  Future<List> gettallTaskes() async {
    final response = await get(getTaskes);

    return response.body;
  }
}
