import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/constants/constants.dart';
import 'src/data/todos.dart';
import 'src/mirror_todo.dart';
import 'src/providers.dart';

void main() async {
  final pref = await SharedPreferences.getInstance();

  final initialized = pref.getBool(kLaunchedKey) ?? false;

  final database = TodoDatabase();

  if (!initialized) {
    await database.init();
    await pref.setBool(kLaunchedKey, true);
  }

  runApp(
    ProviderScope(
      overrides: [
        todoDatabaseProvider.overrideWithValue(database),
      ],
      child: const MirrorTodo(),
    ),
  );
}
