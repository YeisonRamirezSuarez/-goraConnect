import 'dart:convert';

Usuario usuarioFromJson(String str) => Usuario.fromJson(json.decode(str));

String usuarioToJson(Usuario data) => json.encode(data.toJson());

class Usuario {
  final String? nombre;  // Uso de null safety
  final String? email;   // Uso de null safety
  final bool online;     // Este campo es requerido, no se permite null
  final String? uid;     // Uso de null safety

  Usuario({
    this.nombre,
    this.email,
    required this.online,  // Se requiere este campo
    this.uid,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        nombre: json["nombre"] ?? '',  // Valor por defecto si 'nombre' es null
        email: json["email"] ?? '',     // Valor por defecto si 'email' es null
        online: json["online"] ?? false, // Valor por defecto si 'online' es null
        uid: json["uid"] ?? '',          // Valor por defecto si 'uid' es null
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre ?? '',  // Manejo de valor nulo
        "email": email ?? '',     // Manejo de valor nulo
        "online": online,         // Este campo no puede ser null
        "uid": uid ?? '',         // Manejo de valor nulo
      };
}
