class AuthModel {
  String? msg;
  int? state;
  Data? data;

  AuthModel({this.msg, this.state, this.data});

  AuthModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    state = json['state'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = msg;
    data['state'] = state;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? sId;
  String? email;
  String? password;
  String? phone;
  String? username;

  Data({
    this.sId,
    this.email,
    this.password,
    this.phone,
    this.username,
  });

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = sId;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['username'] = username;
    return data;
  }
}
