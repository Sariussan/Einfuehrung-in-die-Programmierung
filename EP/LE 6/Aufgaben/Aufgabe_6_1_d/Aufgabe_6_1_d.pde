int z = 2;
int n = 5;

// Create the array with length n
int[] oneHot = new int[n];

// Set the z-th position to 1
oneHot[z] = 1;

// Print the array
for (int i = 0; i < n; i++) {
  println("[" + i + "] " + oneHot[i]);
}
