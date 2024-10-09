import 'package:bandera/infraestructure/models/bandera_modelo.dart';
import 'package:dio/dio.dart';

class BanderaAnwer{
  final dio = Dio();

  Future<String> getAnswer() async{
      final response = await dio.get('https://restcountries.com/v3.1/name/spain');//aqui pones la bandera

      if(response.statusCode == 200){
        final pais = CountryModel.fromJsonMap(response.data);
        
        final Flags bandera = pais.flags;
        return bandera.png;
      }

        throw UnimplementedError();
    }
}