import 'package:radiobrowser/radiobrowser.dart';

void main() async {
  var browser = RadioBrowser();
  final stations = await browser.search('максимум');
  print('Нашлось ${stations.length} станций:');
  stations.forEach(print);
}
