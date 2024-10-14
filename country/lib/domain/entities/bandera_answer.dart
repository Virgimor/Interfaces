import 'package:country/infraestructure/country_model.dart';
import 'package:dio/dio.dart';

class BanderaAnswer{
  final dio= Dio();

  Future<String?> getAnswer() async{
      final respuesta = await dio.get("https://restcountries.com/v3.1/name/spain");

      if(respuesta.statusCode == 200){
        final pais = CountryModel.fromJson(respuesta.data[0]);
        final Flags? bandera = pais.flags;

        return bandera?.png;
      } else{
        throw Exception('Error al obtener la respuesta de la API');
      }
    
  }
}