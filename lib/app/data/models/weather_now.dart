class WeatherNow {
  // 位置
  final String id; // 城市代号
  final String name; // 城市名
  final String path; // 城市路径
  // 现在
  final double precipitation; // 降水
  final double temperature; // 温度
  final double pressure; // 压力
  final double humidity; // 湿度
  final String windDirection; // 风向
  final double windDirectionDegree; // 风向度
  final double windSpeed; // 风速
  final String windScale; // 风速级别

  WeatherNow({
    required this.id,
    required this.name,
    required this.path,
    required this.precipitation,
    required this.temperature,
    required this.pressure,
    required this.humidity,
    required this.windDirection,
    required this.windDirectionDegree,
    required this.windSpeed,
    required this.windScale,
  });
}
