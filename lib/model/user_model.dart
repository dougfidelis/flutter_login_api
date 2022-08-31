import 'dart:convert';

class UserModel {
  final String email;
  final String senha;
  final String nome;
  final int id;
  UserModel({
    required this.email,
    required this.senha,
    required this.nome,
    required this.id,
  });

  UserModel copyWith({
    String? email,
    String? senha,
    String? nome,
    int? id,
  }) {
    return UserModel(
      email: email ?? this.email,
      senha: senha ?? this.senha,
      nome: nome ?? this.nome,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'senha': senha});
    result.addAll({'nome': nome});
    result.addAll({'id': id});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] ?? '',
      senha: map['senha'] ?? '',
      nome: map['nome'] ?? '',
      id: map['id']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(email: $email, senha: $senha, nome: $nome, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.email == email &&
        other.senha == senha &&
        other.nome == nome &&
        other.id == id;
  }

  @override
  int get hashCode {
    return email.hashCode ^ senha.hashCode ^ nome.hashCode ^ id.hashCode;
  }
}
