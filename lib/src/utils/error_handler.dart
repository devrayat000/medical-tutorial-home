import 'dart:io';

import 'package:study_helper/src/utils/exception.dart';

AppException errorHandler(Object e, [StackTrace? s]) {
  print(e);
  if (e is AppException) {
    return e;
  }
  if (e is SocketException) {
    return AppException('No Internet connection 😑', stacktrace: s);
  }
  if (e is HttpException) {
    AppException("Unable to retrieve data 😱", stacktrace: s);
  }
  if (e is FormatException) {
    AppException('Bad response format 👎', stacktrace: s);
  }
  return AppException('Unknown error occured!');
}
