package module95packageJava0;

public class Foo1 {
  public void foo0() {
    final Runnable anything = () -> System.out.println("anything");
    new module95packageJava0.Foo0().foo2();
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
