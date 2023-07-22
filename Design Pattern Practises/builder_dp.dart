class Car {
  String? _model;

  Car._Car(String? model) {
    this._model = model;
  }
}

class CarBuilder {
  String? _model;

  CarBuilder? model(String? model) {
    this._model = model;
  }

  Car build() {
    return new Car._Car(_model);
  }
}

class Director {
  void buildCar(CarBuilder build) {
    build._model = "model";
  }
}

void main() {
  CarBuilder build = new CarBuilder();
  Director director = new Director();
  director.buildCar(build);
  Car car = build.build();
}
