import 'package:drift/drift.dart';
import 'package:points_app2/features/tasks/data/datasources/local/tag_table.dart';
import 'package:points_app2/features/tasks/data/datasources/local/task_table.dart';

class TaskTagMapTable extends Table {
  IntColumn get taskId => integer().references(TaskTable, #id)();
  IntColumn get tagId => integer().references(TagTable, #id)();

  @override
  Set<Column> get primaryKey => {taskId, tagId};
}
