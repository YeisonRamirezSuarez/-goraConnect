import 'dart:convert';

import 'package:AgoraConnect/src/models/usuario.dart';

UsuariosResponse usuariosResponseFromJson(String str) => UsuariosResponse.fromJson(json.decode(str));

String usuariosResponseToJson(UsuariosResponse data) => json.encode(data.toJson());

class UsuariosResponse {
    bool? ok;
    List<Usuario>? usuario;

    UsuariosResponse({
        this.ok,
        this.usuario,
    });

    factory UsuariosResponse.fromJson(Map<String, dynamic> json) => UsuariosResponse(
        ok: json["ok"],
        usuario: json["usuario"] == null 
            ? [] 
            : List<Usuario>.from(json["usuario"].map((x) => Usuario.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "ok": ok,
        "usuario": usuario == null 
            ? null 
            : List<dynamic>.from(usuario!.map((x) => x.toJson())),
    };
}
