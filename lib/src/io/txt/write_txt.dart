import 'dart:convert';
import 'dart:io';

import 'package:scidart_io/src/io/path/retrieve_file_path.dart';

///  Write a string in a TXT file
///  [text] : the string that will be written in the file
///  [fileName] : file name or path of the file
///  [baseDir] : optional, base directory to the file, if not informed, get current script path.
///  [encoding] : optional, the encoding of the file, default is utf8
///  [mode] : optional, the mode how the program will write the file:
///    * FileMode.write: truncates the file to length zero, default.
///    * FileMode.append: sets the initial write position to the end of the file.
///  Examples
///  --------
///  >>> var data = "some information \nto save in the file";
///  >>> await writeTxt(data, 'some_text.txt');
void writeTxt(String text, String fileName,
    {String baseDir,
    Encoding encoding = utf8,
    FileMode mode = FileMode.write}) async {
  var file =
      await File(retrieveFilePath(fileName, baseDir)).create(recursive: true);
  var sink = file.openWrite(encoding: encoding, mode: mode);

  sink.write(text);

  await sink.close();
}
