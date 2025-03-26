import logging.Log;
import haxe.io.Output;

class Main {
  public static function main() {
    Log.init();
    var result = -1;
    while (true) {
      var result = loop();
      if (result >= 0) {
        break;
      }
    }
  }

  /// Any return >= 0 stops the program
  private static function loop() : Int {
    Sys.stdout().writeString("Foo");
    Sys.stdout().flush();
    trace("test");

    return 0;
  }
}
