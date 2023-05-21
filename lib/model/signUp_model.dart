class SignUpMpdel {
  String name;
  String password;
  String phone;

  SignUpMpdel(this.name, this.password, this.phone);

  @override
  String toString() {
    return "Name: $name, Password: $password, Phone: $phone";
  }
}
