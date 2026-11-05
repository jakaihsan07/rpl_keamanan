import 'package:flutter/foundation.dart';

/// Class Logger terstruktur yang aman untuk mode debug[cite: 17].
class Logger {
  static void debug(String message) {
    if (kDebugMode) {
      debugPrint('[DEBUG] 🐛 $message');
    }
  }

  static void info(String message) {
    if (kDebugMode) {
      debugPrint('[INFO] ℹ️ $message');
    }
  }

  static void warning(String message) {
    if (kDebugMode) {
      debugPrint('[WARNING] ⚠️ $message');
    }
  }

  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    if (kDebugMode) {
      debugPrint('[ERROR] ❌ $message');
      if (error != null) debugPrint('Details: $error');
      if (stackTrace != null) debugPrint('StackTrace: $stackTrace');
    }
  }
}
