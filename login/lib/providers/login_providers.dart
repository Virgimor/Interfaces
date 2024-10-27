import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:login/infraestructure/models/login_models.dart';

class LoginProviders extends ChangeNotifier {

  List <LoginModels> usuarios = [];

  final dio =Dio();

  Future<void> getUsuarios() async{
    final respuesta = await dio.get('https://script.googleusercontent.com/a/macros/g.educaand.es/echo?user_content_key=WmPXwhAH1oVjdc8mt27dPDwGtGEfNKA4wGBV57mUHQkTReO2wjkWY4cni5rp4PmeSv0qUZMU9EO7rUtaPKkoKHn3C6MpomhTOJmA1Yb3SEsKFZqtv3DaNYcMrmhZHmUMi80zadyHLKAUKE7B4g-fT_vZNoUciZTzS4chwneYR2urT0OM2zEBbBLNfzwTpNJjUvboZ6ayjMeezwaN-Iry1kQOYUS7DhokIAOry5zlE9A-k7p-2xoDq4ohHNMlbg6j3dFdO_xKmKQKYTYbGEafFZdjNkiMNZhvG3ffP6n7gG7dZ5cia3LsDSruB-nvJA9fcj_h27wQpWsBjA5cKJEZDuX_nZYZ3O3fS5rORBjE8CPghuHni-NpXQ&lib=M6ZM6qY1VBvJJM1lT5cB4MxmyMIRua4Bj');
    final usuarioActuales = respuesta.data;

    usuarios.addAll(loginModelsFromJson(usuarioActuales));
    notifyListeners();
  }
}