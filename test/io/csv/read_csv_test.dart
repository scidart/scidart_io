import 'package:scidart_io/scidart_io.dart';
import 'package:test/test.dart';
import 'package:universal_io/io.dart';

void main() {
  group('csv', () {
    var path = '${Directory.current.path}/test/io/csv';

    test('read csv', () async {
      var data = await readCSV('$path/stock_data.csv', delimiter: ',');
      print(data.length);

      expect(data.length, 10504);
    });

    test('read csv skip header', () async {
      var data =
          await readCSV('$path/stock_data.csv', delimiter: ',', skipHeader: 1);
      print(data.length);

      expect(data.length, 10503);
    });

    test('read csv skip header and footer (last line)', () async {
      var data = await readCSV('$path/stock_data.csv',
          delimiter: ',', skipHeader: 1, skipFooter: 1);
      print(data.length);

      expect(data.length, 10502);
    });
  });
}
