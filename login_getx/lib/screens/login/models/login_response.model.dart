class LoginResponseModel {
  String? token;
  String? refreshToken;

  LoginResponseModel({this.token, this.refreshToken});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    refreshToken = json['refreshToken'];
  }
}
