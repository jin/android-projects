package module1packageJava0;

public class Foo0 {
  public void foo0() {
    new module3packageJava0.Foo0().foo3();
    new module4packageJava0.Foo0().foo3();
    new module2packageJava0.Foo0().foo3();
  }

  public void foo1() {
    foo0();
  }

  public void foo2() {
    foo1();
  }

  public void foo3() {
    foo2();
  }
}
