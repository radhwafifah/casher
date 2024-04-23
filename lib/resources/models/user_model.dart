class UserModel {
  final int? id;
  final String email;
  final String nama;
  final String password;
  final String role;
  final String? createdAt;

  UserModel({
  this.id,
  required this.email,
  required this.nama,
  required this.password,
  required this.role,
  this.createdAt,
});

factory UserModel.fromMap(Map<String, dynamic> data) {return UserModel(
  id: data['id'],
  email: data['email'],
  nama: data['nama'],
  password: data['password'],
  role: data['role'],
  createdAt: data['createdAt'],
  );
}

Map<String, dynamic> toMap() => {
  'id': id,
  'email': email,
  'nama': nama,
  'password': password,
  'role': role,
  'createdAt': createdAt,
};
Map<String, dynamic> toMapInsert() => {
  'email': email,
  'nama': nama,
  'password': password,
  'role': role,
  'createdAt': createdAt,
};
}