import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

DatabaseConnection connect() {
  return DatabaseConnection.delayed(
    Future(() async {
      final appDir = await getApplicationDocumentsDirectory();
      final dbPath = p.join(appDir.path, 'todos.db');

      return NativeDatabase.createBackgroundConnection(File(dbPath));
    }),
  );
}
