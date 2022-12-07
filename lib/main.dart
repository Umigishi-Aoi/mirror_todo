import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/mirror_todo.dart';

void main() {
  runApp(const ProviderScope(child: MirrorTodo()));
}
