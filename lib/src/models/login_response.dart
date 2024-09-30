import 'dart:convert';

import 'package:AgoraConnect/src/models/usuario.dart';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  final bool? ok;
  final Usuario? usuario;
  final String? token;

  LoginResponse({
    this.ok,
    this.usuario,
    this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        ok: json["ok"] ?? false, // Valor por defecto si 'ok' es null
        usuario: json["usuario"] != null ? Usuario.fromJson(json["usuario"]) : null,
        token: json["token"] ?? '', // Valor por defecto si 'token' es null
      );

  Map<String, dynamic> toJson() => {
        "ok": ok ?? false, // Manejo de valor nulo
        "usuario": usuario?.toJson(), // Solo llama toJson si 'usuario' no es null
        "token": token ?? '',
      };
}