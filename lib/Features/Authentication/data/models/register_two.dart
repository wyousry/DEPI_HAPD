class RegisterTwo {
  final String name;

  RegisterTwo({
    required this.name,
  });

  factory RegisterTwo.fromJson(jsonData) {
    return RegisterTwo(
      name: jsonData['name'] ?? 'nnn',
    );
  }
}
 