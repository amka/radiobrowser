import 'package:json_annotation/json_annotation.dart';

part 'station.g.dart';

@JsonSerializable()
class Station {
  /// The generated code assumes these values exist in JSON.
  @JsonKey(name: 'changeuuid')
  final String changeUuid;
  @JsonKey(name: 'stationuuid')
  final String stationUuid;
  final String name;
  final String url;
  @JsonKey(name: 'url_resolved')
  final String urlResolved;
  final String homepage;
  final String favicon;
  @JsonKey(name: 'countrycode')
  final String countryCode;
  final String state;
  final String language;
  @JsonKey(name: 'languagecodes')
  final String languageCodes;
  final String tags;
  final int votes;
  final String codec;
  final int bitrate;
  final int hls;

  Station(
      this.changeUuid,
      this.stationUuid,
      this.name,
      this.url,
      this.urlResolved,
      this.homepage,
      this.favicon,
      this.countryCode,
      this.state,
      this.language,
      this.languageCodes,
      this.tags,
      this.votes,
      this.codec,
      this.bitrate,
      this.hls);

  /// Connect the generated [_$StationFromJson] function to the `fromJson`
  /// factory.
  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);

  /// Connect the generated [_$StationToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$StationToJson(this);

  @override
  String toString() {
    return '$name [$countryCode] ${bitrate}kbs';
  }
}
