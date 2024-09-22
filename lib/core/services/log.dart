import 'dart:io';

import 'package:feather/core/values/constants.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart';

final LogService log = LogService();

enum LogLevel {
  all(name: ''),
  trace(name: 'T'),
  debug(name: 'D'),
  info(name: 'I'),
  warnning(name: 'W'),
  error(name: 'E'),
  fatal(name: 'F'),
  off(name: '');

  final String name;
  const LogLevel({required this.name});
}

class LogService {
  late File _logFile;
  LogLevel level = LogLevel.debug;

  LogService() {
    _logFile = File(join(
      Constants.logDirPath.path,
      '${DateFormat('yyyy-MM-dd_HH-mm-ss').format(DateTime.now())}.log',
    ));
    _logFile.createSync(recursive: true);
  }

  void _output(Object message, LogLevel level) {
    if (level.index >= this.level.index) {
      _logFile.writeAsStringSync(
        '[${level.name}] ${DateFormat('MM/dd-HH:mm:ss.SSS').format(DateTime.now())} ${message.toString()}\n',
        mode: FileMode.writeOnlyAppend,
        flush: true,
      );
    }
  }

  void trace(Object message) async {
    _output(message, LogLevel.trace);
  }

  void debug(Object message) async {
    _output(message, LogLevel.debug);
  }

  void info(Object message) async {
    _output(message, LogLevel.info);
  }

  void warnning(Object message) async {
    _output(message, LogLevel.warnning);
  }

  void error(Object message) async {
    _output(message, LogLevel.error);
  }

  void fatal(Object message) async {
    _output(message, LogLevel.fatal);
  }
}
