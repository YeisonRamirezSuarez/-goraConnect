import 'package:http/http.dart' as http;

import 'package:chat_app/src/models/usuario.dart';
import 'package:chat_app/src/models/usuarios_response.dart';
import 'package:chat_app/src/global/environment.dart';

import 'package:chat_app/src/services/auth_service.dart';

class UsuariosService {
  Future<List<Usuario>> getUsuarios() async {
    try {
      // Send the GET request to the API
      final resp = await http.get(Uri.parse('${Environment.apiUrl}/usuarios'),
          headers: {
            'Content-Type': 'application/json',
            'x-token': await AuthService.getToken()
          });

      if (resp.statusCode == 200) {
        final usuariosResponse = usuariosResponseFromJson(resp.body);
        return usuariosResponse.usuario ?? []; // Return empty list if null
      } else {
        print('Error fetching usuarios: ${resp.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error fetching usuarios: $e');
      return [];
    }
  }
}
