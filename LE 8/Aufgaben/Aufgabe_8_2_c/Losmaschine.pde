class Losmaschine {
  String[] lose = { "Niete", "Niete", "1 Punkt", "Niete", "1 Punkt", "10 Punkte" };

  String losZiehen() {
    return lose[int(random(lose.length))];
  }
}  
