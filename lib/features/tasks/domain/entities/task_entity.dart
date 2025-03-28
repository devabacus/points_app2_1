import 'package:equatable/equatable.dart';
import 'package:points_app2/features/tasks/domain/entities/category_entity.dart';
import 'package:points_app2/features/tasks/domain/entities/tag_entity.dart';


class TaskEntity extends Equatable {
  final int id;
  final String title;
  final String description;
  final CategoryEntity category;
  final List<TagEntity> tags;
  final int duration;
  final DateTime dueDateTime;
  final DateTime createdAt;

  const TaskEntity({required this.id, required this.title, required this.description, required this.category, required this.tags, required this.duration, required this.dueDateTime, required this.createdAt});


  @override
  List<Object?> get props => [id, title, description, category, tags, duration, dueDateTime, createdAt];
}
