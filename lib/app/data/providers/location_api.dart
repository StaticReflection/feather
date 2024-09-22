import 'package:feather/app/data/models/location.dart';
import 'package:feather/core/services/log.dart';
import 'package:feather/core/utils/request.dart';
import 'package:feather/core/values/hosts.dart';

class LocationApi {
  LocationApi();

  Future<List<Location>?> getLocationList({String? provinceCode}) async {
    Request request;
    if (provinceCode == null) {
      request = Request(host: Hosts.provinceList);
    } else {
      request = Request(host: Hosts.cityList(provinceCode));
    }

    Map map = await request.fetch();
    RegExp pattern = RegExp(r'(\w+),([\u4e00-\u9fa5]+)');
    Iterable<RegExpMatch> regExpMatch = pattern.allMatches(map['data']);

    if (regExpMatch.first.group(1) == null) {
      log.error('未找到匹配项: $map');
      return null;
    }

    List<Location> locationList = [];
    for (var element in regExpMatch) {
      locationList
          .add(Location(code: element.group(1)!, name: element.group(2)!));
    }

    return locationList;
  }
}
