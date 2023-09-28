class LoginInput {
  String? contact;
  String? password;
  String? loginType;
  String? devicetoken;
  String? rememberMe;
  LoginInput({
    required this.contact,
    required this.password,
    required this.loginType,
    required this.devicetoken,
    required this.rememberMe,
  });

  factory LoginInput.fromJson(Map<String, dynamic> json) => LoginInput(
        contact: json["contact"],
        password: json["password"],
        loginType: json["loginType"],
        devicetoken: json["devicetoken"],
        rememberMe: json["rememberMe"],
      );
  Map<String, dynamic> toJson() => {
        "loginInput": {
          "contact": contact,
          "password": password,
          "loginType": loginType,
          "deviceToken": devicetoken,
          "rememberMe": rememberMe,
        }
      };
}
