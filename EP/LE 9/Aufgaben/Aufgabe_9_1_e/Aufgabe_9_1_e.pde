void setup() {
  int n = parseInteger("421");
  println(n); // Should print 421
}

int parseInteger(String s) {
  int output = 0;

  for (int i = 0; i < s.length(); i++) {
    // Get the numeric value of the current character
    int digit = int(s.charAt(i)) - int('0');
    println("Digit: " + digit);
    
    // Calculate the power of ten based on the position 
    int power = s.length() - i - 1;
    
    // Update the output by adding the digit multiplied by the appropriate power of ten
    int wert = digit * int(pow(10, power));    
    println("Wert: " + wert);
    
    output = output + wert;
  }

  return output;
}
