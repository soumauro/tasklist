class TaskModel {
  String? createdAt;
  String? title;
  String? description;
  String? id;
  bool? isComplete;
  TaskModel(
      this.createdAt, this.title, this.description, this.id, this.isComplete);

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(map['createdAt'], map['title'], map['description'],
        map['id'], map['isComplete']);
  }

  Map<String, dynamic> toMap() {
    return {
      'createdAt': createdAt,
      'title': title,
      'description': description,
      'id': id,
      'isComplete': isComplete
    };
  }
}
