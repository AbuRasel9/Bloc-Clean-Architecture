import 'package:http/http.dart';

abstract class BaseApiServices {
  Future<Response>getRequest(String url);
  Future<Response>postRequest(String url,Map<String,dynamic>dta);

}