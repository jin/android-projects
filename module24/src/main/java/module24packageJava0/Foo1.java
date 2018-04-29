package module24packageJava0;

public class Foo1 {
  public void foo0() {
    final Runnable anything = () -> System.out.println("anything");
    new module24packageJava0.Foo0().foo4();
  }

  public void foo1() {
    final Runnable anything = () -> System.out.println("anything");
    foo0();
  }

  public void foo2() {
    final Runnable anything = () -> System.out.println("anything");
    foo1();
  }

  public void foo3() {
    final Runnable anything = () -> System.out.println("anything");
    foo2();
  }

  public void foo4() {
    final Runnable anything = () -> System.out.println("anything");
    foo3();
  }
}
