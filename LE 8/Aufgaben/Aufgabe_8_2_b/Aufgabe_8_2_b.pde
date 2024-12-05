void setup() {
  Robot robot1 = new Robot();
  Robot robot2 = new Robot();

  robot1.name = "Franz";
  robot2.name = "Sissi";

  robot1.stellDichVor();
  robot1.sagWetter();
  robot1.tschues();
  
  robot2.stellDichVor();
  robot2.sagWetter();
  robot2.tschues();
}
