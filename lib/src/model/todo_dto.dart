import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_dto.freezed.dart';

@freezed
class TodoDto with _$TodoDto {
  const factory TodoDto({
    required int id,
    required String todo,
  }) = _TodoDto;

  factory TodoDto.initialData0() => const TodoDto(id: 0, todo: 'study flutter');
  factory TodoDto.initialData1() => const TodoDto(id: 1, todo: 'exercise');
  factory TodoDto.initialData2() => const TodoDto(id: 2, todo: 'eat curry');
}
