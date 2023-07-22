abstract class Burger{
  void prepare();
}

class BBurger implements Burger{
  void prepare(){}
}

class VBurger implements Burger{
  void prepare(){}
}

abstract class Restaurant{
  Burger createBurger();
  
  Burger orderBurger(){
    Burger burger= createBurger();
    burger.prepare();
    return burger;
  }
}

class BBRestaurant extends Restaurant{
  Burger createBurger(){
    return new BBurger();
  }
}

class VBRestaurant extends Restaurant{
  Burger createBurger(){
    return new VBurger();
  }
}