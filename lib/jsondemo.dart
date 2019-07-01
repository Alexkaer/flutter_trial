import 'dart:convert';

class User {
  String name;
  String email;

  User(this.name, this.email);

  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() => {'name': name, 'email': email};
}

main() {
  String jsonStr = '{"name":"zhy","email":"623565791@qq.com"}';
  var user = User.fromJson(json.decode(jsonStr));
  print(user.name);
  print(user.toJson());
}
