import 'package:scidart_io/scidart_io.dart';
import 'package:test/test.dart';
import 'package:universal_io/io.dart';

void main() {
  group('txt', () {
    var path = '${Directory.current.path}/test/io/txt';

    test('read txt', () async {
      var data = await readLinesTxt('$path/stock_data.txt');
      print(data.length);
      expect(data.length, 15);
    });
  });
}
