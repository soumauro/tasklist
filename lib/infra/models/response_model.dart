class ResponseModel<T> {
  final bool isSuccess;
  final String message;
  final T? data;

  ResponseModel({
    this.isSuccess = true,
    this.message = '',
    this.data,
  });
}
