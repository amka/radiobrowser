import 'dart:convert' show jsonDecode, utf8;
import 'dart:io' show HttpStatus, InternetAddress;
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:radiobrowser/src/models/station.dart';

/// Checks if you are awesome. Spoiler: you are.
class RadioBrowser {
  final String format;

  String? baseUrl;

  late Map<String, String> _headers;

  RadioBrowser({this.format = 'json'}) {
    _headers = {
      "User-Agent": "dart_radiobrowser/1",
      "accept-language": 'ru,en;'
    };
  }

  Future<String> getBaseUrl() async {
    final serversList =
        await InternetAddress.lookup('all.api.radio-browser.info');
    final serverIp = serversList[Random().nextInt(serversList.length)];

    return (await serverIp.reverse()).host;
  }

  Future<Uri> buildUri(String endpoint, Map<String, String> args) async {
    baseUrl ??= await getBaseUrl();
    return Uri.https(baseUrl!, endpoint, args);
  }

  Future get(Uri uri) async {
    var response = await http.get(uri, headers: _headers);

    if (response.statusCode == HttpStatus.ok) {
      // Response is in UTF8 so we need to decode bytes
      return utf8.decode(response.bodyBytes);
    }
    throw Error();
  }

  Future<List<Station>> search(String name) async {
    final endpoint = "$format/stations/search";
    final uri = await buildUri(endpoint, {'name': name});

    final List<Station> stations = [];

    try {
      final decoded = await get(uri);
      final jsonData = jsonDecode(decoded) as List<dynamic>;
      for (final row in jsonData) {
        stations.add(Station.fromJson(row));
      }
    } catch (error) {
      rethrow;
    }

    return stations;
  }
}

