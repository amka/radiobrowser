// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Station _$StationFromJson(Map<String, dynamic> json) => Station(
      json['changeuuid'] as String,
      json['stationuuid'] as String,
      json['name'] as String,
      json['url'] as String,
      json['url_resolved'] as String,
      json['homepage'] as String,
      json['favicon'] as String,
      json['countrycode'] as String,
      json['state'] as String,
      json['language'] as String,
      json['languagecodes'] as String,
      json['tags'] as String,
      json['votes'] as int,
      json['codec'] as String,
      json['bitrate'] as int,
      json['hls'] as int,
    );

Map<String, dynamic> _$StationToJson(Station instance) => <String, dynamic>{
      'changeuuid': instance.changeUuid,
      'stationuuid': instance.stationUuid,
      'name': instance.name,
      'url': instance.url,
      'url_resolved': instance.urlResolved,
      'homepage': instance.homepage,
      'favicon': instance.favicon,
      'countrycode': instance.countryCode,
      'state': instance.state,
      'language': instance.language,
      'languagecodes': instance.languageCodes,
      'tags': instance.tags,
      'votes': instance.votes,
      'codec': instance.codec,
      'bitrate': instance.bitrate,
      'hls': instance.hls,
    };
