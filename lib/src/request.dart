import 'dart:convert' as convert;
import 'dart:io';

import 'package:http/http.dart' as http;

class Request {
  final String _content_type = "application/json";
  late Map<String, String> _headers;

  Request(String format, {Map<String, String>? headers, session}) {
    _headers = headers ?? {};
  }

  Future get(String url, {args}) async {
    final uri = Uri.https(
      '',
      '',
    );

    var response = await http.get(uri, headers: _headers);

    if (response.statusCode == HttpStatus.ok) {
      return response.body;
    }

    return Null;
  }
}
