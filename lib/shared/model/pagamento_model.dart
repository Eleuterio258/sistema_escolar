import 'dart:convert';

class Pagamento {
  final int? id;
  final String mes;
  final String ano;
  final String multa;
  final String? status;
  final int valor;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  Pagamento({
    this.id,
    required this.mes,
    required this.ano,
    required this.multa,
    this.status,
    required this.valor,
    this.createdAt,
    this.updatedAt,
  });

 

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'mes': mes,
      'ano': ano,
      'multa': multa,
      'status': status,
      'valor': valor,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory Pagamento.fromMap(Map<String, dynamic> map) {
    return Pagamento(
      id: map['id']?.toInt(),
      mes: map['mes'] ?? '',
      ano: map['ano'] ?? '',
      multa: map['multa'] ?? '',
      status: map['status'],
      valor: map['valor']?.toInt() ?? 0,
      createdAt: map['createdAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['createdAt']) : null,
      updatedAt: map['updatedAt'] != null ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pagamento.fromJson(String source) => Pagamento.fromMap(json.decode(source));
}
