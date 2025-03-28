import 'package:freezed_annotation/freezed_annotation.dart';
import '../category/category_model.dart';
import '../tag/tag_model.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int id,
    required String title,
    required String description,
    required CategoryModel category,
    required List<TagModel> tags,
    required int duration,
    required DateTime dueDateTime,
    required DateTime createdAt,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);
}
