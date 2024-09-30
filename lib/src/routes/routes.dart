
import 'package:AgoraConnect/src/pages/chat_page.dart';
import 'package:AgoraConnect/src/pages/loading_page.dart';
import 'package:AgoraConnect/src/pages/login_page.dart';
import 'package:AgoraConnect/src/pages/register_page.dart';
import 'package:AgoraConnect/src/pages/usuarios_page.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'users': (_) =>  UsuariosPage(),
  'chat': (_) =>  ChatPage(),
  'register': (_) =>  RegisterPage(),
  'login': (_) =>  LoginPage(),
  'loading': (_) =>  LoadingPage(),
};