class LoginModels {
    String? id;
    String? nombre;
    String? clave;

    LoginModels({
      this.id, 
      this.nombre, 
      this.clave}); 

    LoginModels.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        nombre = json['nombre'];
        clave = json['clave'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = Map<String, dynamic>();
        data['id'] = id;
        data['nombre'] = nombre;
        data['clave'] = clave;
        return data;
    }
}
