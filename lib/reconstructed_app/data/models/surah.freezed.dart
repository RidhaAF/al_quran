// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurahModel _$SurahModelFromJson(Map<String, dynamic> json) {
  return _SurahModel.fromJson(json);
}

/// @nodoc
mixin _$SurahModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<Surah>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahModelCopyWith<SurahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahModelCopyWith<$Res> {
  factory $SurahModelCopyWith(
          SurahModel value, $Res Function(SurahModel) then) =
      _$SurahModelCopyWithImpl<$Res, SurahModel>;
  @useResult
  $Res call({int? code, String? status, String? message, List<Surah>? data});
}

/// @nodoc
class _$SurahModelCopyWithImpl<$Res, $Val extends SurahModel>
    implements $SurahModelCopyWith<$Res> {
  _$SurahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Surah>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurahModelCopyWith<$Res>
    implements $SurahModelCopyWith<$Res> {
  factory _$$_SurahModelCopyWith(
          _$_SurahModel value, $Res Function(_$_SurahModel) then) =
      __$$_SurahModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? status, String? message, List<Surah>? data});
}

/// @nodoc
class __$$_SurahModelCopyWithImpl<$Res>
    extends _$SurahModelCopyWithImpl<$Res, _$_SurahModel>
    implements _$$_SurahModelCopyWith<$Res> {
  __$$_SurahModelCopyWithImpl(
      _$_SurahModel _value, $Res Function(_$_SurahModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SurahModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Surah>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SurahModel implements _SurahModel {
  const _$_SurahModel(
      {this.code, this.status, this.message, final List<Surah>? data})
      : _data = data;

  factory _$_SurahModel.fromJson(Map<String, dynamic> json) =>
      _$$_SurahModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final String? message;
  final List<Surah>? _data;
  @override
  List<Surah>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SurahModel(code: $code, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurahModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurahModelCopyWith<_$_SurahModel> get copyWith =>
      __$$_SurahModelCopyWithImpl<_$_SurahModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurahModelToJson(
      this,
    );
  }
}

abstract class _SurahModel implements SurahModel {
  const factory _SurahModel(
      {final int? code,
      final String? status,
      final String? message,
      final List<Surah>? data}) = _$_SurahModel;

  factory _SurahModel.fromJson(Map<String, dynamic> json) =
      _$_SurahModel.fromJson;

  @override
  int? get code;
  @override
  String? get status;
  @override
  String? get message;
  @override
  List<Surah>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SurahModelCopyWith<_$_SurahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Surah _$SurahFromJson(Map<String, dynamic> json) {
  return _Surah.fromJson(json);
}

/// @nodoc
mixin _$Surah {
  int? get number => throw _privateConstructorUsedError;
  int? get sequence => throw _privateConstructorUsedError;
  int? get numberOfVerses => throw _privateConstructorUsedError;
  Name? get name => throw _privateConstructorUsedError;
  Revelation? get revelation => throw _privateConstructorUsedError;
  Tafsir? get tafsir => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahCopyWith<Surah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahCopyWith<$Res> {
  factory $SurahCopyWith(Surah value, $Res Function(Surah) then) =
      _$SurahCopyWithImpl<$Res, Surah>;
  @useResult
  $Res call(
      {int? number,
      int? sequence,
      int? numberOfVerses,
      Name? name,
      Revelation? revelation,
      Tafsir? tafsir});

  $NameCopyWith<$Res>? get name;
  $RevelationCopyWith<$Res>? get revelation;
  $TafsirCopyWith<$Res>? get tafsir;
}

/// @nodoc
class _$SurahCopyWithImpl<$Res, $Val extends Surah>
    implements $SurahCopyWith<$Res> {
  _$SurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? sequence = freezed,
    Object? numberOfVerses = freezed,
    Object? name = freezed,
    Object? revelation = freezed,
    Object? tafsir = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfVerses: freezed == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      revelation: freezed == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as Revelation?,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as Tafsir?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RevelationCopyWith<$Res>? get revelation {
    if (_value.revelation == null) {
      return null;
    }

    return $RevelationCopyWith<$Res>(_value.revelation!, (value) {
      return _then(_value.copyWith(revelation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TafsirCopyWith<$Res>? get tafsir {
    if (_value.tafsir == null) {
      return null;
    }

    return $TafsirCopyWith<$Res>(_value.tafsir!, (value) {
      return _then(_value.copyWith(tafsir: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SurahCopyWith<$Res> implements $SurahCopyWith<$Res> {
  factory _$$_SurahCopyWith(_$_Surah value, $Res Function(_$_Surah) then) =
      __$$_SurahCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number,
      int? sequence,
      int? numberOfVerses,
      Name? name,
      Revelation? revelation,
      Tafsir? tafsir});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $RevelationCopyWith<$Res>? get revelation;
  @override
  $TafsirCopyWith<$Res>? get tafsir;
}

/// @nodoc
class __$$_SurahCopyWithImpl<$Res> extends _$SurahCopyWithImpl<$Res, _$_Surah>
    implements _$$_SurahCopyWith<$Res> {
  __$$_SurahCopyWithImpl(_$_Surah _value, $Res Function(_$_Surah) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? sequence = freezed,
    Object? numberOfVerses = freezed,
    Object? name = freezed,
    Object? revelation = freezed,
    Object? tafsir = freezed,
  }) {
    return _then(_$_Surah(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      sequence: freezed == sequence
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfVerses: freezed == numberOfVerses
          ? _value.numberOfVerses
          : numberOfVerses // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      revelation: freezed == revelation
          ? _value.revelation
          : revelation // ignore: cast_nullable_to_non_nullable
              as Revelation?,
      tafsir: freezed == tafsir
          ? _value.tafsir
          : tafsir // ignore: cast_nullable_to_non_nullable
              as Tafsir?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Surah implements _Surah {
  const _$_Surah(
      {this.number,
      this.sequence,
      this.numberOfVerses,
      this.name,
      this.revelation,
      this.tafsir});

  factory _$_Surah.fromJson(Map<String, dynamic> json) =>
      _$$_SurahFromJson(json);

  @override
  final int? number;
  @override
  final int? sequence;
  @override
  final int? numberOfVerses;
  @override
  final Name? name;
  @override
  final Revelation? revelation;
  @override
  final Tafsir? tafsir;

  @override
  String toString() {
    return 'Surah(number: $number, sequence: $sequence, numberOfVerses: $numberOfVerses, name: $name, revelation: $revelation, tafsir: $tafsir)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Surah &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sequence, sequence) ||
                other.sequence == sequence) &&
            (identical(other.numberOfVerses, numberOfVerses) ||
                other.numberOfVerses == numberOfVerses) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.revelation, revelation) ||
                other.revelation == revelation) &&
            (identical(other.tafsir, tafsir) || other.tafsir == tafsir));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, number, sequence, numberOfVerses, name, revelation, tafsir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      __$$_SurahCopyWithImpl<_$_Surah>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurahToJson(
      this,
    );
  }
}

abstract class _Surah implements Surah {
  const factory _Surah(
      {final int? number,
      final int? sequence,
      final int? numberOfVerses,
      final Name? name,
      final Revelation? revelation,
      final Tafsir? tafsir}) = _$_Surah;

  factory _Surah.fromJson(Map<String, dynamic> json) = _$_Surah.fromJson;

  @override
  int? get number;
  @override
  int? get sequence;
  @override
  int? get numberOfVerses;
  @override
  Name? get name;
  @override
  Revelation? get revelation;
  @override
  Tafsir? get tafsir;
  @override
  @JsonKey(ignore: true)
  _$$_SurahCopyWith<_$_Surah> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String get short => throw _privateConstructorUsedError;
  String get long => throw _privateConstructorUsedError;
  Transliteration get transliteration => throw _privateConstructorUsedError;
  Translation get translation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call(
      {String short,
      String long,
      Transliteration transliteration,
      Translation translation});

  $TransliterationCopyWith<$Res> get transliteration;
  $TranslationCopyWith<$Res> get translation;
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_value.copyWith(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as Transliteration,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Translation,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransliterationCopyWith<$Res> get transliteration {
    return $TransliterationCopyWith<$Res>(_value.transliteration, (value) {
      return _then(_value.copyWith(transliteration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslationCopyWith<$Res> get translation {
    return $TranslationCopyWith<$Res>(_value.translation, (value) {
      return _then(_value.copyWith(translation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$_NameCopyWith(_$_Name value, $Res Function(_$_Name) then) =
      __$$_NameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String short,
      String long,
      Transliteration transliteration,
      Translation translation});

  @override
  $TransliterationCopyWith<$Res> get transliteration;
  @override
  $TranslationCopyWith<$Res> get translation;
}

/// @nodoc
class __$$_NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res, _$_Name>
    implements _$$_NameCopyWith<$Res> {
  __$$_NameCopyWithImpl(_$_Name _value, $Res Function(_$_Name) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? short = null,
    Object? long = null,
    Object? transliteration = null,
    Object? translation = null,
  }) {
    return _then(_$_Name(
      short: null == short
          ? _value.short
          : short // ignore: cast_nullable_to_non_nullable
              as String,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as Transliteration,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as Translation,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Name implements _Name {
  const _$_Name(
      {required this.short,
      required this.long,
      required this.transliteration,
      required this.translation});

  factory _$_Name.fromJson(Map<String, dynamic> json) => _$$_NameFromJson(json);

  @override
  final String short;
  @override
  final String long;
  @override
  final Transliteration transliteration;
  @override
  final Translation translation;

  @override
  String toString() {
    return 'Name(short: $short, long: $long, transliteration: $transliteration, translation: $translation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Name &&
            (identical(other.short, short) || other.short == short) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.translation, translation) ||
                other.translation == translation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, short, long, transliteration, translation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameCopyWith<_$_Name> get copyWith =>
      __$$_NameCopyWithImpl<_$_Name>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name(
      {required final String short,
      required final String long,
      required final Transliteration transliteration,
      required final Translation translation}) = _$_Name;

  factory _Name.fromJson(Map<String, dynamic> json) = _$_Name.fromJson;

  @override
  String get short;
  @override
  String get long;
  @override
  Transliteration get transliteration;
  @override
  Translation get translation;
  @override
  @JsonKey(ignore: true)
  _$$_NameCopyWith<_$_Name> get copyWith => throw _privateConstructorUsedError;
}

Transliteration _$TransliterationFromJson(Map<String, dynamic> json) {
  return _Transliteration.fromJson(json);
}

/// @nodoc
mixin _$Transliteration {
  String get en => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransliterationCopyWith<Transliteration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransliterationCopyWith<$Res> {
  factory $TransliterationCopyWith(
          Transliteration value, $Res Function(Transliteration) then) =
      _$TransliterationCopyWithImpl<$Res, Transliteration>;
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class _$TransliterationCopyWithImpl<$Res, $Val extends Transliteration>
    implements $TransliterationCopyWith<$Res> {
  _$TransliterationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_TransliterationCopyWith<$Res>
    implements $TransliterationCopyWith<$Res> {
  factory _$$_TransliterationCopyWith(
          _$_Transliteration value, $Res Function(_$_Transliteration) then) =
      __$$_TransliterationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class __$$_TransliterationCopyWithImpl<$Res>
    extends _$TransliterationCopyWithImpl<$Res, _$_Transliteration>
    implements _$$_TransliterationCopyWith<$Res> {
  __$$_TransliterationCopyWithImpl(
      _$_Transliteration _value, $Res Function(_$_Transliteration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$_Transliteration(
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
class _$_Transliteration implements _Transliteration {
  _$_Transliteration({required this.en, required this.id});

  factory _$_Transliteration.fromJson(Map<String, dynamic> json) =>
      _$$_TransliterationFromJson(json);

  @override
  final String en;
  @override
  final String id;

  @override
  String toString() {
    return 'Transliteration(en: $en, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transliteration &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransliterationCopyWith<_$_Transliteration> get copyWith =>
      __$$_TransliterationCopyWithImpl<_$_Transliteration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransliterationToJson(
      this,
    );
  }
}

abstract class _Transliteration implements Transliteration {
  factory _Transliteration(
      {required final String en,
      required final String id}) = _$_Transliteration;

  factory _Transliteration.fromJson(Map<String, dynamic> json) =
      _$_Transliteration.fromJson;

  @override
  String get en;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TransliterationCopyWith<_$_Transliteration> get copyWith =>
      throw _privateConstructorUsedError;
}

Translation _$TranslationFromJson(Map<String, dynamic> json) {
  return _Translation.fromJson(json);
}

/// @nodoc
mixin _$Translation {
  String get en => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranslationCopyWith<Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
          Translation value, $Res Function(Translation) then) =
      _$TranslationCopyWithImpl<$Res, Translation>;
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res, $Val extends Translation>
    implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_TranslationCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$$_TranslationCopyWith(
          _$_Translation value, $Res Function(_$_Translation) then) =
      __$$_TranslationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String en, String id});
}

/// @nodoc
class __$$_TranslationCopyWithImpl<$Res>
    extends _$TranslationCopyWithImpl<$Res, _$_Translation>
    implements _$$_TranslationCopyWith<$Res> {
  __$$_TranslationCopyWithImpl(
      _$_Translation _value, $Res Function(_$_Translation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = null,
    Object? id = null,
  }) {
    return _then(_$_Translation(
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
class _$_Translation implements _Translation {
  _$_Translation({required this.en, required this.id});

  factory _$_Translation.fromJson(Map<String, dynamic> json) =>
      _$$_TranslationFromJson(json);

  @override
  final String en;
  @override
  final String id;

  @override
  String toString() {
    return 'Translation(en: $en, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Translation &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TranslationCopyWith<_$_Translation> get copyWith =>
      __$$_TranslationCopyWithImpl<_$_Translation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TranslationToJson(
      this,
    );
  }
}

abstract class _Translation implements Translation {
  factory _Translation({required final String en, required final String id}) =
      _$_Translation;

  factory _Translation.fromJson(Map<String, dynamic> json) =
      _$_Translation.fromJson;

  @override
  String get en;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_TranslationCopyWith<_$_Translation> get copyWith =>
      throw _privateConstructorUsedError;
}

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
