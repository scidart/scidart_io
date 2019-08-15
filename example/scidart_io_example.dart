import 'package:scidart/numdart.dart';
import 'package:scidart_io/scidart_io.dart';

void main() async {
  // read stock_data.csv file in the same directory of the current
  // script
  // the delimiter of this file is ',' but can be any character
  // the reader skip one line in the header of the file and
  // one line at the end of the file
  var data = await readCSV('stock_data.csv',
      delimiter: ',', skipHeader: 1, skipFooter: 1);

  print(data); // show the data

  // generate a 2d array data for test
  var data2 = Array2d([
    Array([1, 2, 3, 4, 5]),
    Array([2, 3, 4, 5, 6]),
    Array([3, 4, 5, 6, 7]),
    Array([4, 5, 6, 7, 8]),
    Array([5, 6, 7, 8, 9]),
  ]);

  // define a file name
  var fileName = 'data_array.csv';

  // save the data in a CSV file
  await writeLinesCSV(data2, fileName);

  // read the same data again and convert to Array2d again
  var data2Read = await readCSV(fileName, convertToArray2d: true);

  print(data2Read); // show the data
}
