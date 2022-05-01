class AppException implements Exception {
  final String message;
  final StackTrace? stacktrace;

  AppException(this.message, {this.stacktrace});
}
