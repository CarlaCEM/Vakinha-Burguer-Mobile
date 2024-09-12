
import 'package:get/get.dart';

class RestClient extends GetConnect{
  
  final _backendBaseUrl = 'http://192.168.15.77:8080/'; 

  RestClient(){
    httpClient.baseUrl = _backendBaseUrl;
  }

}

class RestClientException implements Exception {
  
  final int? code;
  final String message;
  
  RestClientException(
     this.message, {
     this.code
  });


@override
String toString() {
    return 'RestClientException{code: $code, message: $message}';
  }
}

