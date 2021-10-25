// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
      json['name'] as String,
      json['iso_639'] as int,
      json['stationcount'] as int,
    );

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
      'name': instance.name,
      'iso_639': instance.iso639,
      'stationcount': instance.stationCount,
    };
