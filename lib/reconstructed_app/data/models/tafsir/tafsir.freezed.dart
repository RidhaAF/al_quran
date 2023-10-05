// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tafsir.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tafsir _$TafsirFromJson(Map<String, dynamic> json) {
  return _Tafsir.fromJson(json);
}

/// @nodoc
mixin _$Tafsir {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TafsirCopyWith<Tafsir> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TafsirCopyWith<$Res> {
  factory $TafsirCopyWith(Tafsir value, $Res Function(Tafsir) then) =
      _$TafsirCopyWithImpl<$Res, Tafsir>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$TafsirCopyWithImpl<$Res, $Val extends Tafsir>
    implements $TafsirCopyWith<$Res> {
  _$TafsirCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TafsirCopyWith<$Res> implements $TafsirCopyWith<$Res> {
  factory _$$_TafsirCopyWith(_$_Tafsir value, $Res Function(_$_Tafsir) then) =
      __$$_TafsirCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_TafsirCopyWithImpl<$Res>
    extends _$TafsirCopyWithImpl<$Res, _$_Tafsir>
    implements _$$_TafsirCopyWith<$Res> {
  __$$_TafsirCopyWithImpl(_$_Tafsir _value, $Res Function(_$_Tafsir) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_Tafsir(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tafsir implements _Tafsir {
  const _$_Tafsir({required this.id});

  factory _$_Tafsir.fromJson(Map<String, dynamic> json) =>
      _$$_TafsirFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'Tafsir(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tafsir &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TafsirCopyWith<_$_Tafsir> get copyWith =>
      __$$_TafsirCopyWithImpl<_$_Tafsir>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TafsirToJson(
      this,
    );
  }
}

abstract class _Tafsir implements Tafsir {
  const factory _Tafsir({required final String id}) = _$_Tafsir;

  factory _Tafsir.fromJson(Map<String, dynamic> json) = _$_Tafsir.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TafsirCopyWith<_$_Tafsir> get copyWith =>
      throw _privateConstructorUsedError;
}
