import 'package:feather/app/data/enum/request_method.dart';

class Host {
  String url;
  RequestMethod requestMethod;
  Host({
    required this.url,
    required this.requestMethod,
  });
}
