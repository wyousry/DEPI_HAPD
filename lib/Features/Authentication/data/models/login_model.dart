class LoginModel {
  final String email;
  final String password;

  LoginModel({
    required this.email,
    required this.password,
  });

  factory LoginModel.fromJson(json) {
    return LoginModel(
      email: json['email'],
      password: json['password'],
    );
  }
}
