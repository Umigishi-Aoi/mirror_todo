// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoDto {
  int get id => throw _privateConstructorUsedError;
  List<String> get todo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoDtoCopyWith<TodoDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDtoCopyWith<$Res> {
  factory $TodoDtoCopyWith(TodoDto value, $Res Function(TodoDto) then) =
      _$TodoDtoCopyWithImpl<$Res, TodoDto>;
  @useResult
  $Res call({int id, List<String> todo});
}

/// @nodoc
class _$TodoDtoCopyWithImpl<$Res, $Val extends TodoDto>
    implements $TodoDtoCopyWith<$Res> {
  _$TodoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoDtoCopyWith<$Res> implements $TodoDtoCopyWith<$Res> {
  factory _$$_TodoDtoCopyWith(
          _$_TodoDto value, $Res Function(_$_TodoDto) then) =
      __$$_TodoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<String> todo});
}

/// @nodoc
class __$$_TodoDtoCopyWithImpl<$Res>
    extends _$TodoDtoCopyWithImpl<$Res, _$_TodoDto>
    implements _$$_TodoDtoCopyWith<$Res> {
  __$$_TodoDtoCopyWithImpl(_$_TodoDto _value, $Res Function(_$_TodoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? todo = null,
  }) {
    return _then(_$_TodoDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      todo: null == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_TodoDto implements _TodoDto {
  const _$_TodoDto({required this.id, required final List<String> todo})
      : _todo = todo;

  @override
  final int id;
  final List<String> _todo;
  @override
  List<String> get todo {
    if (_todo is EqualUnmodifiableListView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todo);
  }

  @override
  String toString() {
    return 'TodoDto(id: $id, todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoDto &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._todo, _todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(_todo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoDtoCopyWith<_$_TodoDto> get copyWith =>
      __$$_TodoDtoCopyWithImpl<_$_TodoDto>(this, _$identity);
}

abstract class _TodoDto implements TodoDto {
  const factory _TodoDto(
      {required final int id, required final List<String> todo}) = _$_TodoDto;

  @override
  int get id;
  @override
  List<String> get todo;
  @override
  @JsonKey(ignore: true)
  _$$_TodoDtoCopyWith<_$_TodoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
