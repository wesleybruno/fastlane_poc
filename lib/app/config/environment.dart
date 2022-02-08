enum EnvironmentType { prod, hml, dev, config }

class Environment {
  Environment._(
    this.environmentType,
    this.apiUrl,
  );

  factory Environment.config(String apiUrl) {
    if (_instance != null) {
      return _instance!;
    }
    _instance = Environment._(EnvironmentType.config, apiUrl);
    return _instance!;
  }

  factory Environment.prod(String apiUrl) {
    if (_instance != null) {
      return _instance!;
    }
    _instance = Environment._(EnvironmentType.prod, apiUrl);
    return _instance!;
  }

  factory Environment.hml(String apiUrl) {
    if (_instance != null) {
      return _instance!;
    }
    _instance = Environment._(EnvironmentType.hml, apiUrl);
    return _instance!;
  }

  factory Environment.dev(String apiUrl) {
    if (_instance != null) {
      return _instance!;
    }
    _instance = Environment._(EnvironmentType.dev, apiUrl);
    return _instance!;
  }

  static Environment? _instance;
  static Environment get instance => _instance!;

  late final EnvironmentType environmentType;
  late final String apiUrl;

  static bool get isProd => _instance?.environmentType == EnvironmentType.prod;
  static bool get isHml => _instance?.environmentType == EnvironmentType.hml;
  static bool get isDev => _instance?.environmentType == EnvironmentType.dev;
  static bool get isConfig =>
      _instance?.environmentType == EnvironmentType.config;
}
