class LoginResponse {
  final bool success;
  final String message;
  final User user;
  final String token;

  LoginResponse({
    required this.success,
    required this.message,
    required this.user,
    required this.token,
  });

  // Factory constructor to parse the response JSON
  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      success: json['success'],
      message: json['message'],
      user: User.fromJson(json['user']),
      token: json['token'],
    );
  }
}

class User {
  final String uid;
  final String email;

  User({
    required this.uid,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      uid: json['uid'],
      email: json['email'],
    );
  }
}