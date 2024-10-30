import 'dart:convert';

List<LoginModels> loginModelsFromJson(String str) => List<LoginModels>.from(json.decode(str).map((x) => LoginModels.fromJson(x)));

String loginModelsToJson(List<LoginModels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class LoginModels {
    String id;
    String nombre;
    String clave;

    LoginModels({
        required this.id,
        required this.nombre,
        required this.clave,
    });

    factory LoginModels.fromJson(Map<String, dynamic> json) => LoginModels(
        id: json["id"],
        nombre: json["nombre"],
        clave: json["clave"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "clave": clave,
    };
}
