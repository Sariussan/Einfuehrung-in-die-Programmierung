int[] foo = { 1, 2, 3, 4 };

int[] bar = new int[4];

for (int i = 0; i < foo.length; i++) {
  bar[i] = foo[3-i];
}

println(bar);
