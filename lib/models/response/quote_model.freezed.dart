// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuoteModel _$QuoteModelFromJson(Map<String, dynamic> json) {
  return _QuoteModel.fromJson(json);
}

/// @nodoc
mixin _$QuoteModel {
  String? get author => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteModelCopyWith<QuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteModelCopyWith<$Res> {
  factory $QuoteModelCopyWith(
          QuoteModel value, $Res Function(QuoteModel) then) =
      _$QuoteModelCopyWithImpl<$Res, QuoteModel>;
  @useResult
  $Res call({String? author, String? category, int id, String? text});
}

/// @nodoc
class _$QuoteModelCopyWithImpl<$Res, $Val extends QuoteModel>
    implements $QuoteModelCopyWith<$Res> {
  _$QuoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? category = freezed,
    Object? id = null,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuoteModelCopyWith<$Res>
    implements $QuoteModelCopyWith<$Res> {
  factory _$$_QuoteModelCopyWith(
          _$_QuoteModel value, $Res Function(_$_QuoteModel) then) =
      __$$_QuoteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? author, String? category, int id, String? text});
}

/// @nodoc
class __$$_QuoteModelCopyWithImpl<$Res>
    extends _$QuoteModelCopyWithImpl<$Res, _$_QuoteModel>
    implements _$$_QuoteModelCopyWith<$Res> {
  __$$_QuoteModelCopyWithImpl(
      _$_QuoteModel _value, $Res Function(_$_QuoteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = freezed,
    Object? category = freezed,
    Object? id = null,
    Object? text = freezed,
  }) {
    return _then(_$_QuoteModel(
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$_QuoteModel with DiagnosticableTreeMixin implements _QuoteModel {
  const _$_QuoteModel(
      {this.author, this.category, required this.id, this.text});

  factory _$_QuoteModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuoteModelFromJson(json);

  @override
  final String? author;
  @override
  final String? category;
  @override
  final int id;
  @override
  final String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuoteModel(author: $author, category: $category, id: $id, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuoteModel'))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuoteModel &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, category, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuoteModelCopyWith<_$_QuoteModel> get copyWith =>
      __$$_QuoteModelCopyWithImpl<_$_QuoteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuoteModelToJson(
      this,
    );
  }
}

abstract class _QuoteModel implements QuoteModel {
  const factory _QuoteModel(
      {final String? author,
      final String? category,
      required final int id,
      final String? text}) = _$_QuoteModel;

  factory _QuoteModel.fromJson(Map<String, dynamic> json) =
      _$_QuoteModel.fromJson;

  @override
  String? get author;
  @override
  String? get category;
  @override
  int get id;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$_QuoteModelCopyWith<_$_QuoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
