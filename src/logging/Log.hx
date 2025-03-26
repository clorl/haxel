package logging;
import haxe.Constraints;
import haxe.PosInfos;

enum LogLevel {
  None;
  Fatal;
  Error;
  Warn;
  Info;
  Trace;
}

class Log extends haxe.Log {

  static var defaultTrace: Function;
  static var isInit = false;
  static var curLogLevel = LogLevel.Info;
  public static function init() {
    if (!isInit) {
      defaultTrace = haxe.Log.trace;
      haxe.Log.trace = trace;
      isInit = true;
    }
  }
  public static function trace(v: Dynamic, ?infos:Null<PosInfos>) {
    if (!isInit) {
      init();
    }
    defaultTrace(v, infos);
  }

  public static function setLevel(level: LogLevel) {
    curLogLevel = level;
  }

  public static function log(message: String, ?infos:Null<PosInfos>, level: LogLevel) {
    var prefix = "";
    switch (level) {
      case Fatal:
        prefix = "[FTL]";
      case Error:
        prefix = "[ERR]";
      case Warn:
        prefix = "[WARN]";
        infos = null;
      case Info:
        prefix = "[INFO]";
        infos = null;
      case Trace:
        prefix = "[TRACE]";
      case None:
        prefix = "";
    }
  }
}
