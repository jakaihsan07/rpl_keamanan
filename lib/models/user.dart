/// Model data untuk Pengguna (User).
class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;
  final String companyName;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.companyName,
  });

  /// Factory constructor untuk merubah JSON dari API menjadi objek [User].
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      website: json['website'] ?? '',
      companyName: json['company']?['name'] ?? '',
    );
  }

  /// Konversi objek [User] ke JSON.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'phone': phone,
      'website': website,
      'company': {'name': companyName},
    };
  }
}
