void setup() {
  Member a = new Member("Hans");
  Member b = new Member("Anna");
  Member c = new Member("Franz");
  Member d = new Member("Julia");

  //set friendships
//   a.friend = b;
//   b.friend = c;
//   c.friend = d;
//   d.friend = c;


  //set friendships per setter 
  a.setFriend(b);
  c.setFriend(d);

  println("Freund von "  + a.name + " ist " + a.getFriendName());
  println("Freund von "  + b.name + " ist " + b.getFriendName());
  println("Freund von "  + c.name + " ist " + c.getFriendName());
  println("Freund von "  + d.name + " ist " + d.getFriendName());
}