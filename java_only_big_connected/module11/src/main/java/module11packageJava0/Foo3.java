package module11packageJava0;

public class Foo3 {
  public void foo0() {
    final Runnable anything = () -> System.out.println("anything");
    new module11packageJava0.Foo2().foo2();
  }

  public void foo1() {
    final Runnable anything = () -> System.out.println("anything");
    foo0();
  }

  public void foo2() {
    final Runnable anything = () -> System.out.println("anything");
    foo1();
  }
}