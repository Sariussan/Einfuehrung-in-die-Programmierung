int[] a = new int[10];
int[] b = new int[10];

for (int i = 0; i < 10; i++) {
    a[i] = i + 1;
    b[i] = (10 - i) * -1;
}

println(a);

println(b);