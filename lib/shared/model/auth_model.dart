class AuthModel {
  String message;
  String token;
  int expiresIn;

  AuthModel({this.message, this.token, this.expiresIn});

  AuthModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['token'] = this.token;
    data['expires_in'] = this.expiresIn;
    return data;
  }

  @override
  String toString() {
    return 'Usuario(message: $message token: $token)';
  }
}
