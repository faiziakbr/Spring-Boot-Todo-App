
class TaskModel {
  final int id;
  final String title;
  final bool completed;

  TaskModel({
    required this.id,
    required this.title,
    required this.completed,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "completed": completed,
  };
}
