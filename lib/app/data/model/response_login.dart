/// status : 200
/// message : "Login Success"
/// data : {"id":17,"username":"almoez","nama":"Ali Almoez","telp":"081238452344","alamat":"Prapatan Doha","role":"PETUGAS","created_at":"2024-04-22T03:09:19.000000Z","updated_at":"2024-04-22T03:09:19.000000Z"}

class ResponseLogin {
  ResponseLogin({
    int? status,
    String? message,
    DataLogin? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ResponseLogin.fromJson(dynamic json) {
    _status = json['status'] as int?;
    _message = json['message'] as String?;
    _data = json['data']!= null? DataLogin.fromJson(json['data']) : null;
  }

  int? _status;
  String? _message;
  DataLogin? _data;

  ResponseLogin copyWith({
    int? status,
    String? message,
    DataLogin? data,
  }) => ResponseLogin(
    status: status?? _status,
    message: message?? _message,
    data: data?? _data,
  );

  int? get status => _status;
  String? get message => _message;
  DataLogin? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data!= null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}

class DataLogin {
  DataLogin({
    int? id,
    String? username,
    String? nama,
    String? telp,
    String? alamat,
    String? role,
    String? createdAt,
    String? updatedAt,
  }) {
    _id = id;
    _username = username;
    _nama = nama;
    _telp = telp;
    _alamat = alamat;
    _role = role;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
  }

  DataLogin.fromJson(dynamic json) {
    _id = json['id'] as int?;
    _username = json['username'] as String?;
    _nama = json['nama'] as String?;
    _telp = json['telp'] as String?;
    _alamat = json['alamat'] as String?;
    _role = json['role'] as String?;
    _createdAt = json['created_at'] as String?;
    _updatedAt = json['updated_at'] as String?;
  }

  int? _id;
  String? _username;
  String? _nama;
  String? _telp;
  String? _alamat;
  String? _role;
  String? _createdAt;
  String? _updatedAt;

  DataLogin copyWith({
    int? id,
    String? username,
    String? nama,
    String? telp,
    String? alamat,
    String? role,
    String? createdAt,
    String? updatedAt,
  }) => DataLogin(
    id: id?? _id,
    username: username?? _username,
    nama: nama?? _nama,
    telp: telp?? _telp,
    alamat: alamat?? _alamat,
    role: role?? _role,
    createdAt: createdAt?? _createdAt,
    updatedAt: updatedAt?? _updatedAt,
  );

  int? get id => _id;
  String? get username => _username;
  String? get nama => _nama;
  String? get telp => _telp;
  String? get alamat => _alamat;
  String? get role => _role;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['nama'] = _nama;
    map['telp'] = _telp;
    map['alamat'] = _alamat;
    map['role'] = _role;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }
}