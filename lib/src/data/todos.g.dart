// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// ignore_for_file: type=lint
class Todo extends DataClass implements Insertable<Todo> {
  final int id;
  final String todo;
  const Todo({required this.id, required this.todo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['todo'] = Variable<String>(todo);
    return map;
  }

  TodosCompanion toCompanion(bool nullToAbsent) {
    return TodosCompanion(
      id: Value(id),
      todo: Value(todo),
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Todo(
      id: serializer.fromJson<int>(json['id']),
      todo: serializer.fromJson<String>(json['todo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'todo': serializer.toJson<String>(todo),
    };
  }

  Todo copyWith({int? id, String? todo}) => Todo(
        id: id ?? this.id,
        todo: todo ?? this.todo,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('todo: $todo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, todo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo && other.id == this.id && other.todo == this.todo);
}

class TodosCompanion extends UpdateCompanion<Todo> {
  final Value<int> id;
  final Value<String> todo;
  const TodosCompanion({
    this.id = const Value.absent(),
    this.todo = const Value.absent(),
  });
  TodosCompanion.insert({
    this.id = const Value.absent(),
    required String todo,
  }) : todo = Value(todo);
  static Insertable<Todo> custom({
    Expression<int>? id,
    Expression<String>? todo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (todo != null) 'todo': todo,
    });
  }

  TodosCompanion copyWith({Value<int>? id, Value<String>? todo}) {
    return TodosCompanion(
      id: id ?? this.id,
      todo: todo ?? this.todo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (todo.present) {
      map['todo'] = Variable<String>(todo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosCompanion(')
          ..write('id: $id, ')
          ..write('todo: $todo')
          ..write(')'))
        .toString();
  }
}

class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _todoMeta = const VerificationMeta('todo');
  @override
  late final GeneratedColumn<String> todo = GeneratedColumn<String>(
      'todo', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, todo];
  @override
  String get aliasedName => _alias ?? 'todos';
  @override
  String get actualTableName => 'todos';
  @override
  VerificationContext validateIntegrity(Insertable<Todo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('todo')) {
      context.handle(
          _todoMeta, todo.isAcceptableOrUnknown(data['todo']!, _todoMeta));
    } else if (isInserting) {
      context.missing(_todoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Todo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      todo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}todo'])!,
    );
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(attachedDatabase, alias);
  }
}

abstract class _$TodoDatabase extends GeneratedDatabase {
  _$TodoDatabase(QueryExecutor e) : super(e);
  _$TodoDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $TodosTable todos = $TodosTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todos];
}
