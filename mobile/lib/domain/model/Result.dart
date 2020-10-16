class Result<T> {
  final T data;
  final String message;
  final int code;

  Result.success(this.data, [this.message, this.code]);

  Result.error(this.message, this.code, [this.data]);

  bool isSuccess() {
    return data != null;
  }
}
