package androidAppModule42packageJava0;

public class Foo0 {
  public void foo0() {
    final Runnable anything = () -> System.out.println("anything");
    new module2packageJava0.Foo4().foo3();
    new module3packageJava0.Foo4().foo3();
    new module4packageJava0.Foo4().foo3();
    new module5packageJava0.Foo4().foo3();
    new module6packageJava0.Foo4().foo3();
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
