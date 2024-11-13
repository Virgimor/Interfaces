class IncidenciasDto {

    final String numeroAula;
    final String nombreProfesor;
    final String fechaActual;
    final String descripcionIncidencia;

    IncidenciasDto({

        required this.numeroAula,
        required this.nombreProfesor,
        required this.fechaActual,
        required this.descripcionIncidencia,

    });
        factory IncidenciasDto.fromJson(Map<String, dynamic> json) => IncidenciasDto(
        numeroAula: json["numeroAula"],
        nombreProfesor: json["nombreProfesor"],
        fechaActual: json["fechaActual"],
        descripcionIncidencia: json["descripcionIncidencia"],

    );
     Map<String, dynamic> toJson() {
    return {
      'numeroAula': numeroAula,
      'nombreProfesor': nombreProfesor,
      'fechaActual': fechaActual,
      'descripcionIncidencia': descripcionIncidencia,
    };
  }
}