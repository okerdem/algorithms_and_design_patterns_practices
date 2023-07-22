abstract class Burger {
  void prepare();
}

class BBurger implements Burger {
  void prepare() {}
}

class VBurger implements Burger {
  void prepare() {}
}

abstract class Chips {
  void fry();
}

class BChips implements Chips {
  void fry() {}
}

class VChips implements Chips {
  void fry() {}
}

abstract class Restaurant {
  Burger createBurger();
  Chips createChips();

  Chips orderChips() {
    Chips chips = createChips();
    chips.fry();
    return chips;
  }

  Burger orderBurger() {
    Burger burger = createBurger();
    burger.prepare();
    return burger;
  }
}

class BRestaurant extends Restaurant {
  Burger createBurger() {
    return new BBurger();
  }

  Chips createChips() {
    return new BChips();
  }
}

class VRestaurant extends Restaurant {
  Burger createBurger() {
    return new VBurger();
  }

  Chips createChips() {
    return VChips();
  }
}
