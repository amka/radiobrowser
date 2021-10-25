// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

State _$StateFromJson(Map<String, dynamic> json) => State(
      json['name'] as String,
      json['stationcount'] as int,
      json['country'] as String,
    );

Map<String, dynamic> _$StateToJson(State instance) => <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'stationcount': instance.stationCount,
    };
