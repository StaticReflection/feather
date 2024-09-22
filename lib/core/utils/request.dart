import 'package:dio/dio.dart';
import 'package:feather/app/data/models/host.dart';
import 'package:feather/core/exceptions/response.dart';
import 'package:feather/core/services/log.dart';

class Request {
  final Host host;
  final Dio _dio;

  Request({
    required this.host,
  }) : _dio = Dio();

  fetch() async {
    try {
      Response response = await _dio.get(host.url);
      var data = response.data;

      if (response.statusCode != 200) {
        throw ResponseException(
          type: ResponseExceptionType.statusCodeError,
          statusCode: response.statusCode,
        );
      } else if (data == null) {
        throw ResponseException(
          type: ResponseExceptionType.blankBody,
        );
      }

      return data;
    } catch (error) {
      log.error(error);
      return null;
    }
  }
}
