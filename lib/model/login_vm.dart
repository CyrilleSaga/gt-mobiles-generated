part of swagger.api;

class LoginVM {
  String? password;

  bool? rememberMe;

  String? username;

  LoginVM({
    this.password,
    this.rememberMe,
    this.username,
  });

  @override
  String toString() {
    return 'LoginVM[password=$password, rememberMe=$rememberMe, username=$username, ]';
  }

  LoginVM.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    password = json['password'];
    rememberMe = json['rememberMe'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password,
      'rememberMe': rememberMe,
      'username': username
    };
  }

  static List<LoginVM> listFromJson(List<dynamic>? json) {
    return json == null
        ? <LoginVM>[]
        : json.map((value) => new LoginVM.fromJson(value)).toList();
  }

  static Map<String, LoginVM> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, LoginVM>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new LoginVM.fromJson(value));
    }
    return map;
  }
}
