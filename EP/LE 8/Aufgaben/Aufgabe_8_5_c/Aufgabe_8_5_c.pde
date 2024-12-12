void setup() {
  Person[] personal = new Person[4];
  personal[0] = new Person("Harry", 36, 1.80);
  personal[1] = new Person("Sally", 26, 1.71);
  personal[2] = new Person("Angie", 56, 1.60);
  personal[3] = new Person("Jerry", 15, 1.75);

  // Hier Funktion testen
  Person[] result = getByAge(personal, 30);
  // jetzt For-Schleife zum Ausgeben der Namen
  println("All people over 30");
  for (int i = 0; i < result.length; i++) {
    println(result[i].name);
  }
}
Person[] getByAge(Person[] p, int x) {
  Person[] ret = new Person[1];
  for (int i = 0; i < p.length; i++) {
    if (p[i].alter > x) {
      append(ret, p[i]);
    }
  }
  return ret;
}
