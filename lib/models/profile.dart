class Profile {
  String id;
  String name;
  int age;

  Profile(this.name, this.age) : id = DateTime.now().toString();
}
