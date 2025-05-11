import 'package:bloc_clean_architecture/utils/enum.dart';

class ApiResponse<T> {
  ApiStatus? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = ApiStatus.loading;

  ApiResponse.success(this.data) : status = ApiStatus.success;

  ApiResponse.error(this.message) : status = ApiStatus.error;

  @override
  String toString() {
    return "status $status message $message data $data";
  }
}
