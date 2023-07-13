class ServerException implements Exception {
  const ServerException({this.errorMessage});
  final String? errorMessage;
}

class CachedException implements Exception {
  const CachedException({this.errorMessage});
  final String? errorMessage;
}
