import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.freezed.dart';

@freezed
class TodoDto with _$TodoDto {
  const factory TodoDto({
    required int id,
    required List<String> todo,
  }) = _TodoDto;

  const TodoDto._();

  String get listToString => todo.join();
}
