class ResponseAddBuku {
  ResponseAddBuku({
    num? status,
    String? message,
    DataAddBuku? data,
  }) {
    _status = status;
    _message = message;
    _data = data;
  }

  ResponseAddBuku.fromJson(dynamic json) {
    _status = json['status'] as num?;
    _message = json['message'] as String?;
    _data = json['data'] != null ? DataAddBuku.fromJson(json['data']) : null;
  }

  num? _status;
  String? _message;
  DataAddBuku? _data;

  ResponseAddBuku copyWith({
    num? status,
    String? message,
    DataAddBuku? data,
  }) =>
      ResponseAddBuku(
        status: status ?? _status,
        message: message ?? _message,
        data: data ?? _data,
      );

  num? get status => _status;
  String? get message => _message;
  DataAddBuku? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_data != null) {
      map['data'] = _data!.toJson();
    }
    return map;
  }
}

class DataAddBuku {
  DataAddBuku({
    String? kategoriId,
    String? judul,
    String? penulis,
    String? penerbit,
    String? image,
    String? tahunTerbit,
    String? deskripsi,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) {
    _kategoriId = kategoriId;
    _judul = judul;
    _penulis = penulis;
    _penerbit = penerbit;
    _image = image;
    _tahunTerbit = tahunTerbit;
    _deskripsi = deskripsi;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
  }

  DataAddBuku.fromJson(dynamic json) {
    _kategoriId = json['kategori_id'] as String?;
    _judul = json['judul'] as String?;
    _penulis = json['penulis'] as String?;
    _penerbit = json['penerbit'] as String?;
    _image = json['image'] as String?;
    _tahunTerbit = json['tahun_terbit'] as String?;
    _deskripsi = json['deskripsi'] as String?;
    _updatedAt = json['updated_at'] as String?;
    _createdAt = json['created_at'] as String?;
    _id = json['id'] as num?;
  }

  String? _kategoriId;
  String? _judul;
  String? _penulis;
  String? _penerbit;
  String? _image;
  String? _tahunTerbit;
  String? _deskripsi;
  String? _updatedAt;
  String? _createdAt;
  num? _id;

  DataAddBuku copyWith({
    String? kategoriId,
    String? judul,
    String? penulis,
    String? penerbit,
    String? image,
    String? tahunTerbit,
    String? deskripsi,
    String? updatedAt,
    String? createdAt,
    num? id,
  }) =>
      DataAddBuku(
        kategoriId: kategoriId ?? _kategoriId,
        judul: judul ?? _judul,
        penulis: penulis ?? _penulis,
        penerbit: penerbit ?? _penerbit,
        image: image ?? _image,
        tahunTerbit: tahunTerbit ?? _tahunTerbit,
        deskripsi: deskripsi ?? _deskripsi,
        updatedAt: updatedAt ?? _updatedAt,
        createdAt: createdAt ?? _createdAt,
        id: id ?? _id,
      );

  String? get kategoriId => _kategoriId;
  String? get judul => _judul;
  String? get penulis => _penulis;
  String? get penerbit => _penerbit;
  String? get image => _image;
  String? get tahunTerbit => _tahunTerbit;
  String? get deskripsi => _deskripsi;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kategori_id'] = _kategoriId;
    map['judul'] = _judul;
    map['penulis'] = _penulis;
    map['penerbit'] = _penerbit;
    map['image'] = _image;
    map['tahun_terbit'] = _tahunTerbit;
    map['deskripsi'] = _deskripsi;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    return map;
  }
}
