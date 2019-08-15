# SciDart IO
**SciDart IO** is file manipulation library compatible with **SciDart**. This library is part of [SciDart project](https://github.com/scidart).

## Goals
A data manipulation library compatible with SciDart. The focus platform is PC for while to simplify the development.

## Motivation
Make easy save and retrieve data from SciDart.

## PUB link
Link to the Pub repository: https://pub.dev/packages/scidart_io

## Installation
You can follow instruction in the Pub web site: https://pub.dev/packages/scidart_io#-installing-tab-

## SciDart IO structure
* IO: File manipulation libraries;
  * csv: [CSV](https://en.wikipedia.org/wiki/Comma-separated_values) file manipulation;
  * txt: text file manipulation;
  
## Examples
### CSV
```Dart
import 'package:scidart/numdart.dart';
import 'package:scidart_io/scidart_io.dart';

void main() async {
  // read stock_data.csv file in the same directory of the current
  // script
  // the delimiter of this file is ',' but can be any character
  // the reader skip one line in the header of the file and
  // one line at the end of the file
  var data = await readCSV('stock_data.csv', delimiter: ',', skipHeader: 1, skipFooter: 1);
  
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
  
  // show the data
  print(data2Read);
}
```
### TXT
```Dart
import 'package:scidart/numdart.dart';
import 'package:scidart_io/scidart_io.dart';

void main() async {
  // define a data for tests
  var data = Array2d([
    Array([1, 2, 3, 4, 5]),
    Array([2, 3, 4, 5, 6]),
    Array([3, 4, 5, 6, 7]),
    Array([4, 5, 6, 7, 8]),
    Array([5, 6, 7, 8, 9]),
  ]);
  
  // define a file name
  var fileName = 'data_array.txt';
  
  // write lines in the txt files
  await writeLinesTxt(data.toString().split('\n'), fileName);
  
  // read the line again
  var dataRead = await readLinesTxt(fileName);
  
  // show in the terminal
  print(dataRead);
}

```

## Todo list
### Benchmarks
- [ ] made benchmark on Linux
- [ ] made benchmark on MacOS
- [ ] made benchmark on MS Windows

### Code implementations
- [x] write, read txt (work only in PC)
- [x] write, read csv (work only in PC)
- [ ] write, read json (work only in PC)
- [ ] write, read mongo (work only in PC)
- [ ] write, read sql like databases (work only in PC)