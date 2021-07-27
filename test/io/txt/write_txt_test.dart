import 'package:scidart/numdart.dart';
import 'package:scidart_io/scidart_io.dart';
import 'package:test/test.dart';
import 'package:universal_io/io.dart';

void main() {
  group('txt', () {
    var path = '${Directory.current.path}/test/io/txt';

    test('write string txt', () async {
      var data = Array2d([
        Array([1, 2, 3, 4, 5]),
        Array([2, 3, 4, 5, 6]),
        Array([3, 4, 5, 6, 7]),
        Array([4, 5, 6, 7, 8]),
        Array([5, 6, 7, 8, 9]),
      ]);

      var fileName = '$path/data_array_string.txt';

      await writeTxt(data.toString(), fileName);
      var dataRead = await readTxt(fileName);

      print(dataRead);

      expect(dataRead, data.toString());
    });
  });
}
