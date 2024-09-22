import 'package:feather/app/data/models/location.dart';
import 'package:feather/app/data/providers/location_api.dart';

class LocationRepository {
  final LocationApi api;

  LocationRepository(this.api);

  Future<List<Location>?> getProvinceList() => api.getLocationList();
  Future<List<Location>?> getCityList(String provinceCode) => api.getLocationList(provinceCode: provinceCode);
}
