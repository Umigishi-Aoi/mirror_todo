import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/constants.dart';
import '../util/util.dart';

part 'todo_dto.freezed.dart';

@freezed
class TodoDto with _$TodoDto {
  const factory TodoDto({
    required int id,
    required List<String> todo,
  }) = _TodoDto;

  const TodoDto._();

  factory TodoDto.initialTodo0() =>
      TodoDto(id: 0, todo: stringToList(kInitialTodo0));
  factory TodoDto.initialTodo1() =>
      TodoDto(id: 1, todo: stringToList(kInitialTodo1));
  factory TodoDto.initialData2() =>
      TodoDto(id: 2, todo: stringToList(kInitialTodo2));

  String get listToString => todo.join();
}
