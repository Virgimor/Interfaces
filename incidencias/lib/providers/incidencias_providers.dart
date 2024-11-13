import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:incidencias/config/helper/respuesta.dart';
import 'package:incidencias/infraestructure/models/incidencias_dto_models.dart';
import 'package:incidencias/infraestructure/models/incidencias_models.dart';

class IncidenciasProviders extends ChangeNotifier{

  List<Incidencias> incidencias = [];

  final dio = Dio();

  Future<void> getIncidencias() async{
    incidencias.clear();
    final actualizarIncidencias = await Respuesta().getAnswer();
  
    incidencias.addAll(actualizarIncidencias);
    notifyListeners();
  }

  Future <void> crearIncidencias(aula, nombreProfesor, fechaActual, descripcionIncidencia) async{
    IncidenciasDto nuevaIncidencia = IncidenciasDto(numeroAula: aula, nombreProfesor: nombreProfesor, fechaActual: fechaActual, descripcionIncidencia: descripcionIncidencia);
    FormData formData = FormData.fromMap(nuevaIncidencia.toJson());

    await dio.post("http://localhost:8081/incidenciasTic/crear_incidencia",
    data: formData,
    options: Options(contentType: 'multipart/form-data'));
    
  }
  
}