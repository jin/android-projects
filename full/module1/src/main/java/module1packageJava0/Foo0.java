package module1packageJava0;

public class Foo0 {
  public void foo0() {
    final Runnable anything = () -> System.out.println("anything");
    new module0packageJava0.Foo4().foo3();
    new module2packageJava0.Foo4().foo3();
    new module3packageJava0.Foo4().foo3();
    new module4packageJava0.Foo4().foo3();
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
