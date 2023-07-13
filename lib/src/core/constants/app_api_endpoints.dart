class AppApiEndpoint {
  const AppApiEndpoint._();

  static const String scheme = 'https';
  static const String host = '';
  static const Duration receiveTimeout = Duration(seconds: 5);
  static const Duration sendTimeout = Duration(seconds: 7);
  static const apiExtension = '';

  static Uri baseUri = Uri(scheme: scheme, host: host, path: '');
}
