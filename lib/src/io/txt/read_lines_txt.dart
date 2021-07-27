import 'dart:convert';

import 'package:scidart_io/src/io/path/retrieve_file_path.dart';
import 'package:universal_io/io.dart';

///  Read a TXT file and return a List where each element is line of the file
///  [fileName] : file name or path of the file
///  [baseDir] : optional, base directory to the file, if not informed, get current script path.
///  [encoding] : optional, the encoding of the file, default is utf8
///  Examples
///  --------
///  >>> var data = await readLinesTxt('stock_data.txt');
Future<List> readLinesTxt(String fileName, {Encoding encoding = utf8}) async {
  return await File(retrieveFilePath(fileName)).readAsLines(encoding: encoding);
}
