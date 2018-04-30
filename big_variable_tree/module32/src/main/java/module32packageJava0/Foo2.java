package module32packageJava0;

public class Foo2 {
  public void foo0() {
    final Runnable anything = () -> System.out.println("anything");
    new module32packageJava0.Foo1().foo3();
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
}
