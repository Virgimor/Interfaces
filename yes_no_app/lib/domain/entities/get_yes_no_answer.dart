import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infraestructure/models/yes_no_models.dart';


class YesNoAnswer{
    final dio = Dio();

    Future<Message> getAnswer() async{
      final response = await dio.get('https://yesno.wtf/api');

      if(response.statusCode == 200){
        final yesNoModel = YesNoModel.fromJsonMap(response.data);
        return yesNoModel.toMessageEntity();
      }

        throw UnimplementedError();
    }
}

