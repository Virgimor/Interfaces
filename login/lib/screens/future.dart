import 'package:flutter/material.dart';
import 'package:dio/dio.dart';


class SecondScreen extends StatelessWidget {
  final String username;
  final String password;

  SecondScreen({required this.username, required this.password});

  Future<bool> authenticateUser() async {
    final String spreadsheetId = 'TU_SPREADSHEET_ID';
    final String range = 'Sheet1!A:C'; // Cambia "Sheet1" al nombre de tu hoja
    final String apiKey = 'TU_API_KEY';

    final Dio dio = Dio();
    final String url =
        'https://sheets.googleapis.com/v4/spreadsheets/$spreadsheetId/values/$range?key=$apiKey';

    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final data = response.data;
        final List<List<dynamic>> rows = data['values'];

        // Recorre los registros para buscar coincidencia
        for (var row in rows) {
          if (row.length >= 3 && row[1] == username && row[2] == password) {
            return true;
          }
        }
      }
    } catch (e) {
      print("Error fetching data: $e");
    }

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: FutureBuilder<bool>(
        future: authenticateUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData && snapshot.data == true) {
            return const Center(child: Text('Login Successful!'));
          } else {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Invalid username or password')),
              );
            });
            return Container();
          }
        },
      ),
    );
  }
}
