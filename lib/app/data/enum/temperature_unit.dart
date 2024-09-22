enum TemperatureUnit {
  celsius,
  fahrenheit;

  @override
  String toString() {
    switch (this) {
      case TemperatureUnit.celsius:
        return '°C';
      case TemperatureUnit.fahrenheit:
        return '°F';
      default:
        throw Error();
    }
  }
}
