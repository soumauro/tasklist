import 'dart:convert';

class TaskModel {
  final String createdAt;
  final String title;
  final String description;
  final String id;
  bool isComplete;

  TaskModel({
    required this.createdAt,
    required this.title,
    required this.description,
    required this.id,
    this.isComplete = false,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'createdAt': createdAt});
    result.addAll({'title': title});
    result.addAll({'description': description});
    result.addAll({'id': id});
    result.addAll({'isComplete': isComplete});
  
    return result;
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      createdAt: map['createdAt'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      id: map['id'] ?? '',
      isComplete: map['isComplete'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) => TaskModel.fromMap(json.decode(source));
}
