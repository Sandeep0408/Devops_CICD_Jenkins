package test.java.com.java.springboothelloworld;

class Calculator {
    
    public static int add(int x, int y){
      return x + y;
    }

}

@Test
public void testAdd() throws Exception {
  int result = Calculator.add(10, 20);
  assertEquals(30, result);
}