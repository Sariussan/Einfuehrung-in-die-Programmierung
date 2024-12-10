class Member {
  String name;
  Member friend;

  Member(String n) {
    name = n;
  }

  String getFriendName() {
    if(friend != null) {
      return this.friend.name;
    }else {
      return "niemand";
    }
  }

  //Getters and Setters
  void setFriend(Member f) {
    this.friend = f;
    f.friend = this;
  }

}