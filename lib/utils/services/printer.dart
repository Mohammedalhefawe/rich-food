import 'package:dio/dio.dart';

void printFormDataContents(FormData formData) {
  print('FormData contents:');

  // Print fields
  for (var field in formData.fields) {
    print('Field: ${field.key} = ${field.value}');
  }

  // Print files
  for (var file in formData.files) {
    print('File: ${file.key} = ${file.value.filename}');
  }
}
