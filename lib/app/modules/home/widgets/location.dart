import 'package:flutter/widgets.dart';

class Location extends StatelessWidget {
  final String? location;
  final String? weather;
  const Location({
    required this.location,
    required this.weather,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('$location - $weather');
  }
}
