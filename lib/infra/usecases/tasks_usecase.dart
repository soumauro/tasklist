import 'dart:io';

import 'package:escola/infra/models/response_model.dart';
import 'package:escola/infra/models/task_model.dart';
import 'package:escola/infra/repositories/tasks_repository.dart';

class TasksUsecase {
  final TasksRepository _repository;

  TasksUsecase(this._repository);

  Future<ResponseModel<List<TaskModel>>> getAllTasks() async {
    try {
      return await _repository.getAllTasks();
    } on SocketException {
      return ResponseModel(isSuccess: false, message: 'Sem conexão');
    } catch (e) {
      return ResponseModel(isSuccess: false, message: "Erro desconhecido: $e");
    }
  }
}
