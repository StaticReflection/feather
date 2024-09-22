class InternetException implements Exception {
  final String message;

  InternetException({required this.message});

  @override
  String toString() {
    return message;
  }
}
