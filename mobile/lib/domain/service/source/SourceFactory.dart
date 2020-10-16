class SourceFactory {
  static final SourceFactory _singleton = SourceFactory._internal();

  factory SourceFactory() {
    return _singleton;
  }

  SourceFactory._internal();
}
