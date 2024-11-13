import 'package:dio/dio.dart';
import 'package:iseneca/models/incidencias_models.dart';

class Respuesta {

  final dio = Dio();

   Future<List<Incidencias>> getAnswer() async {
    final response = await dio.get("http://localhost:8081/incidenciasTic/mostrar_incidencias");

    if (response.statusCode == 200) {
      // Decodifica y mapea la respuesta a una lista de Incidencias
      List<dynamic> data = response.data;
      return data.map((item) => Incidencias.fromJson(item)).toList();
    } else {
      print("Error al obtener las incidencias");
      throw Exception("Error al obtener las incidencias");
    }
  }
  
}