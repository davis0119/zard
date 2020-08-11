class User {
  bool isCustomer;
  String name;
  String email;
  String password;
  String country;
  User({this.isCustomer, this.name, this.email, this.password, this.country});

  getName(User someUser) {
    return someUser.email;
  }
}
