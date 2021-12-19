// To parse this JSON data, do
//
//     final pagamentoModel = pagamentoModelFromJson(jsonString);

import 'dart:convert';

PagamentoModel pagamentoModelFromJson(String str) => PagamentoModel.fromJson(json.decode(str));

String pagamentoModelToJson(PagamentoModel data) => json.encode(data.toJson());

class PagamentoModel {
    PagamentoModel({
        this.pagamentos,
    });

    List<Pagamento> pagamentos;

    factory PagamentoModel.fromJson(Map<String, dynamic> json) => PagamentoModel(
        pagamentos: List<Pagamento>.from(json["pagamentos"].map((x) => Pagamento.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pagamentos": List<dynamic>.from(pagamentos.map((x) => x.toJson())),
    };
}

class Pagamento {
    Pagamento({
        this.id,
        this.mes,
        this.ano,
        this.multa,
        this.status,
        this.valor,
        this.createdAt,
        this.updatedAt,
    });

    int id;
    String mes;
    String ano;
    String multa;
    String status;
    int valor;
    DateTime createdAt;
    DateTime updatedAt;

    factory Pagamento.fromJson(Map<String, dynamic> json) => Pagamento(
        id: json["id"],
        mes: json["mes"],
        ano: json["ano"],
        multa: json["multa"],
        status: json["status"],
        valor: json["valor"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "mes": mes,
        "ano": ano,
        "multa": multa,
        "status": status,
        "valor": valor,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
