package test;
import haxe.Constraints.Function;
import utest.Runner;
import utest.ui.Report;

class Test {
  static var oldTrace: Function;
  public static function main() {
    // Hack so neovim doesn't redirect me to PrintReport.hx each time I run a test
    oldTrace = haxe.Log.trace;
    haxe.Log.trace = function(v: Dynamic, ?infos:haxe.PosInfos) {
      if (infos.fileName == "utest/ui/text/PrintReport.hx") {
        oldTrace(v);
      } else {
        oldTrace(v, infos);
      }
    }

    //the long way
    var runner = new Runner();
    runner.addCases(test.specs);
    Report.create(runner);
    runner.run();
  }
}
