class ResponseModel<T> {
  ResponseModel.success(
    this.data, {
    this.status = 'success',
    this.message = 'success',
  });

  ResponseModel.warning(
    this.message, {
    this.status = 'warning',
    this.data,
  });

  ResponseModel.error(
    this.message, {
    this.status = 'error',
    this.data,
  });

  final String status;
  final String message;
  final T? data;

  bool get isSuccess => status == 'success';
  bool get isWarning => status == 'warning';
  bool get isError => status == 'error';
}
