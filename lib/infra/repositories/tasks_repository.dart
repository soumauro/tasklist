import 'package:escola/infra/models/response_model.dart';
import 'package:escola/infra/models/task_model.dart';
import 'package:get/get.dart';

import '../api_endpoints.dart';

class TasksRepository {
  final GetConnect _connect;
  TasksRepository(this._connect);

  Future<ResponseModel<List<TaskModel>>> getAllTasks() async {
    final response = await _connect.get(ApiEndpoints.tasks);

    if (response.isOk) {
      return ResponseModel(
        data: response.body.map<TaskModel>((map) {
          return TaskModel.fromMap(map);
        }).toList(),
      );
    }

    return ResponseModel(message: "Não deu certo!", isSuccess: false);
  }
}
