import 'package:flutter/material.dart';

class MeteorologicalParameter extends StatelessWidget {
  final IconData icon;
  final String? value;
  final String? unit;
  const MeteorologicalParameter({
    required this.icon,
    this.value,
    this.unit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        Text('$value$unit', style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
