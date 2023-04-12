// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuoteModel _$$_QuoteModelFromJson(Map<String, dynamic> json) =>
    _$_QuoteModel(
      author: json['author'] as String?,
      category: json['category'] as String?,
      id: json['id'] as int,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_QuoteModelToJson(_$_QuoteModel instance) =>
    <String, dynamic>{
      'author': instance.author,
      'category': instance.category,
      'id': instance.id,
      'text': instance.text,
    };
