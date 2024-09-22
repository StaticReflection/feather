import 'package:flutter/material.dart';

class WeatherForecastVideo extends StatelessWidget {
  final String? title;
  final String? pubDate;

  const WeatherForecastVideo({
    required this.title,
    required this.pubDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title.toString()),
            Text(
              pubDate.toString(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
