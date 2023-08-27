// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'num_fact_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumFactResponse _$NumFactResponseFromJson(Map<String, dynamic> json) =>
    NumFactResponse(
      triviatext: json['text'] as String?,
      number: json['number'] as int?,
      found: json['found'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NumFactResponseToJson(NumFactResponse instance) =>
    <String, dynamic>{
      'text': instance.triviatext,
      'number': instance.number,
      'found': instance.found,
      'type': instance.type,
    };
