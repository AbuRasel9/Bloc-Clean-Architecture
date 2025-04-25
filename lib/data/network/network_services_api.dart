import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_clean_architecture/data/exception/app_exception.dart';
import 'package:bloc_clean_architecture/data/network/base_api_services.dart';
import 'package:http/http.dart';
import 'package:http/src/response.dart';

class NetworkServicesApi extends BaseApiServices {
  ///get api call
  @override
  Future<Response> getRequest(String url) async {
    Response jsonResponse;
    try {
      Response response =
          await get(Uri.parse(url)).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      //internet exception
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException("Timeout Try Again");
    }
    return jsonResponse;
  }

  ///post api call
  @override
  Future<Response> postRequest(String url, Map<String, dynamic> data) async {
    Response jsonResponse;
    try {
      Response response = await post(
        Uri.parse(url),
        body: data,
        headers: {
          "Content-Type":"application/json",
          "Accept":"application/json"
        }
      ).timeout(const Duration(seconds: 50));
      jsonResponse = returnResponse(response);
    } on SocketException {
      //internet exception
      throw NoInternetException();
    } on TimeoutException {
      throw FetchDataException("Timeout Try Again");
    }
    return jsonResponse;
  }

  ///parses the [response]and returns the corresponding json data
  ///
  /// Throws [FetchDataException] with the appropiriate error message
  Response returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 400:
        return jsonDecode(response.body);
      case 401:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorizedException(response.body.toString());
      default:
        throw FetchDataException(
            "Error occurred while communicating with server");
    }
  }
}
