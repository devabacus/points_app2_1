import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import '../../features/tasks/data/datasources/local/category_table.dart';
import '../../features/tasks/data/datasources/local/relation_tables.dart';
import '../../features/tasks/data/datasources/local/tag_table.dart';
import '../../features/tasks/data/datasources/local/task_table.dart';

part 'database.g.dart';

@DriftDatabase(tables: [TaskTable, TaskTagMapTable, CategoryTable, TagTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? excutor]) : super(excutor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) {
      return m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      if (from < 2) {
        //await m.addColumn(taskItems, taskItems.createAt);
        //TODO
      }
    },
  );

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'points_app2');
  }
}
