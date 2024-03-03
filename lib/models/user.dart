class User {
  User({
    required this.id,
    required this.name,
    this.email,
    this.phNo,
  });
  final String id;
  final String name;
  String? email;
  String? phNo;
}
