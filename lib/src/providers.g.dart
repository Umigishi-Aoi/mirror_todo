// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String $todoDatabaseHash() => r'0bea9eb9115dee3321011b305ecde7fb595dfb53';

/// See also [todoDatabase].
final todoDatabaseProvider = AutoDisposeProvider<TodoDatabase>(
  todoDatabase,
  name: r'todoDatabaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $todoDatabaseHash,
);
typedef TodoDatabaseRef = AutoDisposeProviderRef<TodoDatabase>;
String $todoRepositoryHash() => r'cbe9f5b08890b57d803552c193129b5d090392f6';

/// See also [todoRepository].
final todoRepositoryProvider = AutoDisposeProvider<TodoRepository>(
  todoRepository,
  name: r'todoRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $todoRepositoryHash,
);
typedef TodoRepositoryRef = AutoDisposeProviderRef<TodoRepository>;
String $todoListHash() => r'5cbf0da391035a2893b2004ec45784bcc5213562';

/// See also [todoList].
final todoListProvider = AutoDisposeFutureProvider<List<TodoDto>>(
  todoList,
  name: r'todoListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : $todoListHash,
);
typedef TodoListRef = AutoDisposeFutureProviderRef<List<TodoDto>>;