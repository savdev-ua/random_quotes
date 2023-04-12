import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_model.freezed.dart';

part 'quote_model.g.dart';

@freezed
class QuoteModel with _$QuoteModel {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory QuoteModel({
    String? author,
    String? category,
    required int id,
    String? text,
  }) = _QuoteModel;

  factory QuoteModel.fromJson(Map<String, dynamic> json) =>
      _$QuoteModelFromJson(json);
}
