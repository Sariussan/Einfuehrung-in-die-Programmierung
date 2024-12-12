class Robot {
  String name;

  void stellDichVor() {
    println("Hallo ich heiße " + name);
  }

  void sagWetter() {
    int choice = int(random(0, 3));
    switch(choice) {
      case 0:
        println("Das Wetter wird gut.");
        break;
      case 1:
        println("Bald gibt es Regen...");
        break;
      default:
        println("Ich kann schon Wolken sehen.");
        break;
    }
  }
  
  void tschues() {
    println(name + " sagt auf Wiedersehen!");
  }
}
