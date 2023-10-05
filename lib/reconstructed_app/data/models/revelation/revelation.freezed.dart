// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'revelation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Revelation _$RevelationFromJson(Map<String, dynamic> json) {
  return _Revelation.fromJson(json);
}

/// @nodoc
mixin _$Revelation {
  String get arab => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RevelationCopyWith<Revelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RevelationCopyWith<$Res> {
  factory $RevelationCopyWith(
          Revelation value, $Res Function(Revelation) then) =
      _$RevelationCopyWithImpl<$Res, Revelation>;
  @useResult
  $Res call({String arab, String en, String id});
}

/// @nodoc
class _$RevelationCopyWithImpl<$Res, $Val extends Revelation>
    implements $RevelationCopyWith<$Res> {
  _$RevelationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RevelationCopyWith<$Res>
    implements $RevelationCopyWith<$Res> {
  factory _$$_RevelationCopyWith(
          _$_Revelation value, $Res Function(_$_Revelation) then) =
      __$$_RevelationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String arab, String en, String id});
}

/// @nodoc
class __$$_RevelationCopyWithImpl<$Res>
    extends _$RevelationCopyWithImpl<$Res, _$_Revelation>
    implements _$$_RevelationCopyWith<$Res> {
  __$$_RevelationCopyWithImpl(
      _$_Revelation _value, $Res Function(_$_Revelation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$_Revelation(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Revelation implements _Revelation {
  const _$_Revelation({required this.arab, required this.en, required this.id});

  factory _$_Revelation.fromJson(Map<String, dynamic> json) =>
      _$$_RevelationFromJson(json);

  @override
  final String arab;
  @override
  final String en;
  @override
  final String id;

  @override
  String toString() {
    return 'Revelation(arab: $arab, en: $en, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Revelation &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, arab, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RevelationCopyWith<_$_Revelation> get copyWith =>
      __$$_RevelationCopyWithImpl<_$_Revelation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RevelationToJson(
      this,
    );
  }
}

abstract class _Revelation implements Revelation {
  const factory _Revelation(
      {required final String arab,
      required final String en,
      required final String id}) = _$_Revelation;

  factory _Revelation.fromJson(Map<String, dynamic> json) =
      _$_Revelation.fromJson;

  @override
  String get arab;
  @override
  String get en;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_RevelationCopyWith<_$_Revelation> get copyWith =>
      throw _privateConstructorUsedError;
}
