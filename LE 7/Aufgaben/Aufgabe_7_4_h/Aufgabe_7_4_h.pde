int[] numbers = {0, -1, -10, 30, -134, 134, 15};

void setup() {
  println(filterArrayPositiveNice(numbers));
  println(filterArrayPositive(numbers));
}

//FilterPositives
int[] filterArrayPositiveNice(int[] arr) {
  int[] posnumbers = new int[0];
  //Fillarray
  for (int number : arr) {
    if (number > 0) {
      posnumbers = append(posnumbers, number);
    }
  }
  return posnumbers;
}


// the way its supposed to happen here
int[] filterArrayPositive(int[] arr) {
  //Count positives
  int count = 0;
  for (int number : arr) {
    if (number > 0) {
      count++;
      //DEBUG
      boolean result = number > 0;
      println("Number: " + number + " > 0: " + result + "Count: " + count);
    }
  }
  int[] posnumbers = new int[count];
  //Fillarray
  count = 0;
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] > 0) {
      posnumbers[count] = arr[i];
      count++;
    }
  }

  return posnumbers;
}
