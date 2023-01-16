import 'package:escola/infra/models/response_model.dart';
import 'package:escola/infra/models/task_model.dart';
import 'package:get/get.dart';

import '../api_endpoints.dart';

abstract class TasksRepository {
  Future<ResponseModel<List<TaskModel>>> getAllTasks();
}

class TasksRepositoryImpl implements TasksRepository {
  final GetConnect _connect;
  TasksRepositoryImpl(this._connect);

  @override
  Future<ResponseModel<List<TaskModel>>> getAllTasks() async {
    final response = await _connect.get(ApiEndpoints.tasks);

    if (response.isOk) {
      return ResponseModel.success(
        response.body.map<TaskModel>((map) {
          return TaskModel.fromMap(map);
        }).toList(),
      );
    }

    return ResponseModel.error("Não deu certo!");
  }
}

class TasksRepositoryDioImpl implements TasksRepository {
  final GetConnect _connect;
  TasksRepositoryDioImpl(this._connect);

  @override
  Future<ResponseModel<List<TaskModel>>> getAllTasks() async {
    final response = await _connect.get(ApiEndpoints.tasks);

    if (response.isOk) {
      return ResponseModel.success(
        response.body.map<TaskModel>((map) {
          return TaskModel.fromMap(map);
        }).toList(),
      );
    }

    return ResponseModel.error("Não deu certo!");
  }
}
