class WeatherForecast {
  final String dayOfWeek; // 星期几
  final String date; // 日期
  final double maxTemperature; // 最高温度
  final double minTemperature; // 最低温度
  final String dayWeather; // 白天天气
  final String dayWindDirection; // 白天风向
  final String dayWindScale; // 白天风速级别
  final String nightWeather; // 晚上天气
  final String nightWindDirection; // 晚上风向
  final String nightWindScale; // 晚上风速级别

  WeatherForecast({
    required this.dayOfWeek,
    required this.date,
    required this.maxTemperature,
    required this.minTemperature,
    required this.dayWeather,
    required this.dayWindDirection,
    required this.dayWindScale,
    required this.nightWeather,
    required this.nightWindDirection,
    required this.nightWindScale,
  });
}
