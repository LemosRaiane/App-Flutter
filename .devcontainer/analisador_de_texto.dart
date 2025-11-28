// lib/models/usuario.dart
class Usuario {
  final int? id;
  final String nomeCompleto;
  final String cpf;
  final String dataNascimento; // Salvo como String (ISO 8601)
  final String email;
  final String senhaHash; // Senha criptografada (hash)

  Usuario({
    this.id,
    required this.nomeCompleto,
    required this.cpf,
    required this.dataNascimento,
    required this.email,
    required this.senhaHash,
  });

  // Método para converter o objeto Usuario em Map (para inserção no DB)
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nomeCompleto': nomeCompleto,
      'cpf': cpf,
      'dataNascimento': dataNascimento,
      'email': email,
      'senhaHash': senhaHash,
    };
  }

  // Método para criar um objeto Usuario a partir de um Map (lido do DB)
  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      id: map['id'],
      nomeCompleto: map['nomeCompleto'],
      cpf: map['cpf'],
      dataNascimento: map['dataNascimento'],
      email: map['email'],
      senhaHash: map['senhaHash'],
    );
  }
}