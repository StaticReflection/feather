enum ResponseExceptionType {
  blankBody,
  statusCodeError;
}

class ResponseException implements Exception {
  final ResponseExceptionType type;
  final int? statusCode;
  ResponseException({
    required this.type,
    this.statusCode,
  });

  @override
  String toString() {
    switch (type) {
      case ResponseExceptionType.blankBody:
        return 'blank body';
      case ResponseExceptionType.statusCodeError:
        return 'Incorrect status code: $statusCode';
      default:
        return 'unknown error';
    }
  }
}
