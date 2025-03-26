package test.specs;
import utest.Assert;
import utest.Async;

class DefaultTest extends utest.Test {
  function testWork() {
    Assert.equals(1,1, "Running unit tests works");
    }
}
