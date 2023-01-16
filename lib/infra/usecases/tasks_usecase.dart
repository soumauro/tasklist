import 'dart:io';

import 'package:escola/infra/models/response_model.dart';
import 'package:escola/infra/models/task_model.dart';
import 'package:escola/infra/repositories/tasks_repository.dart';

abstract class TasksUsecase {
  Future<ResponseModel<List<TaskModel>>> getAllTasks();
}

class TasksUsecaseImpl implements TasksUsecase {
  final TasksRepository _repository;

  TasksUsecaseImpl(this._repository);

  @override
  Future<ResponseModel<List<TaskModel>>> getAllTasks() async {
    try {
      return await _repository.getAllTasks();
    } on SocketException {
      return ResponseModel.warning('Sem conexão');
    } catch (e) {
      return ResponseModel.error("Erro desconhecido: $e");
    }
  }
}
