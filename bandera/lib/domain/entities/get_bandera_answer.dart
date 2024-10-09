import 'package:bandera/infraestructure/models/bandera_modelo.dart';
import 'package:dio/dio.dart';

class BanderaAnwer{
  final dio = Dio();

  Future<Message> getAnswer() async{
      final response = await dio.get('https://yesno.wtf/api');//aqui pones la bandera

      if(response.statusCode == 200){
        final CountryModel pais = CountryModel.fromJsonMap(response.data);
        
        final Flags bandera = pais.flags;
        bandera.png;
      }

        throw UnimplementedError();
    }
}