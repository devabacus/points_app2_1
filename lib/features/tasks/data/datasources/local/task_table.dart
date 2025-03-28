import 'package:drift/drift.dart';
import 'package:points_app2/features/tasks/data/datasources/local/category_table.dart';

class TaskTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get categoryId => integer().references(CategoryTable, #id)();
  IntColumn get duration => integer()();
  DateTimeColumn get dueDateTime => dateTime()();
  DateTimeColumn get createdAt => dateTime()();
}

