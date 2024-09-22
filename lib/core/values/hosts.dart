import 'package:feather/app/data/enum/request_method.dart';
import 'package:feather/app/data/models/host.dart';

class Hosts {
  static Host provinceList = Host(
    url: 'https://weather.cma.cn/api/dict/province',
    requestMethod: RequestMethod.get,
  );
  static Host cityList(provinceCode) => Host(
        url: 'https://weather.cma.cn/api/dict/province/$provinceCode',
        requestMethod: RequestMethod.get,
      );

  static Host weatherForecastVideoList = Host(
    url: 'https://www.weather.com.cn/pubm/video_lianbo_2021.htm',
    requestMethod: RequestMethod.get,
  );

  static Host weatherNow(cityCode) => Host(
        url: 'https://weather.cma.cn/api/now/$cityCode',
        requestMethod: RequestMethod.get,
      );

  static Host weatherForecast(cityCode) => Host(
        url: 'https://weather.cma.cn/web/weather/$cityCode.html',
        requestMethod: RequestMethod.get,
      );
}
